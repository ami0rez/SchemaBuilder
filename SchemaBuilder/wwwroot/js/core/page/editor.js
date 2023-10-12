
function fixEnterPress() {

    $('[contenteditable="true"]').unbind('keypress').keyup(function (event) {
        if (event.key != "Enter") {
            adjustAllSectionHeight();
            return true;
        }
    });


    $('[contenteditable="true"]').unbind('keypress').keypress(function (event) {

        if (event.key != "Enter") {
            return true;
        }

        var docFragment = document.createDocumentFragment();

        //add a new line
        var newEle = document.createTextNode('\n');
        docFragment.appendChild(newEle);

        //add the br, or p, or something else
        newEle = document.createElement('br');
        docFragment.appendChild(newEle);

        //make the br replace selection
        var range = window.getSelection().getRangeAt(0);
        range.deleteContents();
        range.insertNode(docFragment);

        //create a new range
        range = document.createRange();
        range.setStartAfter(newEle);
        range.collapse(true);

        //make the cursor there
        var sel = window.getSelection();
        sel.removeAllRanges();
        sel.addRange(range);
        adjustAllSectionHeight();
        return false;
    });

}

var isClickedOnWrapper = false;
function showAnimatedBar(object, SECTIONID) {


    $(object).css('outline', '');
    SelectedCSSObject = object;
    selectedSectionId = SECTIONID;
    $('#wrapper').remove();
    //$('body').append(animatedBar);
    var rect = getOffset(object);

    var xPosition = rect.left + ($(object).width() / 2);
    var yPosition = rect.top - 75;

    if (xPosition > 960)
        xPosition = 960
    $("#wrapper").css({ top: yPosition + "px", left: xPosition + "px", position: 'absolute', 'z-index': '1051' });
    $("#wrapper").width(1);
    $("#wrapper").height(1);
    if ($(object).is('a')) {
        $('.onlyForButton').attr('style', 'dislay: inline-block !important');
        loadLinks();
        
    }
    loadButton(object);
    
    loadButtonFunctions('font-family');
    loadButtonFunctions('color');
    loadButtonFunctions('background-color');
    loadButtonFunctions('text-align');
    loadButtonFunctions('font-weight');
    loadButtonFunctions('text-decoration');
    loadButtonFunctions('font-style');
    loadButtonFunctions('size');
    $('.button').trigger('click');

    //hide brushlist when the user clicks out
    $('#wrapper').mousedown(() => isClickedOnWrapper = true);
    //$(object).blur(() => {       
    //    if (!isClickedOnWrapper) {
    //        closeWrapper()
    //    }       
    //});
    $('#wrapper').mouseup(() => isClickedOnWrapper = false);
    //$('body').mouseup(() => closeWrapper());
    //
    // loadButtonFunctions();

}

function applyChangeToElement(previewName) {
    $('.elementModifier.' + previewName.replace('-', '') + 'Modifier').each(function () {
        loadCSSFeatureValueToEditor(this, previewName)
        $(this).on('change', function () {
            previewCSSFeature(this, previewName);
        }
        );
    });
}



function showToolBoxForBlock(mysectionId) {
    selectedSectionId = mysectionId;
    var name = sections[mysectionId].name;
    var partialName = $('#section_' + mysectionId).find("section").attr('partial');
    var libraryName = $('#section_' + mysectionId).find("section").attr('libraryname');
    
    $('.sectionName').html(name);
    $('#sectionName').val(name);
    $('#libraryName').val(libraryName);
    $('#partialName').val(partialName);
    var palletName = 'sectionBGColor';
    var PreviewName = 'background-color';
    $('#_sectionBackgroundColor').html(colorPallet.replace(/colorButton/g, palletName));
    loadSectionColors(mysectionId, PreviewName, palletName);

    if ($('#section_' + mysectionId).find('section').css(PreviewName) == "rgba(0, 0, 0, 0)") {
        $('input[name="s_Background"]').prop('checked', false);
        $('#' + 
            Name + 'Gradient').css('background-color', '#cccccc');
        hideAllBackgrounds();
    }
    else {
        $('input[name="s_Background"][value="BackgroundColor"]').prop('checked', true);
        $('input[name="s_Background"][value="BackgroundColor"]').trigger('click');
        $('#' + palletName + 'Gradient').css('background-color', $('#section_' + mysectionId).find('section').css(PreviewName));
    }
    

    palletName = 'sectionTextColor';
    PreviewName = 'color';
    $('#_sectionTextColor').html(colorPallet.replace(/colorButton/g, palletName));
    $('#' + palletName + 'Gradient').css('background-color', $('#section_' + mysectionId).find('section').css(PreviewName));
    loadSectionColors(mysectionId, PreviewName, palletName);
    loadSectionFromSection(mysectionId);

    $('#viewToolBox').modal('show');
    return false;

}

function showLanguageForBlock(mysectionId) {
    selectedSectionId = mysectionId;
    var mysection = sections[mysectionId];
    if (mysection.text == undefined || mysection.text == null || mysection.text == '') {
        toastr.error('You need to have a valid section in order to show translations options');
        return;
    }
    
    for (var i = 0; i < selectedLanguage.split('|').length; i++) {
        if (selectedLanguage.split('|')[i] != '') {
            var translatedVersion = mysection.translatedVersions.find(x => x.language == selectedLanguage.split('|')[i]);
            if (translatedVersion == null || translatedVersion==undefined) {
                $('#icon_' + selectedLanguage.split('|')[i]).css('color', 'red');
                $('#icon_' + selectedLanguage.split('|')[i]).html('<i class="fas fa-times"></i>');
                $('#link_' + selectedLanguage.split('|')[i]).hide();
                $('#action_' + selectedLanguage.split('|')[i]).html('Translate');
            }
            else {
                $('#icon_' + selectedLanguage.split('|')[i]).css('color', 'green');
                $('#icon_' + selectedLanguage.split('|')[i]).html('<i class="fas fa-check"></i>');
                $('#link_' + selectedLanguage.split('|')[i]).show();
                $('#action_' + selectedLanguage.split('|')[i]).html('Overwrite');
            }

        }
    }


    $('#viewLanguage').modal('show');
    return false;

}

function loadSectionColors(mysectionId, myPreviewName, palletName) {

    SelectedCSSObject = $('#section_' + mysectionId).find('section');
    selectedItemValue[myPreviewName] = $(SelectedCSSObject).css(myPreviewName);

    $('.pallet.' + palletName).each(function () {
        $(this).mouseover(function () {
            SelectedCSSObject = $('#section_' + mysectionId).find('section');
            previewName = myPreviewName;
            if (!isClicked)
                previewCSSFeature(this, previewName);
                isClicked = false;
        });
        $(this).mouseout(function () {
            SelectedCSSObject = $('#section_' + mysectionId).find('section');
            previewName = myPreviewName;
            if (!isClicked)
                unpreviewCSSFeature(previewName);
        });
        $(this).click(function () {
            SelectedCSSObject = $('#section_' + mysectionId).find('section');
            previewName = myPreviewName;

            isClicked = true;

            if ($(this).hasClass('selected')) {

                $(this).parent('.GroupOptions').children().removeClass('selected');
                $('.fontButton.' + previewName.replace('-', '') + 'Button').removeClass('selected');
                selectedItemValue[previewName] = "unset";
                resetCSSFeature(previewName);
            }
            else {
                $(this).parent('.GroupOptions').children().removeClass('selected');
                selectedItemValue[previewName] = $(this).css(previewName);  // Save the selected Element Value
                $('.fontButton.' + previewName.replace('-', '') + 'Button').removeClass('selected');
                $(this).addClass('selected');
                previewCSSFeature(this, previewName);
                
            }
            $('#' + palletName + 'Gradient').css('background-color', $(this).css(previewName));
            $('#' + previewName + 'Dropdown').removeClass('open');
            adjustAllSectionHeight();
            isClicked = false;

            if (previewName == 'colorButton' || previewName == 'colorButton') {
                $('#sliderTransparency').val('0');
                $('#transparencyValue').html('0 %');
            }

        });

        loadPreviewValue(this, myPreviewName);


    });

}


