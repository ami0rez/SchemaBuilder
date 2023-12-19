
var MODE = 'ADD';
var IdentityServerURL;
var GatewayURL;
var LocalServer = "/AJAX";
var GetAntiXsrfRequestToken;
var DEFAULT_NOIMAGE = "https://rentblobdev.blob.core.windows.net/rentcontainer/468b7e45-39f6-48e7-a428-13bdc58b3e20.png";
var ajaxCallServer;
var oldButtonText = '';
var oldButtonObject;
var spinnerHTML = `
<div class="spinners" style="margin:0;width: 1rem; height: 1rem;"></div>
<div class="spinners" style="margin:0;width: 1rem; height: 1rem;"></div>
<div class="spinners" style="margin:0;width: 1rem; height: 1rem;"></div>
`;
var spinnersHTML = `
    <div class='spinners'></div>
    <div class='spinners'></div>
    <div class='spinners'></div>
    <div class='spinners'></div>
    <div class='spinners'></div>
`;

var miniSpinnersHTML = `
    <div class='spinners' style="width:10px;height:10px;"></div>
    <div class='spinners' style="width:10px;height:10px;"></div>
    <div class='spinners' style="width:10px;height:10px;"></div>
`;

var spinnerEvent = false;


function isObjectNull(empty) {
    return (Object.keys(empty).length === 0 && empty.constructor === Object)
}


function getId() {

    var Id = getQueryStringParameter("id");
    if (Id == "" || Id == null)
        return "";

    return Id;
}

function getQueryStringParameter(parameterName) {
    var searchParams = new URLSearchParams(new URL(location.href).search);

    if (searchParams.get(parameterName) != null)
        return searchParams.get(parameterName)
    return "";
}

$(function () {
    loadSpinnerEffect();
});

var spinnerEffectClassName = '.btn-spinner';



function loadSpinnerEffect() {
    $(spinnerEffectClassName).on('click', function () {
        spinnerEvent = true;
        oldButtonText = $(this).html();
        oldButtonObject = $(this);
        $(this).html(spinnerHTML + oldButtonText);
        $(this).attr('disabled', true);

    });
}


function loadSpinnerManually(THISOBJECT) {
    spinnerEvent = true;
    if (THISOBJECT != null) {

        oldButtonObject = THISOBJECT;
        oldButtonText = $(THISOBJECT).html();
        $(THISOBJECT).html(spinnerHTML + oldButtonText);
        $(THISOBJECT).prop('disabled', true);
    }
    else {
        oldButtonText = $(spinnerEffectClassName).html();
        $(spinnerEffectClassName).html(spinnerHTML + oldButtonText);
        $(spinnerEffectClassName).prop('disabled', true);
    }



}

function loadSpinnerAt(tagRef, after, min) {
    if (tagRef != null) {
        var spinnerId = `spinner_at_${tagRef}`;

        // Check if a span with the same ID already exists
        if (!$(`span[id='spinner_at_${tagRef}']`).length) {
            var html = '';
            if (min) {
                html = `<span id="${spinnerId}">${miniSpinnersHTML}</span>`;
            } else {
                html = `<span id="${spinnerId}">${spinnerHTML}</span>`;
            }
            if (after) {
                $(tagRef).append(html);
            } else {
                $(tagRef).prepend(html);
            }
        }
    }
}


function unloadSpinnerAt(tagRef) {
    if (tagRef != null) {
        $(`span[id='spinner_at_${tagRef}']`).remove();
    }
}

function unloadSpinnerEffect() {

    if (spinnerEvent) {
        spinnerEvent = false;
        $(oldButtonObject).html(oldButtonText);
        $(oldButtonObject).attr('disabled', false);
    }
    else {
        setTimeout(unloadSpinnerEffect, 500);
    }

}



var lut = []; for (var i = 0; i < 256; i++) { lut[i] = (i < 16 ? '0' : '') + (i).toString(16); }

