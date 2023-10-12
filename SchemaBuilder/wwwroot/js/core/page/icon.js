
var data = '';

var startValue = 0;
var endValue = 27;








function showIcons(value) {
    
    if (value != '') {
        console.log("icons : ");
        console.log(eval(value));
        
        $('#iconList').html(eval(value));

        $('#iconList').find("ul > li > div").find('a').removeAttr("href").css("cursor", "pointer");
        $('#iconList').find("ul > li > div > a").each(function () {
            $(this).find('i').click(function () {
                closeAllMenu();
                updateIcon(this);
            });

        });

    }
    else
        $('#iconList').html('');


}

function iconSliderSlide(value) {

    var myStyle = 'font-size:' + value + 'px !important;';
    $(SelectedCSSObject).attr('style', updateCurrentStyle(SelectedCSSObject, myStyle));
    $('#_currentSize').html(value + ' pixels');
}

function saveIcon() {

    selectedObjectDiv.removeAttr('class')
    selectedObjectDiv.addClass(SelectedCSSObject.attr('class'));
    selectedObjectDiv.attr('style', SelectedCSSObject.attr('style'));
    $('#viewIconSetup').modal('hide');
    saveSection(selectedSectionId);
}


function updateIcon(icon) {
    
    SelectedCSSObject.removeClass(function (index, className) {
        return (className.match(/(^|\s)fa[sbr]?[ ]fa-|| (?:u-line-icon-pro) || (?:et-icon-)\S+/g) || []).join(' ');
    });
    SelectedCSSObject.removeClass(SelectedCSSObject.attr('class'));
    SelectedCSSObject.addClass($(icon).attr('class'));
}


function showIconModal(iconObject,SectionID) {

    closeWrapper();
    myIcon = iconObject;
    selectedSectionId = SectionID;
    $('#viewIconSetup').modal('show');
    $('#selectedIcon').html($(iconObject)[0].outerHTML);
    $
    $('#selectedIcon').css('font-size', iconObject.css('font-size'));
    $('#selectedIcon').css('color', iconObject.css('color'));
    $('#_iconSlider').val($(iconObject).css('font-size').replace('px', ''));

    // add Background and show background

    $('#_iconColor').html(colorPallet.replace(/colorButton/g, 'colorIconColor'));
    var preview = $('#selectedIcon').html();

    SelectedCSSObject = $('#selectedIcon').find('i');

    var previewName = 'color';
    $('.pallet.colorIconColor').each(function () {
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
            isClicked = false;
        });
    });



    $('#iconListMenu').hide();
    $('#iconSetupMenu').show();

    var value = SelectedCSSObject.css('font-size').replace('px','');
    $('#_iconSlider').val(value);
    $('#_currentSize').html(value + ' pixels');

    $('#_iconSlider').on('input', function () {
        iconSliderSlide($(this).val());
    });

    $('#confirmationBox').unbind().on('click', function () {
        selectedObjectDiv.remove();
        $('#viewIconSetup').modal('hide');
        $('#viewConfirmationBox').modal('hide');
        adjustAllSectionHeight();
        saveSection(selectedSectionId);

    });
}

function confirmDeleteIcon() {
    $('#confirmationMessage').html('Are you sure you want to delete this icon?')
    $('#viewConfirmationBox').modal('show');
   
}


function loadIcons() {
    $('#notFound').hide();
    var flickerAPI = "../js/FontAwesomeList.json";
    fetch(flickerAPI, {
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        }
    })
        .then(response => response.json())
        .then(json => {
            data = json.icons;
            $('#iconList').empty();
             startValue = 0;
             endValue = 27;
            $('#iconList').append(`<ul class="list ma0 pa0 flex flex-row flex-wrap justify-start items-start" style="
    height: 490px;
    overflow-y: scroll;
"></ul>`);
            data.slice(startValue, endValue).forEach(function (item, index, array) {
                $('#iconList').find('ul').append(`<li class="dib ma0 pb3 w-grid-2 w-grid-4-m w-grid-6-l w-grid-9-xl">
<div class="flex flex-column justify-center relative shadow-hover default hover-bg-white br2 hide-child">
<a onclick=" $(this).find('i').click(function () { closeAllMenu();  updateIcon(this);   });" class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white" style="cursor: pointer;">
<i onclick="closeAllMenu();  updateIcon(this);" class="`+ item + `" style="font-size: 48px;"></i></a> <div class="w-100 ph1 pv2 tc f2">
<span class="db gray5 hover-gray7 text select-all">`+item+`</span><!----></div> <!----></div></li>`);
            });
        });
    
}