function loadSectionFromSection(sectionId) {

   

    if ($('#section_' + sectionId).find('section').hasClass('g-height-100vh'))
        $('#_isFullScreen').prop('checked', true);
    else
        $('#_isFullScreen').prop('checked', false);

    if ($('#section_' + sectionId).find('section').children().first().hasClass('container'))
        $('#_isContained').prop('checked', true);
    else
        $('#_isContained').prop('checked', false);

    if ($('#section_' + sectionId).find('section').css('margin-top') != null) {
        $('#marginTop_').val($('#section_' + sectionId).find('section').css('margin-top').replace('px', ''));
        $('#marginTop_Text').html('<small>' + $('#section_' + sectionId).find('section').css('margin-top').replace('px', '') + ' pixels</small>');
    }
    if ($('#section_' + sectionId).find('section').css('margin-bottom') != null) {
        $('#marginBottom_').val($('#section_' + sectionId).find('section').css('margin-bottom').replace('px', ''));
        $('#marginBottom_Text').html('<small>' + $('#section_' + sectionId).find('section').css('margin-bottom').replace('px', '') + ' pixels</small>');
    }

    if ($('#section_' + sectionId).find('section').css('margin-top') != null) {
        $('#paddingTop_').val($('#section_' + sectionId).find('section').css('padding-top').replace('px', ''));
        $('#paddingTop_Text').html('<small>' + $('#section_' + sectionId).find('section').css('padding-top').replace('px', '') + ' pixels</small>');
    }
    if ($('#section_' + sectionId).find('section').css('margin-bottom') != null) {
        $('#paddingBottom_').val($('#section_' + sectionId).find('section').css('padding-bottom').replace('px', ''));
        $('#paddingBottom_Text').html('<small>' + $('#section_' + sectionId).find('section').css('padding-bottom').replace('px', '') + ' pixels</small>');
    }
    //backgroundOpacity_
    $('#backgroundOpacity_').val(0);
    for (i = 1; i < 10; i++) {
        if (($('#section_' + sectionId).find('section').hasClass('g-bg-black-opacity-0_' + i + '--after')))
            $('#backgroundOpacity_').val(i);
    }
    if (($('#section_' + sectionId).find('section').hasClass('g-bg-black--after')))
        $('#backgroundOpacity_').val(10);
   
 
    if (($('#section_' + sectionId).find('section').attr('_facebook')) == "true") {
        $('.fbSocialMedia').show();
        $('#_facebook').prop('checked', true);
        $('#_fbButtonSize').val($('#section_' + sectionId).find('section').attr('_fbButtonSize'));
        $('#_fbLayout').val($('#section_' + sectionId).find('section').attr('_fbLayout'));
        $('#_fbActionType').val($('#section_' + sectionId).find('section').attr('_fbActionType'));  
        if (($('#section_' + sectionId).find('section').attr('_facebookIncludeShareButton')) == "true") {
            $('#_facebookIncludeShareButton').prop('checked', true);
        } else {
            $('#_facebookIncludeShareButton').prop('checked', false);
        }

    } else {
        $('#_facebook').prop('checked', false);
        $('.fbSocialMedia').hide();
    }

}


var SelectedCSSObject;
function loadPreviewValue(carrier, featureName) {
    var carrierValue = $(carrier).css(featureName).replace('!important', '').replace(';', '').trim();
    if (carrierValue == selectedItemValue[featureName].trim()) {
        $(carrier).addClass('selected');
    }

}

function RGBtoHEX(color) {
    var count = 0;
    return "#" + $.map(color.match(/\b(\d+)\b/g), function (digit) {
        while (count < 3) {
            count++
            return ('0' + parseInt(digit).toString(16)).slice(-2)
        }
    }).join('');
};

function loadCSSFeatureValueToEditor(carrier, featureName) {
    var currentCssValue = $(SelectedCSSObject).css(featureName)
    if ($(carrier).is("select")) {
        $(carrier).val(currentCssValue);
        if ($(carrier).val() == null) {
            $(carrier).val("none");
        }
    }
    if ($(carrier).is("input")) {
        var unit = $(("#select_units_" + $(carrier)[0].id.split("_").slice(1)).replace(",", "_"))
        if ($(carrier)[0].type !== "color" && featureName === "background-color") {
            var split = currentCssValue.split(',');
            var value = 1- split[split.length - 1].replace(")", "");
            $(carrier).val(value * 100);
            return;
        }
        if ($(carrier)[0].type === 'color') {
            $(carrier).val(RGBtoHEX(currentCssValue));
            return;
        }

        if ($(carrier).is(':radio')) {
            if ($(carrier).val() === currentCssValue) {
                $(carrier).prop('checked',true);
            }
        }
        else {
            if (unit.length) {
                if (featureName === "opacity") {
                    $(carrier).val(parseInt(100 - currentCssValue.replace(unit, '')*100));
                }
                else
                $(carrier).val(parseInt(currentCssValue.replace(unit, '')));
            }
            else
                $(carrier).val(currentCssValue);
        }
    }
    if (featureName.startsWith("margin") || featureName.startsWith("padding"))
        $(carrier).parent().find("span").text(currentCssValue);
}

function previewCSSFeature(carrier, featureName) {
    //currentCSSFeature = $(SelectedCSSObject).css(featureName);
    if ($(carrier)[0].type !== "color" && featureName === "background-color") {
        if ($(SelectedCSSObject).css(featureName).startsWith('rgba(')) {
            var split = $(SelectedCSSObject).css(featureName).split(',') ;
            var carrierValue = split.slice(0, split.length - 1).join(",") + "," +(100 - $(carrier).val()) / 100 + ')';
        }
        else
        var carrierValue = $(SelectedCSSObject).css(featureName).replace('rgb(', 'rgba(').replace(')', ', ' + (100 - $(carrier).val())/100 + ')');

    } else {
        if ($(carrier).is("select"))
            var carrierValue = $(carrier).find(":selected").val();
        if ($(carrier).is("input")) {
            if ($(("#select_units_" + $(carrier)[0].id.split("_").slice(1)).replace(",", "_")).length) {
                var carrierValue = $(carrier).val() + $(("#select_units_" + $(carrier)[0].id.split("_").slice(1)).replace(",", "_")).find(":selected").val();
                if (featureName === "opacity")
                    var carrierValue = 1 - ($(carrier).val() / 100);
            }
            else
                var carrierValue = $(carrier).val();
        }
        if ($(carrier).is(':radio')) {
            $(carrier).parent().children().each(function () {
                $(this).prop("checked", false)
            })
            $(carrier).prop('checked', true);
        }
    }
    var myStyle = featureName + ':' + carrierValue + ' !important;';
    $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));

}
function unpreviewCSSFeature(featureName) {
    var myStyle = '';
    if (selectedItemValue[featureName] == null || selectedItemValue[featureName] == '')
        myStyle = featureName + ": '';";
    else
        myStyle = featureName + ':' + selectedItemValue[featureName] + ' !important;';
    $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));

}
function resetCSSFeature(featureName) {
    var myStyle = featureName + ": '';";
    $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));

}
var isClicked = false;