function e7() {
    var d0 = Math.random() * 0xffffffff | 0;
    var d1 = Math.random() * 0xffffffff | 0;
    var d2 = Math.random() * 0xffffffff | 0;
    var d3 = Math.random() * 0xffffffff | 0;
    return lut[d0 & 0xff] + lut[d0 >> 8 & 0xff] + lut[d0 >> 16 & 0xff] + lut[d0 >> 24 & 0xff] + '-' +
        lut[d1 & 0xff] + lut[d1 >> 8 & 0xff] + '-' + lut[d1 >> 16 & 0x0f | 0x40] + lut[d1 >> 24 & 0xff] + '-' +
        lut[d2 & 0x3f | 0x80] + lut[d2 >> 8 & 0xff] + '-' + lut[d2 >> 16 & 0xff] + lut[d2 >> 24 & 0xff] +
        lut[d3 & 0xff] + lut[d3 >> 8 & 0xff] + lut[d3 >> 16 & 0xff] + lut[d3 >> 24 & 0xff];

}
function relocate(path) {
    window.location = path;
}

function toMoney(value) {
    if (value == 0 || value == '0') {
        return "0.00";
    }
    if (value != '' && value != null) {
        if ($.isNumeric(value)) {
            var num = parseFloat(value).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
            return num;
        }
    }
    else
        return "0.00";

}

function formatAMPM(date) {
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0' + minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}

function getFormattedDate(date) {
    var year = date.getFullYear();

    var month = (1 + date.getMonth()).toString();


    var day = date.getDate().toString();

    return month + '/' + day + '/' + year;
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}



function verifyPasswordStrength(pass, password_strength) {
    var strength = password_strength;
    var requiredLength = 8;
    if (password_strength == "Weak") {
        requiredLength = 6;
    }
    if (password_strength == "Strong") {
        requiredLength = 8;
    }
    if (password_strength == "Very Strong") {
        requiredLength = 14;
    }

    var message = checkPasswordStrength(pass, strength, requiredLength);

    if (message == "") {
        return true;
    }
    else {
        toastr.error(message);
        return false;
    }

}

function validateEmail(email) {
    const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}


function checkPasswordStrength(password, strength, requiredLength) {
    var strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{" + requiredLength + ",})");
    var mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{" + requiredLength + ",})");
    var errorStrongMessage = "Your Password must include at least 1 lowercase, 1 uppercase, 1 numeric and one special character and contain " + requiredLength + " characters";
    var errorMediumMessage = "Your Password must include at least 1 lowercase or 1 uppercase or 1 numeric and one special character and contain  at least " + requiredLength + " characters";
    var errorWeakMessage = "Your Password must contain at least " + requiredLength + " characters";

    if (strength == 'Very Strong') {
        if (!strongRegex.test(password)) {
            return errorStrongMessage;
        }
    }
    if (strength == 'Strong') {
        if (!mediumRegex.test(password)) {
            return errorMediumMessage;
        }
    }
    if (strength == 'Weak') {
        if (password.length < requiredLength) {
            return errorWeakMessage;
        }
    }

    return "";
}


function activateBtnSubmit() {
    if (($('#password').val() && $('#username').val()) ||
        ($("input#username").css("background-color") != "rgb(255, 255, 255)" && $("input#password").css("background-color") != "rgb(255, 255, 255)")) {
        $('#btnSubmit').removeClass("btn-gray");
        $('#btnSubmit').addClass("btn-primary");
        $("#btnSubmit").prop('disabled', false);
    } else {
        $('#btnSubmit').removeClass("btn-primary");
        $('#btnSubmit').addClass("btn-gray");
        $("#btnSubmit").prop('disabled', true);
    }
}

function switchStatus(active) {

    if (active) {
        $('#status').html('<i style="font-size:1.4rem" class="far fa-eye s-green"></i>');
    }
    else
        $('#status').html('<i style="font-size:1.4rem" class="fas fa-eye-slash s-red"></i>');

}

function loadSlickyDeleteModal(id, name, modelName, linkBack) {

    if (linkBack == null || linkBack == '')
        linkBack = "index";

    if (MODE == 'ADD') {
        loadCancelBtn(linkBack);
        return;
    }
    var realModelName = "";
    var oldModelName = modelName;
    if (modelName.includes('--')) {
        realModelName = modelName.split('--')[1];
        modelName = modelName.split('--')[0]
    }
    else
        realModelName = modelName;




    $('.loadSlickyDeleteModal').html(`<button class="` + modelName.toLowerCase() + `s_execute ant-btn btn-cta btn-outline-danger btn-block" onclick="showSlickyDeleteModal('` + id + `', '` + name + `', '` + oldModelName + `','` + linkBack + `')" style="cursor:pointer;">
                                        Delete ` + realModelName + `
                </button>`);
    loadCancelBtn(linkBack);

}

