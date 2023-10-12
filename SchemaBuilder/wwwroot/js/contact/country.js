var isCanada = false;
var isUSA = false;
var suggestions = [];
var phones = {};

/*
 * Suggest internationalCountry
 */
function suggestCountry(name, countryTagId = undefined, suggestionsTagId = undefined, props) {
    const suggestionsTagRef = suggestionsTagId ? `#${suggestionsTagId}` : '#suggestions';
    $(suggestionsTagRef).html('');
    $(suggestionsTagRef).removeClass('d-none');
    $(suggestionsTagRef).addClass('d-block');
    var divToAdd = `<div class="type-container" id="type-id" onclick="selectSuggestion(
                                                                    this.id,
                                                                    '${countryTagId ? countryTagId : ""}', 
                                                                    '${suggestionsTagId ? suggestionsTagId : ""}', 
                                                                    ${!!props?.updatePhone}, 
                                                                    ${props?.phoneTagId ? "'" + props.phoneTagId + "'" : 'undefined'})">
                                    <div class="type-name">Example</div>
                                    <div class="type-icon pull-right"><i class="anticon anticon-right"></i></div>
                                </div>`;
    suggestions = allCountries.filter(x => x.toLowerCase().includes(name.toLowerCase()));
    for (var i = 0; i < suggestions.length; i++) {
        if (suggestions[i] == '' || suggestions[i] == null) {
            continue;
        }
        if (i < 5) {
            var divType = divToAdd.replace(/Example/g, suggestions[i]);
            divType = divType.replace(/type-id/g, i);
            $(suggestionsTagRef).append(divType);
        }
    }
}

/*
 * Cancel suggestion
 */
function cancelSuggestion(suggestionsTagId = undefined) {
    const suggestionsTagRef = suggestionsTagId ? `#${suggestionsTagId}` : '#suggestions';
    $(suggestionsTagRef).removeClass('d-block');
    $(suggestionsTagRef).addClass('d-none');
}

/*
 * Select suggestion by Index
 */
function selectSuggestion(index, countryTagId = undefined, suggestionsTagId = undefined, updatePhone, phoneTagId) {
    var value = suggestions[index];
    selectSuggestionValue(value, countryTagId, suggestionsTagId);
    validateCountry(countryTagId);
    if (updatePhone) {
        changePhoneCountry(phoneTagId, value)
        clearPhoneNumbers();
    }
}

/*
 * Select suggestion by value
 */
function selectSuggestionValue(value, countryTagId = undefined, suggestionsTagId = undefined) {
    const countryTagRef = countryTagId ? `#${countryTagId}` : '#country';
    const suggestionsTagRef = suggestionsTagId ? `#${suggestionsTagId}` : '#suggestions';
    $(countryTagRef).val(value).change();
    showStateOrNot(value);
    $(suggestionsTagRef).removeClass('d-block');
    $(suggestionsTagRef).addClass('d-none');

}

/*
 * Select country and state
 */
function selectCountryState(object, countryTagId = undefined, stateTagId = undefined) {
    stateTagId = stateTagId ? `#${stateTagId}` : '#state';
    const countryTagRef = countryTagId ? `#${countryTagId}` : '#country';
    selectSuggestionValue(object.country, countryTagId);
    showStateOrNot(object.country, countryTagId);
    $(countryTagRef).val(object.country);
    $(stateTagId).val(object.state);
}


/*
 * Show state or not
 */
function showStateOrNot(value, stateTagId = undefined) {
    isUSA = false;
    isCanada = false;
    stateTagId = stateTagId ? `#${stateTagId}` : '#state';
    $(stateTagId).val('');
    if (value.includes('United States') || value.includes('Canada')) {
        if (value.includes('United States')) {
            isUSA = true;
            $('.isUS').show();
            $('.isCanada').hide();
        }
        else {
            isCanada = true;
            $('.isUS').hide();
            $('.isCanada').show();
        }
        $('.isUSCanada').show();
        $('.isNOTUSCanada').hide();
    }
    else {
        $('.isUSCanada').hide();
        $('.isNOTUSCanada').show();
    }
}

/*
 * Validate country
 */
function handleCountryBlur(countryTagId = undefined, suggestionsTagId = undefined) {
    validateCountry(countryTagId);
    const suggestionsTagRef = suggestionsTagId ? `#${suggestionsTagId}` : '#suggestions';
    setTimeout(
        () => {
            $(suggestionsTagRef).removeClass('d-block');
            $(suggestionsTagRef).addClass('d-none');
        }, 200
    )
}
/*
 * Validate country
 */
function validateCountry(countryTagId = undefined) {
    countryTagId = countryTagId ? `#${countryTagId}` : '#country';
    var errorCSS = { "border": "2px solid #ff1800", "box-shadow": "none" };
    var validCSS = { "border": "1px solid #d9d9d9", "box-shadow": "none" };
    var focusCSS = { "border": "2px solid #0077FF", "box-shadow": "0px 0px 0px 4px #0077ff33" };
    if ($(countryTagId).val() == '' || $(countryTagId).val() == null) {
        $(countryTagId).css(errorCSS);
        return false;
    }
    var isvalidCountry = suggestions.find(x => x == $(countryTagId).val());
    if (isvalidCountry == '' || isvalidCountry == null) {
        $(countryTagId).css(errorCSS);
        $(countryTagId).addClass('invalid');
        return false;
    }
    $(countryTagId).css(validCSS);
    $(countryTagId).removeClass('invalid');

    $(countryTagId).focus(function () {
        $(countryTagId).css(focusCSS);
    });
    $(countryTagId).focusout(function () {
        $(countryTagId).css(validCSS);
    });
    return true;
}