function loadLinks() {
    var value = $(SelectedCSSObject).attr("onclick");


    if (value!=null && value !='') {
        $('#actionType').val('Javascript');
        $('#actionType').trigger('change');
        var functionName = $(SelectedCSSObject).attr("onclick");
        functionName = functionName.replace('return false;', '').replace("(this);", '');
        $('#javascriptFunctionName').val(functionName);
    }
    else { 
        $('#actionType').val('Link');
        $('#actionType').trigger('change');
        var href = $(SelectedCSSObject).attr("href");
       
        if (!href.includes('pageId=')) {
            $('#linkTo').val('external');
            $('#linkTo').trigger('change');
            $('#link').val(href);
        }
        else {
            var matches = href.match(/pageId=([^&#]*)/);
            var pageId = matches[1];
            $('#pageId').val(pageId);
            console.log(pageId);
            if (href.includes('#')) {
                $('#linkTo').val('section');
                $('#linkTo').trigger('change');
                
                matches = href.match(/#([^&]*)/);
                var sectionId = matches[1];
                $('#sectionId').val(sectionId); 
            }
            else {
                

                $('#linkTo').val('page');
                $('#linkTo').trigger('change');
              

                if (href.includes('action=')) {
                    matches = href.match(/action=([^&]*)/);
                    var VERB = matches[1];
                    $('#VERB').val(VERB);
                    //get VERB
                }
                if (href.includes('data=')) {
                    matches = href.match(/data=([^&]*)/);
                    var DATA = matches[1];
                    $('#DATA').val(DATA);
                    //get DATA
                }
            }

    }


}

}

function loadButtonFunctions(previewName) {

    selectedItemValue[previewName] = $(SelectedCSSObject).css(previewName);

    $('.fontButton.' + previewName.replace('-', '') + 'Button,.pallet.' + previewName.replace('-', '') + 'Button').each(function () {
        $(this).mouseover(function () {

            if (!isClicked)
                previewCSSFeature(this, previewName);
            isClicked = false;
        });
        $(this).mouseout(function () {
            if (!isClicked)
                unpreviewCSSFeature(previewName);
        });
        $(this).click(function () {
            isClicked = true;

            if ($(this).hasClass('selected')) {

                $(this).parent('.GroupOptions').children().removeClass('selected');
                $('.fontButton.' + previewName.replace('-', '') + 'Button').removeClass('selected');
                selectedItemValue[previewName] = "unset";
                resetCSSFeature(previewName);
            }
            else {
                $(this).parent('.GroupOptions').children().removeClass('selected');
                selectedItemValue[previewName] = $(this).css(previewName);  // Save the selected Element Value
                $('.fontButton.' + previewName.replace('-', '') + 'Button').removeClass('selected');
                $(this).addClass('selected');
                previewCSSFeature(this, previewName);
            }

            $('#' + previewName + 'Dropdown').removeClass('open');
            adjustAllSectionHeight();
            isClicked = false;

            if (previewName == 'colorButton' || previewName == 'colorButton') {
                // COlors only, Set the transparency to 0 again
                $('#sliderTransparency').val('0');
                $('#transparencyValue').html('0 %');
            }

        });

        loadPreviewValue(this, previewName);


    });

}

function loadSizeFunctions(previewName) {
    if (previewName == '+') {
        var oldSize = parseInt($(SelectedCSSObject).css('font-size').replace('px', ''));
        console.log(oldSize);
        oldSize += 3;
        var styleSize = ' font-size: ' + oldSize + 'px !important;';
        $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, styleSize));

    }
    if (previewName == '-') {
        var oldSize = parseInt($(SelectedCSSObject).css('font-size').replace('px', ''));
        oldSize -= 3;
        if (oldSize > 0) {
            var styleSize = ' font-size: ' + oldSize + 'px !important;';
            $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, styleSize));
        }
    }

    adjustAllSectionHeight();
}

function offset(el) {
    var rect = el.getBoundingClientRect(),
        scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
        scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft }
}
function getOffset(elem) {
    return offset(elem);

    

    //var viewportOffset = elem.getBoundingClientRect();
    //// these are relative to the viewport, i.e. the window
    //var top = viewportOffset.top;
    //var left = viewportOffset.left;
    //return { top: top, left: left };

    //var _x = 0;
    //var _y = 0;
    //while (elem && !isNaN(elem.offsetLeft) && !isNaN(elem.offsetTop)) {
    //    _x += elem.offsetLeft - elem.scrollLeft;
    //    _y += elem.offsetTop - elem.scrollTop;
    //    elem = elem.offsetParent;
    //}
    //return { top: _y, left: _x };
}

function getObjectPosition(object) {
    console.log(object);
    var rect = object.getBoundingClientRect();

    //var parentPosition = getPosition(e);
    var xPosition = rect.left;  // e.x - parentPosition.x - (theThing.clientWidth / 2);
    var yPosition = rect.top; // e.y - parentPosition.y - (theThing.clientHeight / 2);

    $("#wrapper").css({ top: yPosition + "px", left: xPosition + "px", position: 'absolute' });
    loadButton();

    //$('#wrapper').position().left = xPosition + "px";
    //$('#wrapper').position().top = yPosition + "px";
}



function preLoadImages(orderId) {

    var totalImages = $('#section_' + orderId).find('img').length;

    var i = 0;
    if (totalImages > 0) {
        imgCounter = orderId;
        $('#section_' + orderId).find('img').each(function () {
            i++;
            var my_image = new Image();

            my_image.onload = function () {
                console.log('image: loaded' + my_image.src);
                adjustAllSectionHeight();
            };
            my_image.src = this.src;
        });
    }
}

function LoadValueforImage(object) {

    if ($(object).attr("style") != '' && $(object).attr("style") != null) {
        var value = $(object).attr("style").split(';');
        for (var i = 0; i < value.length; i++)
            if (value[i].split(':').length > 0)
                if (value[i].split(':')[0].trim() == 'background-size') {
                    var sizeValue = value[i].split(':')[1].trim().replace(' !important', '');

                    if (sizeValue.includes('contain'))
                        $('#buttonContainBackground').prop('checked', true);
                    else if (sizeValue.includes('cover'))
                        $('#buttonCoverBackground').prop('checked', true);
                    else if (sizeValue.includes('%')) {
                        var text = sizeValue.split(' ')[0];
                        $('#slider').val(ImageScale.indexOf(text));
                    }
                }

        adjustAllSectionHeight();
    }

}

function LoadEditorImage(object) {


    $('#editorContent').html(contentEditorImage);

    $('.backgroundEditor').hide();
    LoadValueforImage(object);
    $('#slider').on('input', function () {
        $('#buttonCoverBackground').prop('checked', false);
        $('#buttonContainBackground').prop('checked', false);
        var styleSize = ' width: ' + ImageScale[this.value - 1] + ' !important;';
        $(object).attr('style', updateCurrentStyle(object, styleSize));
        styleSize = 'height: ' + ImageScale[this.value - 1] + '!important;';
        $(object).attr('style', updateCurrentStyle(object, styleSize));
        adjustAllSectionHeight();
    });

    //buttonCoverBackground  buttonContainBackground
    $('#buttonCoverBackground').on('change', function () {
        $('#slider').val(4);
        $('#buttonContainBackground').prop('checked', false);
        var style = "background-size: unset;";
        if ($(this).prop('checked'))
            style = 'background-size: cover !important;';
        $(object).attr('style', updateCurrentStyle(object, style));
        adjustAllSectionHeight();
    });

    $('#buttonContainBackground').on('change', function () {
        $('#buttonCoverBackground').prop('checked', false);
        $('#slider').val(4);
        var style = "background-size: unset;";
        if ($(this).prop('checked'))
            style = 'background-size: contain !important;';
        $(object).attr('style', updateCurrentStyle(object, style));
        adjustAllSectionHeight();
    });
}