function loadCancelBtn(linkBack) {

    $('#mySubmit').after(`<button class="ant-btn btn-cta  btn-block" onclick="goBackTo('` + linkBack + `')" > Cancel </button>`);

}


function goBackTo(link) {
    document.location = "./" + link;
}


function showSlickyDeleteModal(id, name, modelName, linkBack) {

    if (modelName.includes('--')) {
        realModelName = modelName.split('--')[1];
        modelName = modelName.split('--')[0]
    }
    else
        realModelName = modelName;

    var myModal = `
<div id="deleteSlickyModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mytitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mytitle">Confirm delete of ` + name + `</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closeButton">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="userPic">
                    <div class="form-group " id=slider>
                        <p>Are you sure you want to delete this <span style="text-transform:lowercase;">` + realModelName + ' ' + name + `</span> <span id="templateName"> </span> ?</p>
                    </div>
               </div>
            </div>
            <div class="modal-footer">
                <button style="background-color:rgb(239, 239, 239);" type="button" class="ant-btn btn-cta btn-light-gray" onclick="$('#deleteSlickyModal').modal('hide')">Cancel</button>
                <button type="button" class="ant-btn btn-cta  btn-warning users_execute_button" onclick="confirmSlickyDeleteModal('` + id + `', '` + name + `', '` + modelName + `','` + linkBack + `')">Delete</button>
            </div>
        </div>
    </div>
</div>
`;
    $('.loadSlickyDeleteModal').after(myModal);
    $('#deleteSlickyModal').modal('show');

}

function confirmSlickyDeleteModal(id, name, modelName, linkBack) {

    ajaxCall("DELETE", null, modelName + "?id=" + id, name + " deleted...", modelName, function () {
        $('#deleteSlickyModal').modal('hide');
        $('#deleteSlickyModal').remove();
        setTimeout(function () {
            document.location = "./" + linkBack;
        }, 500);


    });

}



function loadPopUpMode() {

    $('#mainMenu').removeClass('col-md-9');
    $('#mainMenu').addClass('col-md-12');
    $('.app-header').hide();
    $('.app-footer').hide();
    $('#sideMenu').hide();
}


function allowPlugin() {


    if (hasLimited == 'False')
        hasLimited = false;
    else
        hasLimited = true;

    if (hasFull == 'False')
        hasFull = false;
    else
        hasFull = true;

    if (!hasLimited && !hasFull) {
        $('#warning').show();
        $('#mySubmit').prop('disabled', true);
        $('#mySubmit').html('Unavaible', true);
    }
    else {
        $('#warning').hide();
        $('#mySubmit').prop('disabled', false);
    }
}


function ajaxCall(VERB, myData, address, successMessage, title, myfunction, myfailedfunction) {

    var accessToken = getCookie("accessToken");
    var URL = "";
    if (ajaxCallServer == LocalServer)
        URL = ajaxCallServer + "/" + address;
    else
        URL = ajaxCallServer + "/api/" + address;

    if (address.includes(':NoAPI')) {
        URL = "../" + address.replace(':NoAPI', '');
    }


    $.ajax({
        url: URL,
        contentType: "application/json",
        type: VERB,
        data: VERB == 'GET' ? null : JSON.stringify(myData),
        beforeSend: function (xhr) {
            xhr.onerror = function () {
                console.error('An error occurred during the AJAX request for Service:' + address);
            };

            if (accessToken != '' && accessToken != null && ajaxCallServer != LocalServer) {
                xhr.setRequestHeader("Authorization", "Bearer " + accessToken)
            }
            if (GetAntiXsrfRequestToken != '' && GetAntiXsrfRequestToken != null) {
                xhr.setRequestHeader("RequestVerificationToken", GetAntiXsrfRequestToken)
            }

        },
        success: function (data, textStatus) {
            if (successMessage != null && successMessage != '')
                toastr.success(successMessage, title);
            try {
                data = JSON.parse(data)
            }
            catch (error) {
            }
            unloadSpinnerEffect();
            if (myfunction != null)
                myfunction(data);
        },
        error: function (jqXHR, textStatus, err) {
            if (jqXHR.status == 401) {
                refreshToken(VERB, myData, address, successMessage, title, myfunction, myfailedfunction);
                return;
            }
            if (jqXHR.responseText!=null)
                toastr.error(jqXHR.responseText.split('--')[0], title);

            unloadSpinnerEffect();
            if (myfailedfunction != null)
                myfailedfunction();
        }
    })

    return false;

}