/* 
 * checks if value is valid for type phone number
 */
function validateCountryForSave(countryTagId = undefined) {
    countryTagId = countryTagId ? `#${countryTagId}` : '#country';
    if ($(countryTagId).hasClass('invalid')) {
        toastr.error(`Selected country is not valid`);
        unloadSpinnerEffect();
        return false;
    }
    return true;
}

/*
 * Validate input data
 */
function validateInput(inputId, minLenght) {
    var errorCSS = { "border": "2px solid #ff1800", "box-shadow": "none" };
    var validCSS = { "border": "1px solid #d9d9d9", "box-shadow": "none" };
    var focusCSS = { "border": "2px solid #0077FF", "box-shadow": "0px 0px 0px 4px #0077ff33" };
    withlenght = minLenght ? $('#' + inputId).val().length < 3 : false;

    if ($('#' + inputId).length && (!$('#' + inputId).val() || withlenght)) {
        $('#' + inputId).css(errorCSS);
        return false;
    } else if (!$('#' + inputId).length) {
        return true;
    } else {
        $('#' + inputId).css(validCSS);
        $('#' + inputId).focus(function () {
            $('#' + inputId).css(focusCSS);
        });
        $('#' + inputId).focusout(function () {
            $('#' + inputId).css(validCSS);
        });
        return true;
    }
}

/*
 * Validate state
 */
function validateState(stateTagId = undefined) {
    stateTagId = stateTagId ? `#${stateTagId}` : '#state';
    var errorCSS = { "border": "2px solid #ff1800", "box-shadow": "none" };
    var validCSS = { "border": "1px solid #d9d9d9", "box-shadow": "none" };
    if ((isUSA || isCanada) && ($(stateTagId).val() == '' || $(stateTagId).val() == null)) {
        $(stateTagId).css(errorCSS);
        return false;
    }
    $(stateTagId).css(validCSS);
    return;
}

/*
 * Validate state
 */
function changePhoneCountry(phoneTagId = undefined, country) {
    if (!country) {
        return;
    }
    let phoneTagIdList = [];
    if (phoneTagId) {
        phoneTagIdList = [phoneTagId]
    } else {
        $("input[type=tel]").each(function () {
            phoneTagIdList.push($(this).prop('id'));
        })
    }
    phoneTagIdList.forEach(element => {
        var coutryCode = allCountriesCodes[allCountries.indexOf(country)]
        if (!coutryCode) {
            return;
        }
        phones[element].setCountry(coutryCode);
        phones[element].options.autoPlaceholder = 'aggressive'
        phones[element]._updatePlaceholder()
    });
}

/*
 * Clear phone numbers
 */
function clearPhoneNumbers(phoneTagId = undefined, country) {
    let phoneTagIdList = [];
    if (phoneTagId) {
        phoneTagIdList = [phoneTagId]
    } else {
        $("input[type=tel]").each(function () {
            phoneTagIdList.push($(this).prop('id'));
        })
    }
    phoneTagIdList.forEach(element => {
        phones[element].setNumber('');
    });
}

/*
 * Validate state
 */
function validatePhoneNumber(phoneTagId = undefined, props = {}) {
    let phoneTagIdList = [];
    if (phoneTagId) {
        phoneTagIdList = [phoneTagId]
    } else {
        $("input[type=tel]").each(function () {
            phoneTagIdList.push($(this).prop('id'));
        })
    }
    var allValid = true;
    phoneTagIdList.forEach(element => {
        if (allValid && phones[element]?.getNumber() && !phones[element]?.isValidNumber()) {
            allValid = false;
            if (!props.hideToast) {
                toastr.error(`Phone number is not valid`);
            }
            unloadSpinnerEffect();
            return;
        }
    });
    return allValid;
}

/*
 * Init phone number input
 */
function initPhoneInputList() {
    $("input[type=tel]").each(function () {
        var inputId = $(this).prop('id');
        initPhoneInput(inputId)
    });
}

/*
 * Init phone number input
 */
function initPhoneInput(inputId) {
    var input = document.querySelector("#" + inputId);
    phones[inputId] = window.intlTelInput(input, {
        autoPlaceholder: "aggressive",
        utilsScript: "/js/libs/intlTelInput/utils.js",
        customPlaceholder: function (selectedCountryPlaceholder, selectedCountryData) {
            $("#" + inputId).inputmask(selectedCountryPlaceholder.replace(/[0-9]/g, '9'));
            return selectedCountryPlaceholder;
        },
    });
    if (cookieUser.country) {
        const phoneCountry = (cookieUser.country.toLowerCase() == 'usa' || cookieUser.country.toLowerCase() == 'united states') ? 'us' : cookieUser.country;
        phones[inputId].setCountry(phoneCountry);
    }
}