function LoadEditorBackgroundImage(object) {


    $('#editorContent').html(contentEditorImage);
    LoadValueforImage(object);
    $('#slider').on('input', function () {
        $('#buttonCoverBackground').prop('checked', false);
        $('#buttonContainBackground').prop('checked', false);
        var styleSize = ' background-size: ' + ImageScale[this.value - 1] + ' ' + ImageScale[this.value - 1] + ' !important;';
        $(object).attr('style', updateCurrentStyle(object, styleSize));
        adjustAllSectionHeight();
    });

    //buttonCoverBackground  buttonContainBackground
    $('#buttonCoverBackground').on('change', function () {
        $('#slider').val(4);
        $('#buttonContainBackground').prop('checked', false);
        var style = "background-size: unset;";
        if ($(this).prop('checked'))
            style = 'background-size: cover !important;';
        $(object).attr('style', updateCurrentStyle(object, style));
        adjustAllSectionHeight();
    });

    $('#buttonContainBackground').on('change', function () {
        $('#buttonCoverBackground').prop('checked', false);
        $('#slider').val(4);
        var style = "background-size: unset;";
        if ($(this).prop('checked'))
            style = 'background-size: contain !important;';
        $(object).attr('style', updateCurrentStyle(object, style));
        adjustAllSectionHeight();
    });
}

function loadValueforObject(object) {
    var nodeName = $(object).prop('nodeName');
    if (nodeName.toLowerCase() == 'h1' || nodeName.toLowerCase() == 'h2' || nodeName.toLowerCase() == 'h3' || nodeName.toLowerCase() == 'h4' ||
        nodeName.toLowerCase() == 'h5' || nodeName.toLowerCase() == 'h6' || nodeName.toLowerCase() == 'p' || nodeName.toLowerCase() == 'a') {

        if ($(object).css("font-family") != '')
            $('#fontSelector').val($(object).css("font-family"));

        if ($(object).attr("style") != '') {
            var value = $(object).attr("style").split(';');
            for (var i = 0; i < value.length; i++)
                if (value[i].split(':').length > 0) {
                    if (value[i].split(':')[0].trim() == 'font-size') {
                        var sizeValue = textScale.indexOf(value[i].split(':')[1].trim().replace(' !important', ''));
                        $('#slider').val(sizeValue + 1);
                    }
                    if (value[i].split(':')[0].trim() == 'padding-top') {
                        var sizeValue = spaceScale.indexOf(value[i].split(':')[1].trim().replace('px !important', ''));
                        $('#sliderTop').val(sizeValue + 1);
                    }
                    if (value[i].split(':')[0].trim() == 'padding-bottom') {
                        var sizeValue = spaceScale.indexOf(value[i].split(':')[1].trim().replace('px !important', ''));
                        $('#sliderBottom').val(sizeValue + 1);
                    }
                    if (value[i].split(':')[0].trim() == 'padding-right') {
                        var sizeValue = spaceScale.indexOf(value[i].split(':')[1].trim().replace('px !important', ''));
                        $('#sliderRight').val(sizeValue + 1);
                    }
                    if (value[i].split(':')[0].trim() == 'padding-left') {
                        var sizeValue = spaceScale.indexOf(value[i].split(':')[1].trim().replace('px !important', ''));
                        $('#sliderLeft').val(sizeValue + 1);
                    }
                }

        }
        if ($(object).css("color") != '')
            $('#gradiant').css('background-color', $(object).css("color"));

        if ($(object).css("background-color") != '')
            $('#backgroundGradiant').css('background-color', $(object).css("background-color"));





        if ($(object).css("font-weight") != '') {
            if ($(object).css("font-weight") > 400) {
                $('#BOLD').prop('checked', true);
                $('#BOLD').addClass('fontButtonSelected');
            }
        }
        if ($(object).css("text-decoration").includes('underline')) {
            $('#UNDERLINE').prop('checked', true);
            $('#UNDERLINE').addClass('fontButtonSelected');
        }
        if ($(object).css("font-style").includes('italic')) {
            $('#ITALIC').prop('checked', true);
            $('#ITALIC').addClass('fontButtonSelected');
        }
        if ($(object).css("text-align") != '') {
            var value = $(object).css("text-align");
            if (value == 'center') {
                $('#JUSTIFY').prop('checked', true);
                $('#JUSTIFY').addClass('fontButtonSelected');
            }
            if (value == 'right') {
                $('#JUSTIFY_RIGHT').prop('checked', true);
                $('#JUSTIFY_RIGHT').addClass('fontButtonSelected');
            }
            if (value == 'left') {
                $('#JUSTIFY_LEFT').prop('checked', true);
                $('#JUSTIFY_LEFT').addClass('fontButtonSelected');
            }

        }

    }

    if (nodeName.toLowerCase() == 'a') {

        if ($(object).css("border-radius") != '') {
            var value = $(object).css("border-radius");

            if (value.trim() == "20px")
                $('#buttonRounder').prop('checked', true);

        }

        if ($(object).attr('href') != '#' && $(object).attr('href') != '') {
            var value = $(object).attr('href');

            $('.thepage').removeClass('hide'); $('.thesection').removeClass('hide'); $('.thelink').removeClass('hide'); $('.thesection').hide(); $('.thelink').hide(); $('.thepage').hide()

            if (value.includes('http')) {
                $(".thelink").show();
                $('#linkTo').val('@Models.LinkTo.external');
                $('#link').val(value);
            }
            if (value.includes('pageId')) {
                $(".thepage").show();
                $('#linkTo').val('@Models.LinkTo.page');
                $('#pageId').val(value.split('=')[1]);
            }
            if (value.includes('#'))
                $('#linkTo').val('@Models.LinkTo.section');

        }
    }
    adjustAllSectionHeight();
}