function changePicture(type) {
    $('#See' + type).hide();
    $('#Add' + type).show();
    $('#Change' + type).hide();
}

function showPicture(type) {
    $('#See' + type).show();
    $('#Add' + type).hide();
    $('#Change' + type).show();

}
function loadPic(control, divName) {
    if (control != null && control != '') {
        showPicture(divName);
        $('#' + divName).attr('src', control);
    }
    else
        changePicture(divName);
}


function tryDropZone(control, divControlName, maxFile) {
    if (maxFile == null)
        maxFile = 1;
    try {

        $("#" + divControlName).dropzone({
            init: function () {
                this.on("success", function (file) {

                    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');
                    eval(control + "='" + filename + "'");


                    if (file.previewElement) {
                        return file.previewElement.classList.add("dz-success");
                    }
                });
                this.on("maxfilesexceeded", function (file) {
                    toastr.error("You can only upload 1 picture!");
                    this.removeFile(file);
                });
            },
            paramName: "Images",
            url: "/Ajax/SlickyImage",
            headers: {
                "RequestVerificationToken": GetAntiXsrfRequestToken
            },
            maxFilesize: 2.0, // MB
            addRemoveLinks: true,
            maxFiles: maxFile,
            dictResponseError: 'Error while uploading file!',
            previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>"
        });
    } catch (e) {
        alert('Dropzone.js does not support older browsers!' + e);
    }


}


function isEmptyObject(value) {
    return Object.keys(value).length === 0 && value.constructor === Object;
}

function checkPasswordStrength(password, strength, requiredLength) {
    var strongRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
    var mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{" + requiredLength + ",})");
    var errorStrongMessage = "Your Password must include at least 1 lowercase, 1 uppercase, 1 numeric and one special character and contain " + requiredLength + " characters";
    var errorMediumMessage = "Your Password must include a combination (2) of lowercase, uppercase, numeric or one special character and contain  at least " + requiredLength + " characters";
    var errorWeakMessage = "Your Password must contain at least " + requiredLength + " characters";

    if (strength == 'Very Strong') {
        if (!strongRegex.match(password)) {
            return errorStrongMessage;
        }
    }
    if (strength == 'Strong') {
        if (!mediumRegex.test(password)) {
            return errorMediumMessage;
        }
    }
    if (strength == 'Weak') {
        if (password.length < requiredLength) {
            return errorWeakMessage;
        }
    }

    return "";
}

var cookieUser = null;
function getUserFromCookie() {

    var response = getCookie('user');
    if (response == '') {
        toastr.error('You are not logged in. Please log in again');
    }
    // ABOVE MUST BE CHANGED TO REDIRECT...
    response = JSON.parse(response);
    if (response.myCount == 1)
        cookieUser = response.items[0];
    else
        toastr.error('You are not logged in. Please log in again');
}


function updateUserFromCookie(newValue) {
    var response = getCookie('user');
    if (response == '') {
        toastr.error('You are not logged in. Please log in again');
    }

    response = JSON.parse(response);
    response.items[0] = newValue;
    var expiryDate = new Date();
    expiryDate.setMonth(expiryDate.getMonth() + 1);
    document.cookie = "user=" + JSON.stringify(response) + "; expires= " + expiryDate.toGMTString() + ";  path=/";

}

