var wentback = false;
var currentSection = 0;
var firstSection = 1;
var minSection = 0;
var userClientStep = 1;

/*
* Initializes the section display
*/
async function initializeSectionDisplay() {
    userClientStep = user.clientStep;

    minSection = currentSection;

    currentSection = userClientStep == boardingSteps.signup ? boardingSteps.websiteName : userClientStep;

    prepareSectionData();

    await showInitialStep();
    showSectionSelectedValue();
}

/*
* Show initial step
*/
async function showInitialStep() {
    currentSection = currentSection;
    minSection = currentSection;
    $('.section-4').hide();
    $('.section-' + currentSection).show();
}

/*
* Go prvious section
*/
function back() {
    if (currentSection > minSection) {
        activateBtnNext(true);
        wentback = true;
        $("body").css("overflow", "hidden");
        $(".section-" + currentSection).toggle('drop', { direction: 'right', easing: 'easeInOutCubic', }, function () { }, 600);

        if (currentSection === firstSection) {
            $(".btn-actions").addClass('d-none');
            $("#create-account").toggle('drop', { direction: 'left', easing: 'easeInOutCubic', }, function () { $("body").css("overflow", ""); }, 600);
            isInSignUp = true;
        } else {
            $(".section-" + (currentSection - 1)).toggle('drop', { direction: 'left', easing: 'easeInOutCubic', }, function () { $("body").css("overflow", ""); }, 600);
        }
        currentSection -= 1;
        prepareSectionData();
        savePatch("Client", user.clientId, "step", currentSection);
        showSectionSelectedValue();
    }
    else {

    }
}

/*
* Go prvious next
*/
async function next() {
    $('#btn-next').html(miniSpinnersHTML);
    $('.backButton').show();
    activateBtnNext(false);

    cleanChatVariables();
    var status = await submitSection();

    if (status) {
        showNext();
        showSectionSelectedValue();
    }

}

/*
* Submit current section data
*/
var findClientDomains
async function submitSection() {
    if (currentSection == boardingSteps.websiteName) {
        var domain = $('#store-name').val();
        let domainPromise = getPromiseData("ClientDomain", "subdomainLinked=true&name=" + domain);
        await loadPromise(domainPromise, "findClientDomains");
        if (findClientDomains.myCount > 0) {
            toastr.error('The domain is already used by another client. Please pick another domain');
            $('#btn-next').html('Next');
            $('.backButton').hide();
            return false;
        }
        const currentDate = moment();
        const oneYearFromNow = currentDate.add(1, 'year');
        var expiration = oneYearFromNow.format('YYYY-MM-DD');

        var clientdomain = {
            id: e7(),
            name: domain + '.com',
            subDomain: domain,
            price: 0,
            specialPrice: 0,
            autoRenew: true,
            isDefault: true,
            expiration: expiration,
            clientId: cookieUser.clientId,
            userId: cookieUser.id
        }
        ajaxCall("POST", clientdomain, "ClientDomain", null, null, data => {
            saveMultiPatch("Client", user.clientId, ["step"], [boardingSteps.websiteKind], _ => {
                user.clientStep = boardingSteps.websiteKind;
                user.slickyDomain = domain + ".slickyblocks.com";
                updateUserFromCookie(user);
                displayCategories();
            });
        });



        return true;
    }

    if (currentSection == boardingSteps.websiteKind) {
        var websiteType = $('#website-type').val().replace("&", "AND");
        saveMultiPatch("Client", user.clientId, ["kindOfSite", "step"], [websiteType, boardingSteps.pluginsSelection], _ => {
            user.kindOfSite = websiteType;
            user.clientStep = boardingSteps.pluginsSelection;
            updateUserFromCookie(user);
        });
        return true;
    }

    if (currentSection == boardingSteps.pluginsSelection) {

        var Xplugins = '';
        $('input[name="plugins"]:checked').each(function () {
            if ($(this).val() != null && $(this).val() != '')
                Xplugins = Xplugins
                    ? Xplugins + ',' + $(this).val()
                    : $(this).val();
        });

        saveMultiPatch("Client", user.clientId, ["selectedPlugins", "step"], [Xplugins, boardingSteps.themeSelection], _ => {
            user.clientStep = boardingSteps.themeSelection;
            user.selectedPlugins = Xplugins;
            updateUserFromCookie(user);
        });

        return true;
    }

    if (currentSection == boardingSteps.themeSelection) {
        await goToEditor();
        return true;
    }
}

/*
* Show next section
*/
function showNext() {
    currentSection += 1;
    previousSection = currentSection - 1;
    $("body").css("overflow", "hidden");
    $('#btn-next').html('Next');
    $(".section-" + previousSection).toggle('drop', { direction: 'left', easing: 'easeOutCubic', }, function () { }, 600);
    $(".section-" + currentSection).toggle('drop', { direction: 'right', easing: 'easeInCubic' }, function () { $("body").css("overflow", ""); }, 600);

    if (currentSection == boardingSteps.pluginsSelection) {
        loadPlugins();
        activateBtnNext(true);
    }
    if (currentSection == boardingSteps.themeSelection) {
        getTemplates();
        showingThemes = true;
        return;
    }
}


/*
* Prepare section data
*/
async function prepareSectionData() {
    if (currentSection == boardingSteps.websiteName) {
        $('.backButton').hide();
        return;
    }

    if (currentSection == boardingSteps.websiteKind) {
        displayCategories();
        return;
    }

    if (currentSection == boardingSteps.pluginsSelection) {
        activateBtnNext(true);
        loadPlugins();
        return;
    }

    if (currentSection == boardingSteps.themeSelection) {
        getTemplates();
        showingThemes = true;
        return;
    }

    if (currentSection == boardingSteps.themeSelection) {

        let landingPromise = getPromiseData("Page", "isLanding=true&clientId=" + user.clientId);
        await loadPromise(landingPromise, "pages");
        var landingpage = pages.items[0];
        //window.location = '/MyWebsite/Pages/Editor?onboarding=true&id=' + landingpage.id;
    }


    if (currentSection > boardingSteps.themeSelection) {
        window.location = './onBoardingStep2';
    }
}

/*
* Shows the selected values for the section in case the data is already added
*/
async function showSectionSelectedValue() {
    if (currentSection == boardingSteps.websiteKind) {
        if ($('#website-type').val()) {
            activateBtnNext(true);
        }
        return;
    }
    if (currentSection == boardingSteps.pluginsSelection) {
        if (user.selectedPlugins) {
            user.selectedPlugins.split(',').forEach((pluginId) => {
                $("input[type=checkbox][value=" + pluginId + "]").prop("checked", true);
            });
        }
        return;
    }
}