function LoadEditorObject(object) {
    var nodeName = $(object).prop('nodeName');
    var Line = '';
    adjustAllSectionHeight();


    $('#editorContent').html(contentEditorTEXT.replace('SIZE', nodeName));

    if (nodeName.toLowerCase() == 'a')
        $('#editorContent').html($('#editorContent').html() + contentEditorLink);

    loadValueforObject(object);


    if (nodeName.toLowerCase() == 'h1' || nodeName.toLowerCase() == 'h2' || nodeName.toLowerCase() == 'h3' || nodeName.toLowerCase() == 'h4' ||
        nodeName.toLowerCase() == 'h5' || nodeName.toLowerCase() == 'h6' || nodeName.toLowerCase() == 'p' || nodeName.toLowerCase() == 'a') {

        $('#fontSelector').on('change', function () {
            var styleFamily = 'font-family:' + $(this).val() + " !important;";
            $(object).attr('style', updateCurrentStyle(object, styleFamily));
            adjustAllSectionHeight();
        });

        $('#slider').on('input', function () {
            var styleSize = ' font-size: ' + textScale[this.value - 1] + ' !important;';
            $(object).attr('style', updateCurrentStyle(object, styleSize));
            adjustAllSectionHeight();
        });

        $('#sliderTop').on('input', function () {
            var styleTop = ' padding-top: ' + spaceScale[this.value - 1] + 'px !important;';
            $(object).attr('style', updateCurrentStyle(object, styleTop));
            adjustAllSectionHeight();
        });
        $('#sliderBottom').on('input', function () {
            var styleBottom = ' padding-bottom: ' + spaceScale[this.value - 1] + 'px !important;';
            $(object).attr('style', updateCurrentStyle(object, styleBottom));
            adjustAllSectionHeight();
        });
        $('#sliderLeft').on('input', function () {
            var styleLeft = ' padding-left: ' + spaceScale[this.value - 1] + 'px !important;';
            $(object).attr('style', updateCurrentStyle(object, styleLeft));
            adjustAllSectionHeight();
        });
        $('#sliderRight').on('input', function () {
            var styleRight = ' padding-right: ' + spaceScale[this.value - 1] + 'px !important;';
            $(object).attr('style', updateCurrentStyle(object, styleRight));
            adjustAllSectionHeight();
        });

        $('.objectPallet').on('click', function () {
            var styleColor = ' color: ' + $(this).css('background-color') + ' !important;';
            $('#gradiant').css('background-color', $(this).css('background-color'));
            $(object).attr('style', updateCurrentStyle(object, styleColor));
            adjustAllSectionHeight();
        });

        $('#noColor').on('click', function () {
            var styleColor = ' color: unset !important;';
            $('#gradiant').css('background-color', 'unset');
            $(object).attr('style', updateCurrentStyle(object, styleColor));
            adjustAllSectionHeight();
        });

        $('#noColorBackground').on('click', function () {
            var styleColor = ' background-color: unset !important;';
            $('#gradiant').css('background-color', 'unset');
            $(object).attr('style', updateCurrentStyle(object, styleColor));
        });

        $('.backgroundPallet').on('click', function () {
            var styleColor = ' background-color: ' + $(this).css('background-color') + ' !important;'
            $('#backgroundGradiant').css('background-color', $(this).css('background-color'));
            $(object).attr('style', updateCurrentStyle(object, styleColor));
        });

        $('#BOLD').on('click', function () {
            var style = ' font-weight: unset !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' font-weight: bold !important;';
                $(this).addClass('fontButtonSelected');
            }
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });
        $('#UNDERLINE').on('click', function () {
            var style = ' text-decoration: none !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' text-decoration: underline !important;';
                $(this).addClass('fontButtonSelected');
            }
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });
        $('#ITALIC').on('click', function () {
            var style = ' font-style: normal !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' font-style: italic !important;';
                $(this).addClass('fontButtonSelected');
            }
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });

        $('#JUSTIFY').on('click', function () {
            var style = ' text-align: unset !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' text-align: center !important;'
                $(this).addClass('fontButtonSelected');
            }
            $('#JUSTIFY_LEFT').removeClass('fontButtonSelected');
            $('#JUSTIFY_LEFT').prop('checked', false);
            $('#JUSTIFY_RIGHT').removeClass('fontButtonSelected');
            $('#JUSTIFY_RIGHT').prop('checked', false);
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });
        $('#JUSTIFY_LEFT').on('click', function () {
            var style = ' text-align: unset !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' text-align: left !important;'
                $(this).addClass('fontButtonSelected');
            }
            $('#JUSTIFY_RIGHT').removeClass('fontButtonSelected');
            $('#JUSTIFY_RIGHT').prop('checked', false);
            $('#JUSTIFY').removeClass('fontButtonSelected');
            $('#JUSTIFY').prop('checked', false);
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });

        $('#JUSTIFY_RIGHT').on('click', function () {
            var style = ' text-align: unset !important;';
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                $(this).removeClass('fontButtonSelected');
            }
            else {
                $(this).prop('checked', true);
                style = ' text-align: right !important;'
                $(this).addClass('fontButtonSelected');
            }
            $('#JUSTIFY_LEFT').removeClass('fontButtonSelected');
            $('#JUSTIFY_LEFT').prop('checked', false);
            $('#JUSTIFY').removeClass('fontButtonSelected');
            $('#JUSTIFY').prop('checked', false);
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });
    }

    if (nodeName.toLowerCase() == 'a') {

        if ($(object).hasClass("action_type"))
            $(".linkTo").hide();



        $('#buttonRounder').on('change', function () {
            var style = "border-radius: 0px !important;";
            if ($(this).prop('checked'))
                style = 'border-radius: 20px !important;';
            $(object).attr('style', updateCurrentStyle(object, style));
            adjustAllSectionHeight();
        });

        $('#pageId').on('change', function () {
            $(object).attr('href', "home?pageId=" + this.value);
            adjustAllSectionHeight();
        });

        $("#link").on('change', function () {
            $(object).attr('href', this.value);
            adjustAllSectionHeight();
        });


    }
}


function showImageModal(mode) {

    PICMODALMODE = mode;
    if (mode == 'VIDEO') {
        selectImagesSize('VIDEO');
    }

    if (mode == 'BACKGROUND') {
        $('#viewToolBox').modal('hide');
        selectImagesSize('LARGE');
    }
    if (mode == 'BACKGROUND-VIDEO') {
        $('#viewToolBox').modal('hide');
        selectImagesSize('VIDEO');
    }
    if (mode == 'IMG-BACKGROUND') {
        selectImagesSize('MEDIUM');
    }
    if (mode == 'IMG') {
        selectImagesSize('MEDIUM');
    }
    if (mode == 'IMG-ELEMENT') {
        selectImagesSize('MEDIUM');
    }
    if (mode == 'IMG-SLIDER') {
        selectImagesSize('MEDIUM');
    }
    if (mode == 'IMG-GALLERY') {
        selectImagesSize('MEDIUM');
    }
    if (mode == 'MEDIA' || mode == '_MEDIA') {
        selectImagesSize('VIDEO');
    }
    $('#viewPics').modal('show');

}

function addImageToList() {
    var PictureLine = ` <div class="col-sm-4"><div class="imageContainer">
                                                    <div class="img" style="background-image:url('LOCATION'"></div>
                                                    <div class="links"><a href="#" onclick="selectPicfromModal('LOCATION');return false;" title=""><i class="fa fa-copy" style="font-size: 16px!important;display:inline;"></i></a></div>
                                                </div></div>`;
    if (images.length > 0) {
        for (var i = 0; i < images.length; i++) {
            var line = PictureLine.replace(/LOCATION/g, images[i].location);
            $('#PrivatePics').append(line);
        }

    }

}

function updateCurrentStyle(object, newvalue) {
    var currentStyle = $(object).attr('style');

    if (currentStyle == null || currentStyle == '') {
        currentStyle = newvalue.replace(';', '');
        return currentStyle;
    }

    var newStyle = '';
    var styles = currentStyle.split(';');
    var styleKey = newvalue.split(':')[0];
    var flag = false;
    for (var i = 0; i < styles.length; i++) {
        if (styles[i] == '')
            { continue; }
        if (styles[i].split(':')[0].trim() == styleKey.trim()) {
            flag = true;
            newStyle += styles[i].split(':')[0].trim() + ':' + newvalue.split(':')[1].replace(';','') + ';' ;
        }
        else
            newStyle += styles[i].trim() + ';'
    }
    if (!flag)
        newStyle += newvalue.replace(';', '') + ';' ;
  
    return newStyle;
}


