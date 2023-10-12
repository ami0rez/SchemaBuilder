/*
 * This file manages on boarding pages process
 */

var pages = {};
var page = {};

/*
 * Load page
 */
function loadPage() {
    $('#paymentSuccess').hide();
    $('#paymentFailed').hide();

    if (user.clientStep == boardingSteps.themeSelection) {

        $("#addressModal").modal();
        $('#registered-business').change(function () {
            if (this.checked) {

                $('#company-name').append(`
                    <div class="form-group">
                        <label for="dbaName" class="form-label">DBA name</label>
                        <input type="text" 
                            id="dbaName" 
                            onblur="validateInput(this.id, false)" 
                            class="input-text form-control" 
                            placeholder="Doing Business As" 
                            onchange="client.dbaName=$(this).val();">
                    </div>`);
            } else {
                $('#company-name').empty();
            }
        });
    }

    if (user.clientStep == boardingSteps.addressInfo) {
        $("#planModal").modal('show');
        $('#backBtn').prop('disabled', true);
        listMemberships();
    }

    if (user.clientStep == boardingSteps.plansSelection) {
        $("#paymentModal").modal('show');
        listMemberships();
        if (user.billingFrequency == billingFrequencies.monthly)
            showPeriod('month');
        else
            showPeriod('year');

        $('#backBtn').prop('disabled', false);
    }
    if (user.clientStep == boardingSteps.final) {
        window.relocate('./dashboard');
    }


    $('#btn-close-payment').on('click', function () {
        $('#paymentModal').modal('toggle');
    })

    $('#btn-close-plan').on('click', function () {
        $('#planModal').modal('toggle');
    })

    $(".select-plan").on('click', function () {
        $(".select-plan").removeClass('plan-content-primary');
        $(this).addClass('plan-content-primary');
    })

    $(":input").inputmask();

    $('#country').on('input', function () {
        suggestCountry($(this).val());
    });
    $('.isUSCanada').hide();
    $('.isNOTUSCanada').show();

    document.getElementById("myForm").onclick = function (e) { e.stopPropagation(); cancelSuggestion() };
}

/*
 * Go Next Pages
 */
function next(previousModal, nextModal) {
    if (previousModal == 'addressModal') {
        if (validateForm()) {
            var fields = ["step", "businessLegalName", "doingBusinessAs", "address1", "city", "zip", "state", "businessPhone", "country"];
            var values = [boardingSteps.addressInfo, client.companyName, client.dbaName, client.address, client.city, client.zip, client.state, client.phone, client.country];

            saveMultiPatch("Client", user.clientId, fields, values);
            saveMultiPatch("User", user.id, ["firstname", "lastname"], [user.firstname, user.lastname], data => {
                user.clientStep = boardingSteps.addressInfo;
                updateUserFromCookie(user);
                listMemberships();
                $('#' + previousModal).modal('toggle');
                $("#" + nextModal).modal();
            });
        }
        else {
            toastr.error("Missing Required Fields.")
        }
    }

    if (previousModal == 'planModal') {
        
        

        saveMultiPatch("Client", user.clientId, ["billingFrequency", "tempMembershipId", "selectedPlugins", "step"],
            [user.billingFrequency, user.tempMembershipId, user.selectedPlugins, boardingSteps.plansSelection], data => {
                $('#' + previousModal).modal('toggle');
                $("#" + nextModal).modal('show');
                user.clientStep = boardingSteps.plansSelection;
                updateUserFromCookie(user);
            });
    }
}

/*
 * Go Previous Pages
 */
function back(previousModal, currentModal) {
    if (!previousModal) {
        toastr.error("You cant go back on this step, to update your theme you must first complete your subscription")
        return;
    }
    if (previousModal == 'planModal') {

        $('#backBtn').prop('disabled', true);
    }

    $('#' + currentModal).modal('toggle');
    $("#" + previousModal).modal();
}

/*
 * Validate form data
 */
function validateForm() {
    return validateInput('first-name', true) &&
        validateInput('last-name', true) &&
        validateInput('phone-number', false) &&
        validateInput('address', false) &&
        validateInput('city', false) &&
        validateInput('country', false) &&
        validateInput('zip', false) &&
        validateInput('companyName', true) &&
        ($('#registered-business').prop('checked') ? validateInput('dbaName', true) : true) &&
        ((isUSA || isCanada) ? ($('#state').val() != '' && $('#state').val() != null) : true)
        ;
}