function refreshToken(VERB, myData, address, successMessage, title, myfunction, myfailedfunction) {

    console.log("Current Access Token have expired. Attempting to refresh tokens");
    var originalServer = ajaxCallServer
    if (originalServer != GatewayURL)
        return;


    ajaxCallServer = IdentityServerURL;
    var token = getCookie('refreshToken');
    if (token == '' || token == null) {
        console.log('Refresh tokens are  not present. Refresh failed');
    }
    var body = "refreshToken=" + token;
    ajaxCall("POST", null, "Authentication/refresh?" + body, null, null,
        response => {
            var expiryDate = new Date();
            expiryDate.setMonth(expiryDate.getMonth() + 1);
            document.cookie = "accessToken=" + response.accessToken.value + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            document.cookie = "refreshToken=" + response.refreshToken.value + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            document.cookie = "accountResponse=" + JSON.stringify(response) + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            console.log('Tokens refreshed successfully. Call ajax function again');
            ajaxCallServer = GatewayURL;
            ajaxCall(VERB, myData, address, successMessage, title, myfunction, myfailedfunction)

        },
        data => {
            toastr.error(data);
            console.log('Refresh tokens have failed. Redirecting to login ');
            goToHome("Your session has expired. Please login again");
        });
}


function goToHome(message) {
    if (message == '' || message == null)
        window.location.replace('/home/index');
    else
        window.location.replace('/home/index?message=' + message);
}

function removeObjectById(array, id) {
    return array.filter(obj => obj.id !== id);
}

function goToMyHome() {

    window.location.replace('./index');
}

function goToDashboard() {

    window.location.replace('/home/dashboard');
}


function deCamelize(word) {
    return word.replace(/[A-Z]/g, function (match) {
        return ' ' + match;
    });
}

function camelize(str) {
    // split the string into an array of words
    const words = str.split(" ");

    // iterate over the array of words
    for (let i = 0; i < words.length; i++) {
        // capitalize the first letter of the word
        words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1);
    }

    // join the modified words into a single string
    return words.join("");
}

function fixToJsonDate(dateString) {
    var date = moment(dateString, 'MM/DD/YYYY');
    if (date.format('YYYY-MM-DD') != 'Invalid date')
        return date.format('YYYY-MM-DD');
    return dateString
}

function fixToUsaDate(dateString) {
    var date = moment(dateString, 'YYYY-MM-DD');
    if (date.format('MM/DD/YYYY') != 'Invalid date')
        return date.format('MM/DD/YYYY');
    return dateString
}

/**
 * Loads initial settings for inputs in ui (maxLength, ...)
 * */
function loadInputSettings() {
    //maxLength
    $("input").attr("maxlength", 40);
}

var notifications = {};

function showNotificationBubble(notifications) {

    if (notifications.length == 0) {
        $("#notificationNumberCircle").css("display", "none");
        return;
    }
    $(".notificationNumber").html(notifications.length);

    var template = `<div class="ant-list-item" NOTIFICATION_LINK>
                        <div class="ant-list-item-content ant-list-item-content-single">
                             <div class="list-style-v1">
                                 <div class="list-item">
                                    <div class="btn-icon btn-icon-round mr-3 NOTIFICATION_BG text-body-reverse">
                                        NOTIFICATION_TYPE
                                    </div>
                                    <div class="list-item__body" >
                                        <div class="list-item__title">NOTIFICATION_MESSAGE</div>
                                        <div class="list-item__datetime">NOTIFICATION_AGO</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`;
    $("#shownotifications").html('');
    notifications.forEach(notification => {
        var myLine = template.replace('NOTIFICATION_TYPE', `<i class="anticon anticon-setting"></i>`);
        myLine = myLine.replace('NOTIFICATION_LINK', "style='padding-left: 10px;'");
        if (notification == NotificationLevel.success)
            myLine = myLine.replace('NOTIFICATION_BG', "bg-success");
        if (notification == NotificationLevel.error)
            myLine = myLine.replace('NOTIFICATION_BG', "bg-danger");
        if (notification == NotificationLevel.warning)
            myLine = myLine.replace('NOTIFICATION_BG', "bg-warning");
        if (notification == NotificationLevel.information)
            myLine = myLine.replace('NOTIFICATION_BG', "bg-info");
        if (notification == NotificationLevel.logging)
            myLine = myLine.replace('NOTIFICATION_BG', "bg-info");

        myLine = myLine.replace('NOTIFICATION_MESSAGE', notification.body);
        myLine = myLine.replace('NOTIFICATION_AGO', jQuery.timeago(notification.createdDate));
        $("#shownotifications").append(myLine);
    });
}

function truncateString(string, maxLength) {
    if (string.length > maxLength) {
        return string.slice(0, maxLength) + '...';
    } else {
        return string;
    }
}