function showLanguage(SECTIONID, language) {

    var s = sections[SECTIONID];
    if (s.block.translatedVersions == null) {
        toastr.error("This text was never translated into this language.");
        return;
    }
    if (s.block.translatedVersions.length == 0) {
        toastr.error("This text was never translated into this language.");
        return;
    }
    removeAllIcon($('#section_' + SECTIONID).children(':not(.setting-menu)'));

    var content = $('#section_' + SECTIONID).children(':not(.setting-menu)').html().replace(/contenteditable=\"true\"/g, "");
    if (s.lastLanguage != null) {
        var b = s.block.translatedVersions.find(x => x.language == s.lastLanguage);
        b.text = content;

    }
    else {
        s.text = content;
    }
    toggleOverrideLanguage(SECTIONID, false);
    s.lastLanguage = language;


    var myBlock = s.block.translatedVersions.find(x => x.language == language);
    if (myBlock.text != null) {
        $("#SID" + s.id).html(myBlock.text);
        makeTextMode(SECTIONID);
    }
    else {
        toastr.error("This text was never translated into this language.");
    }
}

function selectImagesSize(size) {

    $('.videos').hide();
    $('.mediumPics').hide();
    $('.largePics').hide();

    if (size == 'MEDIUM')
        $('.mediumPics').show();
    else
        $('.mediumPics').hide();
    if (size == 'VIDEO') {
        $('.videos').show();
        $('.largePics').hide();
    }
    else {
        $('.videos').hide();
        $('.largePics').show();
    }


}

function updateBackground(sectionID, type, value) {

    if (type == 'gradiant') {

        $('#gradient').css('background-image', value);
        $('#section_' + sectionID).find('section').css('background-image', value);
        $('#section_' + sectionID).find('section').find('video').remove();
        closeAllMenu();
    }
    if (type == 'image') {
        var imageHtml = `<a href=# onClick="updateBackground(` + sectionID + `,'image','` + value + `');return false;"  > <img src='` + value + `' style='max-width:110px; padding:10px;'></a>`;
        imageHtml += ` <a href=# class=addImageButton onClick="showImageModal('BACKGROUND');   selectedSectionId=` + sectionID + ` ;return false"><i class="fas fa-plus"></i></a>`
        $('#section' + sectionID + '_backgroundImage').html(imageHtml);
        $('#section_' + sectionID).find('section').css('background-image', 'url(' + value + ')');
        $('#section_' + sectionID).find('section').find('video').remove();

    }
    if (type == 'video') {


        var minivideo = `<video autoplay muted loop ><source src='` + value + `' type='video/mp4'></video>`;
        var imageHtml = ` <a href=# class=addImageButton onClick="showImageModal('VIDEO');selectedSectionId=` + sectionID + ` ;return false"><i class="fas fa-plus"></i></a>`;
        $('#section_' + sectionID).find('section').find('video').remove();

        $('#section' + sectionID + '_backgroundVideo').html(imageHtml);
        $('#section_' + sectionID).find('section').css('background-image', '');
        $('#section_' + sectionID).find('section').prepend(minivideo);
    }

}

function updateStickyBottom(SECTIONID, value) {
    var section = sections[SECTIONID];
    section.isAbsolutePosition = value;
}

function updateHideByDefault(SECTIONID, value) {
    var section = sections[SECTIONID];
    section.hideByDefault = value;
}

function showImageSetupModal(object, SectionID) {

    closeWrapper();
    selectedObjectDiv = object;
    selectedSectionId = SectionID;
    $('#viewImageSetup').modal('show');
    $('#previewImage').html($(object)[0].outerHTML);
    $('#previewImage').find('img').css({ 'height': 'auto' });
    $('#previewImage').find('img').css({ 'max-width': '100%' });
    // add Background and show background


    SelectedCSSObject = $('#previewImage').find('img');
    var value = '';
    $('#_imageSizeSlider').show();
    if (SelectedCSSObject.hasClass('img-fluid')) {
        $('#_imageSizeSlider').hide();
        $('#_currentImageSize2').html('Element has an automated size, cannot be updated');
    }
    else {
        $('#_currentImageSize2').html('');
        value = SelectedCSSObject.css('width');
        if (value != '0px') {
            $('#_imageSizeSlider').val(value.replace('px', '').replace('%', ''));
            $('#_currentImageSize').html(value);
        }
        else {
            $('#_currentImageSize').html('Undefined By Default');
            $('#_imageSizeSlider').val(0);
        }

        $('#_imageSizeSlider').on('input', function () {
            var myStyle = 'width:' + $(this).val() + 'px !important;';
            $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));
            $('#_currentImageSize').html($(this).val() + ' pixels');

            if (parseInt($(this).val()) > $('#previewImage').width()) {
                $('#_currentImageSize').append('<div class="text-danger">Too large to preview</div>')
            }
        });

    }


    value = SelectedCSSObject.css('border');
    if (value != '') {
        var regex = /\d*\.?\d+(?:px|%)?/i;
        value = value.match(regex);

        value = value[0].replace('px', '');
        $('#_imageBorderSlider').val(value);
        $('#_currentBorderSize').html(value + ' pixels');
    }

    $('#_imageBorderSlider').on('input', function () {
        var myStyle = 'border:' + $(this).val() + 'px solid;';
        $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));
        $('#_currentBorderSize').html($(this).val() + ' pixels');

    });


    value = SelectedCSSObject.css('border-radius');
    if (value != '') {
        value = value.replace('%', '').replace('px', '');
        $('#_imageRoundSlider').val(value);
        $('#_currentRoundSize').html(value + ' %');
    }
    else {
        $('#_imageRoundSlider').val(0);
        $('#_currentRoundSize').html('No Border');
    }


    $('#_imageRoundSlider').on('input', function () {
        var myStyle = 'border-radius:' + $(this).val() + '% !important;';
        $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));
        $('#_currentRoundSize').html($(this).val() + ' %');

    });

    if (!$('#_animationImageSetupOption').hasClass('[class^="u-block-hover__main"]')) {
        $(SelectedCSSObject).parent().addClass('u-block-hover');
    }

    $('#_animationImageSetupOption').on('change', function () {
        $(SelectedCSSObject).removeClass(function (index, className) {
            return (className.match(/(^|\s)u-block-hover__main\S+/g) || []).join(' ');
        });
        if ($(this).val() != '') {
            if ($(SelectedCSSObject).parent().hasClass('u-block-hover') == false)
                $(SelectedCSSObject).parent().addClass('u-block-hover');
            $(SelectedCSSObject).addClass($(this).val());
        }


    })

    $('.changePic').on('click').on('click', function () {
        $('#viewImageSetup').modal('hide');
        showImageModal('IMG');
    });


    $('#confirmationBox').unbind('click').on('click', function () {
        $(selectedObjectDiv).remove();
        $('#viewImageSetup').modal('hide');
        $('#viewConfirmationBox').modal('hide');
        adjustAllSectionHeight();
        saveSection(selectedSectionId);

    });


}

function saveImageSetup() {

    $(selectedObjectDiv).attr('style', SelectedCSSObject.attr('style'));
    $(selectedObjectDiv).attr('src', SelectedCSSObject.attr('src'));

    $(selectedObjectDiv).removeClass(function (index, className) {
        return (className.match(/(^|\s)u-block-hover__main\S+/g) || []).join(' ');
    });

    if ($(SelectedCSSObject).parent().hasClass('u-block-hover')) {
        if ($(selectedObjectDiv).parent().hasClass('u-block-hover') == false)
            $(selectedObjectDiv).parent().addClass('u-block-hover');
        $(selectedObjectDiv).removeAttr('class');
        $(selectedObjectDiv).attr('class', $(SelectedCSSObject).attr("class"));

    }




    $('#viewImageSetup').modal('hide');
    saveSection(selectedSectionId);
}