function seeMore() {
    startValue = startValue + 27;
    endValue = endValue + 27;
    data.slice(startValue, endValue).forEach(function (item, index, array) {
        $('#iconList').find('ul').append(`<li class="dib ma0 pb3 w-grid-2 w-grid-4-m w-grid-6-l w-grid-9-xl ">
<div class="flex flex-column justify-center relative shadow-hover default hover-bg-white br2 hide-child">
<a onclick=" $(this).find('i').click(function () { closeAllMenu();  updateIcon(this);   });" class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white" >
<i onclick="closeAllMenu();  updateIcon(this);" class="`+ item + `" style="font-size: 48px;"></i></a> <div class="w-100 ph1 pv2 tc f2">
<span class="db gray5 hover-gray7 text select-all">`+ item +`</span><!----></div> <!----></div></li>`);
    });
}

function searchIcon() {
  
    $('#iconList').find('ul').html('');
    var searchVar = $('#iconName').val();
    if (searchVar != "") {
        $('#seeMoreIcons').hide();
    } else{
        $('#seeMoreIcons').show();
    }
    data.forEach(function (item, index, array) {
        if (item.includes(searchVar)) {
            $('#notFound').hide();
            $('#iconList').show();
            $('#iconList').find('ul').append(`<li class="dib ma0 pb3 w-grid-2 w-grid-4-m w-grid-6-l w-grid-9-xl ">
<div class="flex flex-column justify-center relative shadow-hover default hover-bg-white br2 hide-child">
<a onclick=" $(this).find('i').click(function () {  closeAllMenu();  updateIcon(this);   });" class="flex flex-column items-center justify-center color-inherit w-100 pa2 br2 br--top no-underline hover-bg-blue4 hover-white" >
<i onclick="closeAllMenu();  updateIcon(this);"  class="`+ item + `" style="font-size: 48px;"></i></a> <div class="w-100 ph1 pv2 tc f2">
<span class="db gray5 hover-gray7 text select-all">`+ item + `</span><!----></div> <!----></div></li>`);

        }

    });

    if ($('#iconList ul').children().length == 0) {
        console.log("empty");
        $('#iconList').hide();
        $('#notFound').show();
    } else {
        console.log("not empty");
        $('#notFound').hide();
        $('#iconList').show();
    }

    startValue = 0;
    endValue = 20;
    
}

function showIconIcon(object, SECTIONID) {
    
    var icon = '<div class=sizeIcon contenteditable=false ><i class="fas fa-icons"></i></div><div class=plusIcon contenteditable=false ><i class="fas fa-plus"></i></div><div class=XIcon contenteditable=false><i class="fas fa-times"></i></div>';
    var whoisClicked;
    $(object).on('click', function () {
        var whoisClicked;
        removeAllIcon(this);
        selectedObjectDiv = $(this);
        showIconModal($(this), SECTIONID);


        adjustAllSectionHeight();
        $(this).find('.sizeIcon').on('click', function () {

        });
        $(this).find('.XIcon').on('click', function () {
            removeAllIcon(object);
            $(object).parent().remove();
        });

        $(this).find('.plusIcon').on('click', function () {

            $(object).parent().wrap("<p/>");
            $(object).parent().parent().append($(object).parent().parent().html());
            $(object).parent().unwrap();
            makeTextMode(SECTIONID);
            clearIcons(SECTIONID, 500);
            adjustAllSectionHeight();

        });

    });

    $(object).focusout(function () {
        removeAllIcon($(object).parent());

    });
}