function selectPicfromModal(location) {

    if (PICMODALMODE == 'VIDEO') {
        closeAllMenu();
        updateBackground(selectedSectionId, 'video', location);
        $('#viewPics').modal('hide');
    }
    if (PICMODALMODE == 'BACKGROUND') {
        closeAllMenu();
        updateBackground(selectedSectionId, 'image', location);
        $('#viewPics').modal('hide');
        $('#viewToolBox').modal('show');
    }
    if (PICMODALMODE == 'BACKGROUND-VIDEO') {
        closeAllMenu();
        updateBackground(selectedSectionId, 'video', location);
        $('#viewPics').modal('hide');
        $('#viewToolBox').modal('show');
    }

    if (PICMODALMODE == 'IMG-BACKGROUND') {
        closeAllMenu();
        $(selectedObjectDiv).css('background-image', 'url(' + location + ')');
        selectedObjectDiv = {};
        $('#viewPics').modal('hide');
    }

    if (PICMODALMODE == 'IMG') {
        closeAllMenu();
        $(SelectedCSSObject).attr('src', location);
        $(SelectedCSSObject).trigger('src-attribute-changed');
        $('#viewPics').modal('hide');
    }

    if (PICMODALMODE == 'IMG-ELEMENT') {
        closeAllMenu();
        $(SelectedCSSObject).attr('src', location);
        $('#viewPics').modal('hide');
    }

    if (PICMODALMODE == 'IMG-SLIDER') {
        $('#selectedImage').attr("src", location);
        $('#viewPics').modal('hide');
        $('#viewSliderSetup').modal('show');
    }
    if (PICMODALMODE == 'IMG-GALLERY') {
        $('#selectedImage').attr("src", location);
        $('#viewPics').modal('hide');
        $('#viewGallerySetup').modal('show');
    }
    if (PICMODALMODE == 'MEDIA' || PICMODALMODE == '_MEDIA') {
        if (PICMODALMODE == 'MEDIA') {
            $('#_mediaLink2').val(location);
            $("#previewVideo2").attr("data-src", location);
            $("#previewVideo2").attr("href", location);
            $('#viewMediaSetup').modal('show');
        }
        else {
            $('#_mediaLink1').val(location);
            $("#previewVideo1").attr("href", location);
            $("#previewVideo1").attr("data-src", location);
            $('#viewSliderSetup').modal('show');
        }

        $('#viewPics').modal('hide');
        
    }

    adjustAllSectionHeight();


}



function PicCancelFunctions() {
    closeAllMenu();
    $('#viewPics').modal('hide');


    if (PICMODALMODE == 'IMG')
        selectedObjectDiv = {};


    if (PICMODALMODE == 'IMG-SLIDER')
        $('#viewSliderSetup').modal('show');

    if (PICMODALMODE == 'IMG-GALLERY')
        $('#viewGallerySetup').modal('show');

    if (PICMODALMODE == 'MEDIA' || PICMODALMODE == '_MEDIA') {
        if (PICMODALMODE == 'MEDIA')
            ('#viewMediaSetup').modal('show');
        else
            $('#viewSliderSetup').modal('show');
    }


}
function updateMargins(myText,sectionId, style, value) {
    $('#section_' + sectionId).find('section').attr('style', updateCurrentStyle($('#section_' + sectionId).find('section'), style + ':' + value + 'px !important;'));
    //$('#section_' + sectionId).find('section').css(style, value + 'px');
    $('#' + myText).html('<small>' + value + ' pixels</small>');
    adjustSectionHeight(sectionId);
}



function updateContained(SECTIONID, value) {
    var section = sections[SECTIONID];


    if (value)
        $('#section_' + SECTIONID).find('section').children().first().wrap('<div class="container"/>');
    else
        $('#section_' + SECTIONID).find('section').children('.container').first().children().first().unwrap();

    adjustSectionHeight(SECTIONID);

}

function updateFullScreen(SECTIONID, value) {
    var section = sections[SECTIONID];
    if (value)
        $('#section_' + SECTIONID).find('section').addClass('g-height-100vh');
    else
        $('#section_' + SECTIONID).find('section').removeClass('g-height-100vh');
    adjustSectionHeight(SECTIONID);

}

function updateFacebook(SECTIONID, value)
{
    var section = sections[SECTIONID];
    $('#section_' + SECTIONID).find('section').attr("_facebook", value);
    if (value == true) {        
        $('.fbSocialMedia').show();
    } else {
        $('.fbSocialMedia').hide();
    }
}

function updateFacebookButtonSize(SECTIONID, value) {
    var section = sections[SECTIONID];
    $('#section_' + SECTIONID).find('section').attr("_fbButtonSize", value);
}

function updateFacebookLayout(SECTIONID, value) {
    var section = sections[SECTIONID];
    $('#section_' + SECTIONID).find('section').attr("_fbLayout", value);
}


function updateFacebookActionType(SECTIONID, value) {
    var section = sections[SECTIONID];
    $('#section_' + SECTIONID).find('section').attr("_fbActionType", value);
}

function updateFacebookIncludeShareButton(SECTIONID, value) {
    var section = sections[SECTIONID];
    $('#section_' + SECTIONID).find('section').attr("_facebookIncludeShareButton", value);
}


function showFieldSetupModal(object, SectionID) {

    closeWrapper();
    selectedObjectDiv = $(object);
    SelectedCSSObject = $(object);
    selectedSectionId = SectionID;
    $('#viewFieldsSetup').modal('show');

    // add Background and show background


    SelectedCSSObject = $(object);
    var value = '';
    $('._fieldNotHidden').show();
    $('._list').hide();

    console.log('fieldhide ' + SelectedCSSObject.attr('fieldhide'));
    if (SelectedCSSObject.attr('fieldhide')=='true')
        $('#_fieldHide').prop('checked', SelectedCSSObject.attr('fieldhide'));
    if (SelectedCSSObject.attr('fieldrequired') == 'true')
        $('#_fieldRequired').prop('checked', SelectedCSSObject.attr('fieldrequired'));

    $('#_fieldLabel').val(SelectedCSSObject.attr('placeholder'));
    $('#_fieldName').val(SelectedCSSObject.attr('name'));
    $('#_fieldDBName').val(SelectedCSSObject.attr('dbname'));
    $('#_fieldType').val(SelectedCSSObject.attr('fieldtype'));
    $('#_fieldValueType').val(SelectedCSSObject.attr('fieldValueType'));
    $('#_fieldValueName').val(SelectedCSSObject.attr('fieldValueName'));
    $('#_list').val(SelectedCSSObject.attr('list'));
    if ($('#_fieldType').val() == 'list') {
        $('._list').show();
    }
    else
        $('._list').hide();
    if ($('#_fieldValueType').val() == '' || $('#_fieldValueType').val() == null) {
        $('._fieldURL').hide();
    }
    else
        $('._fieldURL').show();

}
function transformFields() {

  
    var fieldType = selectedObjectDiv.attr('fieldtype');
    var style = selectedObjectDiv.attr('style');
    var classes = selectedObjectDiv.attr('class');
    var fieldHide = selectedObjectDiv.attr('fieldhide');
    var fieldRequired = selectedObjectDiv.attr('fieldrequired');
    var placeholder = selectedObjectDiv.attr('placeholder');
    var name = selectedObjectDiv.attr('name');
    var dbName = selectedObjectDiv.attr('dbName');
    var fieldValueName = selectedObjectDiv.attr('fieldValueName');
    var fieldValueType = selectedObjectDiv.attr('fieldValueType');

    

    var list = "";
    if ($(selectedObjectDiv).attr('list') != null)
        list = $(selectedObjectDiv).attr('list');

    if (fieldType == 'textarea') {
            textbox = $(document.createElement('textarea'))
        textbox.attr('style', style);
        textbox.attr('class', classes);
        textbox.attr('fieldhide', fieldHide);
        textbox.attr('fieldrequired', fieldRequired);
        textbox.attr('placeholder', placeholder);
        textbox.attr('name', name);
        textbox.attr('dbname', dbName);
        textbox.attr('fieldtype', fieldType);
        textbox.attr('rows', '6');
        textbox.attr('list', list);
            selectedObjectDiv.replaceWith(textbox);
    }

    if (fieldType == 'list') {
         textbox = $(document.createElement('select'));
        textbox.attr('style', style);
        textbox.attr('class', classes);
        textbox.attr('fieldhide', fieldHide);
        textbox.attr('fieldrequired', fieldRequired);
        textbox.attr('placeholder', placeholder);
        textbox.attr('name', name);
        textbox.attr('dbname', dbName);
        textbox.attr('fieldtype', fieldType);
        textbox.attr('fieldValueName', fieldValueName);
        textbox.attr('fieldValueType', fieldValueType);
        textbox.attr('type', 'text');
        textbox.attr('list', list);
        var myHTML = '';
        list = list.split(',');
        for (var i = 0; i < list.length; i++) {
            if (list[i] != '' && list[i] != '') {
                myHTML += '<option>' + list[i] + '</option>';
            }
        }
        textbox.html(myHTML);
        selectedObjectDiv.replaceWith(textbox);
    }

    if (fieldType == 'regular' || fieldType == 'phone' || fieldType == 'email' || fieldType == 'hidden' ) {
        
        textbox = $(document.createElement('input'));
        textbox.attr('style', style);
        textbox.attr('class', classes);
        textbox.attr('fieldhide', fieldHide);
        textbox.attr('fieldrequired', fieldRequired);
        textbox.attr('placeholder', placeholder);
        textbox.attr('name', name);
        textbox.attr('dbname', dbName);
        textbox.attr('fieldtype', fieldType);
        textbox.attr('type', 'text');
        textbox.attr('fieldValueName', fieldValueName);
        textbox.attr('fieldValueType', fieldValueType);
        if (fieldType == 'hidden')
            textbox.addClass('hiddenfield');
        else
            textbox.removeClass('hiddenfield');

        selectedObjectDiv.replaceWith(textbox);
    }

}
function saveFieldSetup() {
    if ($('#_fieldType').val() == null)
        $('#_fieldType').val('regular');

    selectedObjectDiv.attr('fieldhide', $('#_fieldHide').prop('checked'));
    selectedObjectDiv.attr('fieldrequired', $('#_fieldRequired').prop('checked'));
    selectedObjectDiv.attr('placeholder', $('#_fieldLabel').val());
    selectedObjectDiv.attr('name', $('#_fieldName').val());
    selectedObjectDiv.attr('dbname', $('#_fieldDBName').val());
    selectedObjectDiv.attr('fieldValueType', $('#_fieldValueType').val());
    selectedObjectDiv.attr('fieldValueName', $('#_fieldValueName').val());

    selectedObjectDiv.attr('fieldtype', $('#_fieldType').val());
    selectedObjectDiv.attr('list', $('#_list').val());

    
    transformFields();

    $('#viewFieldsSetup').modal('hide');
    saveSection(selectedSectionId);
    makeTextMode(selectedSectionId);
}




function showBrushIcon(object, SECTIONID) {


    $(object).on('paste', function (e) {
        e.preventDefault();
        var text = '';
        if (e.clipboardData || e.originalEvent.clipboardData) {
            text = (e.originalEvent || e).clipboardData.getData('text/plain');
        } else if (window.clipboardData) {
            text = window.clipboardData.getData('Text');
        }
        if (document.queryCommandSupported('insertText')) {
            document.execCommand('insertText', false, text);
        } else {
            document.execCommand('paste', false, text);
        }
    });

    $(object).on('click', function () {
        closeAllMenu();
        //removeAllIcon(this);
        showAnimatedBar(this, SECTIONID);
        showEditPanel(this);
        showActionPanel(this);
        
        //toggleQuickView(.parent('section'));
    });

}


function showEditPanel(obj) {
    $('#editor-panel').show('slide', { easing: 'easeOutCubic' }, 400);
    $("#sections").animate({ 
        left:""
    }, {
        duration: 1000,
        step: function () {
            //console.log( "width: ", i++ );
            console.log($(this).width());
        },
        complete: function () {
            console.log("finished");
        }
    })
    editingObj(obj);
}
function showActionPanel(obj) {
    $(obj).append($("select-actions"));
}


function updateLink() {


    var object = SelectedCSSObject;
    var script = "";
    if ($('#actionType').val() == '') {
        $(object).attr("onclick", "");
        return;
    }

    if ($('#actionType').val() == '') {
        $(object).attr("onclick", "return false;");
        $(object).attr("href", "#");
        return;
    }
    if ($('#actionType').val() == 'Javascript') {
        $(object).attr("onclick", $('#javascriptFunctionName').val() +  "(this); return false;");
        $(object).attr("href", "#");
        return;
    }
    if ($('#actionType').val() == 'Link') {
        $(object).removeAttr("onclick");
        if ($('#linkTo').val() == '') {
            $(object).attr("href", "#");
            return;
        }
        if ($('#linkTo').val() == 'page') {
            $(object).attr("href", "./?pageId=" + $('#pageId').val() + "&action=" + $('#VERB').val() + "&data=" + $('#DATA').val() );
            return;
        }

        if ($('#linkTo').val() == 'section') {
            $(object).attr("href", "./?pageId=" + $('#pageId').val() + "#" + $('#sectionId').val());
            return;
        }
        if ($('#linkTo').val() == 'external') {
            $(object).attr("href", $("#link").val() );
            return;
        }


    }
}


function addAnimation(object,className) {

    if (!$(object).hasClass(className))
        $(object).addClass(className);
}


function removeAnimation(object, className) {
        $(object).removeClass(className);

}



function closeAllMenu() {
    closeWrapper();
}


function updateSectionName(SECTIONID, name) {
    name = name.replace(/ /g, '');
    $('#section_' + SECTIONID).find("section").attr('id', name);

}

function updateSectionLibraryName(SECTIONID, name) {

    $('#section_' + SECTIONID).find("section").attr('libraryname', name);

}
function updateSectionPartialName(SECTIONID, name) {

    $('#section_' + SECTIONID).find("section").attr('partial', name);

}



function updateClassOpacity(SECTIONID, value) {

    $('#section_' + SECTIONID).find("section").removeClass('g-bg-black--after');
    $('#section_' + SECTIONID).find("section").removeClass('g-bg-cover');
    $('#section_' + SECTIONID).find("section").children().first('div').removeClass('g-pos-rel g-z-index-1');
    


    for (i = 1; i < 10;i++)
        $('#section_' + SECTIONID).find("section").removeClass('g-bg-black-opacity-0_' + i + '--after');

    if (value == 0)
        return;
    $('#section_' + SECTIONID).find("section").addClass('g-bg-cover');
    $('#section_' + SECTIONID).find("section").children().first('div').addClass('g-pos-rel g-z-index-1');
    if (value == 10)
        $('#section_' + SECTIONID).find("section").addClass('g-bg-black--after');
    else
        $('#section_' + SECTIONID).find("section").addClass('g-bg-black-opacity-0_' + value + '--after');


}


function confirmDeleteImage() {
    $('#confirmationMessage').html('Are you sure you want to delete this image?')
    $('#viewConfirmationBox').modal('show');
}

const elem = document.getElementById(`viewSourceCode`);
const editor = CodeMirror(elem, {
    lineNumbers: true,
    tabSize: 2,
    mode: "htmlmixed",
    lineWrapping: false,
    autoRefresh: true,
    styleActiveLine: true,
    fixedGutter: true,
    lint: true,
    coverGutterNextToScrollbar: false,
    gutters: ['CodeMirror-lint-markers'],
    value: ''
});

function showCSSSection(SECTIONID) {
    selectedSectionId = SECTIONID;
    $('#viewCSS').modal('show');
    var myText = $('#section_' + selectedSectionId).find('section').html();
    editor.setValue(myText);
   
}

function saveCSSSection(SECTIONID) {
    $('#section_' + selectedSectionId).find('section').html(editor.getValue());
    adjustAllSectionHeight();
    saveSection(selectedSectionId);
    makeTextMode(selectedSectionId);
}
