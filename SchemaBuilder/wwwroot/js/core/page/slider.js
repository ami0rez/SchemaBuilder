


var slide = {};
var imageFormat = "";
var imgTEST;


function resetPicsModal() {

    $('#stockResultOptions').hide();
    $('#first1').hide();
    $('#second1').hide();
    $('#third1').hide();
    $('#showURLBtn').show();
    $('#showURLDiv').hide();
    $('#imageLink').val('');
    $('#VideoOptionAction').show();

}


function showSlideDetail(object) {

    $('#slickyAccordion').hide();
    $("#slideDetail").show();
    $("#slideDetail").html($("#option3").html());


    if ($('#_videoOption').prop('checked')) {
        $('.VideoSelectionOption').show();
        $('.__mediaLink').val($(object).find('.js-fancybox-media').attr('data-src'));
    }
    else
        $('.VideoSelectionOption').hide();

    slide = object;
    var objectImg = $(object).find('img');
    $('#selectedImage').attr('src', $(objectImg).attr('src'));
    try {
        $('#selectedImage').load(function () {
            var realWidth = this.width;
            var realHeight = this.height;
            $('#imgFormat').html("Format: " + realWidth + " X " + realHeight + " pixels");
            $(this).attr('src', $(objectImg).attr('src'));

            //imageFormat = realWidth + " X " + realHeight;
        })
    }
    catch (err) {
        $('#selectedImage').each(function () {
            if (this.complete) {
                var realWidth = this.width;
                var realHeight = this.height;
                $('#imgFormat').html("Format: " + realWidth + " X " + realHeight + " pixels");
                $(this).attr('src', $(objectImg).attr('src'));
            }
        });
    }

    var ii = 0;
    for (ii = 1; ii <= 5; ii++) {
        $('#selectedText' + ii).hide();
    }
    ii = 1;
    $(object).find('.js_Content').children().each(function (j) {
        $('#selectedText' + ii).show();
        $('#selectedText' + ii).html($(this)[0].outerHTML);

        $('#selectedText' + ii + "").children().first().on('click', function () {
            var rect = getOffset(this);
            showAnimatedBar(this, selectedSectionId);
            $('#wrapper').show();
        });

        ii++;
    });


    $('#SLIDERSAVE').off('click').on('click', function () {
        updateSlide();
    });
    $('#SLIDERCANCEL').off('click').on('click', function () {
        $('#slickyAccordion').show();
        $("#slideDetail").hide();
        resetSliderButtons();
    });
    $('#changePic').off('click').on('click', function () {
        $('#viewSliderSetup').modal('hide');
        resetPicsModal();
        showImageModal('IMG-SLIDER');
    });
}
var cc;


function loadSliderBlockOptions(blockId) {

    var myBlock = blocks.find(x => x.id == blockId);
    
    if (myBlock.maxColumns != null) {
        if (myBlock.maxColumns == 1) {
            $('._columnsOption').hide();
            $('_columns').val('1');
        }
        showColumnsOption(myBlock.maxColumns);
    }
    if (myBlock.maxRows != null) {
        if (myBlock.maxRows == 1) {
            $('._rowsOption').hide();
            $('_rows').val('1');
        }
        showRowsOption(myBlock.maxRows);
    }

 
    showVideoOption(myBlock.hasVideos);
    showSliderOption(myBlock.hasSliderEffect);
    showAnimationOption(myBlock.animation);
}

function updateSlide() {

    
    var objectImg = $(slide).find('img');
    var objectText = $(slide).children('div');

    $(slide).find('.js-fancybox-media').each(function () {
        
        $(this).attr('data-src', $('#_mediaLink1').val());
        $(this).attr('data-animate-in', $('#__animationIn').val());
        $(this).attr('data-animate-out', $('#__animationOut').val());
    });

    $(objectImg).attr('src', $('#selectedImage').attr('src'));

    var ii = 1;
    
    $(slide).find('.js_Content').children().each(function () {
        $(this).remove();
        $(slide).find('.js_Content').append($('#selectedText' + ii).html());
        ii++;
        
    });

    $('#slickyAccordion').show();
    $("#slideDetail").hide();
    resetSliderButtons();
}

function updateMediaSlide() {

    updateSlide();
}

function resetSliderButtons() {
    $('#SLIDERSAVE').off('click').on('click', function () {
        countRequirements();
        closeWrapper();
        
        if ($('.sliderPics').children().length >= minimumRequirement) {
            $('#viewSliderSetup').modal('hide');
            SaveCarousel();
        }
        else {
            var textSlide = 'slides';
            if ($('#_sliderOption').prop('checked') == false)
                textSlide = 'Picture Gallery';
            toastr.error('You have only ' + $('.sliderPics').children().length + ' ' + textSlide + ', but columns & rows settings require ' + minimumRequirement);
        }

    });
    $('#SLIDERCANCEL').off('click').on('click', function () {
        $('#viewSliderSetup').modal('hide');
    });
}



function loadSliderSlides() {
    

    $('#slickyAccordion').show();
    $("#slideDetail").hide();
    resetSliderButtons();

    if ($('#section_' + selectedSectionId).find('.js-gallery').length > 0 || $('#content-iframe').contents().find('#section_' + selectedSectionId).find('.js-gallery').length > 0)
        return loadSliderGallery();


    var Line = ` <div class="sliderPic d-block u-block-hover u-block-hover--scale-down" style="position:relative;padding:2px;" >
                                              IMG
                                        </div>`;
    //Loading Data from Carousel Object
    var carousel;
    var lang = $('input[name=section' + selectedSectionId + '_Language]:checked').val();
    if (lang == null) {
        lang = $('#content-iframe').contents().find('input[name=section' + selectedSectionId + '_Language]:checked').val();
    }
   // if (lang == 'en')
    carousel = sections[selectedSectionId].sliderHTML;
    if (carousel == null) {
        carousel = $('#content-iframe')[0].contentWindow.sections[selectedSectionId].sliderHTML;
    }
  //    else {
  //      var x = sections[selectedSectionId].block.translatedVersions.find(x => x.language == lang);
    //    carousel = x.sliderHTML;
   // }

    $('#_sliderOption').prop('checked', true);
    $('.useSlider').show()
    if ($(carousel).attr('data-autoplay') == "true") {
        $('#_isAutoPlay').prop("checked", true);
        $('._isAutoPlay').show();
    }
    else
        $('#_isAutoPlay').prop("checked", false);

    if ($(carousel).attr('_animation') == "true")
        $('#_animation').prop("checked", true);
    else
        $('#_animation').prop("checked", false);

    $('#_animationImageOption').val($(carousel).attr('_animationImageOption'));
    $('#_navigationSlider').val($(carousel).attr('_navigationSlider'));
   
    if ($(carousel).attr('_videoOption') == "true")
        $('#_videoOption').prop("checked", true);
    else
        $('#_videoOption').prop("checked", false);

    $('#_AutoPlaySpeed').val($(carousel).attr('data-speed'));


    $('#_rows').val($(carousel).attr('data-rows'));
    $('#_columns').val($(carousel).attr('data-slides-show'));

  //  selectedObjectDiv = $(carousel);

    $('.sliderPics').html('');
    var i=0
    if ($(carousel).children('.js-slide').find('img').length > 0) {
        $(carousel).children('.js-slide').find('img').each(function () {
            flag = true;
            i++;
            var trashCan = `<div style='position:absolute; right: 5px;top:5px;color:#CC4242' onClick="$(this).parent().remove()"><i class="fas fa-times-circle fa-2x"></i></div>`;
            
            var myContent = "";
            $(this).parents('.js-slide').find(':not(.js-fancybox-media)').each(function () {
                if ($(this).is('h1,h2,h3,h4,h5,h6,p,a,text')) {
                    $(this).attr('Contenteditable', true);
                    myContent += $(this)[0].outerHTML;
                }
            });

            var restofText = "<div style='display:none' class='js_Content'>" + myContent + "</div>";
            var sliderName = '<div class="sliderBox">SLIDER ' + i + '</div>';
            var videoLink = '';
            if ($(this).parent().children(".js-fancybox-media").length > 0)
                videoLink = "<div style='display:none'>" + $(this).parent().children(".js-fancybox-media")[0].outerHTML + "</div>";

            var l = Line.replace('IMG', $(this)[0].outerHTML + restofText + videoLink + trashCan + sliderName);
            $('.sliderPics').append(l);

        });
        $('.sliderPic').each(function () {
            $(this).click(function () {
                showSlideDetail($(this));
            });
        });
            
        $('.sliderPics').find('img').addClass('u-block-hover__img opacity_50  img-thumbnail');
    }
    else
    {
        $(carousel).children('.js-slide').find('.backgroundIMG').each(function () {

            var newImage = $(this).css('background-image');
            newImage = newImage.replace('url("', '').replace('")', '');

            var myText = "";
            $(this).parent().find('.js_Content').each(function () {
                myText += $(this).html();
            });
            var restofText = "<div style='display:none' class='js_Content'>" + myText + "</div>";

            var l = Line.replace('IMG', '<img class="img-fluid g-max-width-170--md mx-auto" src="' + newImage + '" onClick="showSlideDetail($(this).parent())">' + restofText);
            $('.sliderPics').append(l);
        });
    }


    return true;
}


function loadSliderGallery() {


    $('#slickyAccordion').show();
    $("#slideDetail").hide();
    resetSliderButtons();

    var Line = ` <div class="sliderPic d-block u-block-hover u-block-hover--scale-down" style="position:relative;padding:2px;" >
                                              IMG
                                        </div>`;
    //Loading Data from Carousel Object
    var carousel;
    if ($('#section_' + selectedSectionId).length > 0) {
        carousel = $('#section_' + selectedSectionId).find('.js-gallery')[0].outerHTML;
    } else {
        carousel = $('#content-iframe').contents().find('#section_' + selectedSectionId).find('.js-gallery')[0].outerHTML;     
    }
    
        
    $('#_sliderOption').prop('checked', false);
    $('.useSlider').hide()
    //Animation  & Video


    if ($(carousel).attr('_animation') == "true")
        $('#_animation').prop("checked", true);
    else
        $('#_animation').prop("checked", false);

    $('#_animationImageOption').val($(carousel).attr('_animationImageOption'));
    

    if ($(carousel).attr('_videoOption') == "true")
        $('#_videoOption').prop("checked", true);
    else
        $('#_videoOption').prop("checked", false);

 
    $('#_rows').val($(carousel).attr('data-rows'));
    $('#_columns').val($(carousel).attr('data-slides-show'));

    var rows = $('#_rows').val();
    var columns = $('#_columns').val();
    var trashCan = `<div style='position:absolute; right: 5px;top:5px;color:#CC4242' onClick="$(this).parent().remove()"><i class="fas fa-times-circle fa-2x"></i></div>`;


    selectedObjectDiv = $(carousel);

    $('.sliderPics').html('');
    var i = 0
    if ($($(carousel).find('.js-gallery-slide')).find('img').length > 0) {
        $($(carousel).find('.js-gallery-slide')).find('img').each(function () {
            flag = true;
            i++;
            var myContent = "";
            $(this).parents('.js-gallery-slide').find(':not(.js-fancybox-media)').each(function () {
                if ($(this).is('h1,h2,h3,h4,h5,h6,p,a,text')) {
                    myContent += $(this)[0].outerHTML;
                }
            });

            var restofText = "<div style='display:none' class='js_Content'>" + myContent + "</div>";
            var sliderName = '<div class="sliderBox">GALLERY ' + i + '</div>';
            var videoLink = '';
            if ($(this).parent().children(".js-fancybox-media").length>0)
                videoLink = "<div style='display:none'>" + $(this).parent().children(".js-fancybox-media")[0].outerHTML + "</div>";

            var l = Line.replace('IMG', $(this)[0].outerHTML + restofText + videoLink + trashCan + sliderName);
            $('.sliderPics').append(l);

        });

        $('.sliderPic').each(function () {
            $(this).click(function () {
                showSlideDetail($(this));
            });
        });

        $('.sliderPics').find('img').addClass('u-block-hover__img opacity_50  img-thumbnail');
    }
    else {
        $(carousel).children('.js-slide').find('.backgroundIMG').each(function () {

            var newImage = $(this).css('background-image');
            newImage = newImage.replace('url("', '').replace('")', '');

            var myText = "";
            $(this).parent().find('.js_Content').each(function () {
                myText += $(this).html();
            });
            var restofText = "<div style='display:none' class='js_Content'>" + myText + "</div>";

            var l = Line.replace('IMG', '<img class="img-fluid g-max-width-170--md mx-auto" src="' + newImage + '" onClick="showSlideDetail($(this).parent())">' + restofText);
            $('.sliderPics').append(l);
        });
    }


    return true;
}


function addSlider() {
    var objCopyLast = $('.sliderPics').children().last()[0].outerHTML;
    
    $('.sliderPics').append($(objCopyLast)[0].outerHTML);
    var totalsliders = $('.sliderPics').children().length;
    $('.sliderPics').children().last().find('.sliderBox').html('SLIDER ' + totalsliders);

}


function showSliderMenu(object, sectionID) {

        closeWrapper();
        closeAllMenu();
        removeAllIcon(object);
        $(object).css('position', 'relative');
        selectedSectionId = sectionID;
        var blockId = getBlockId(selectedSectionId);
        loadSliderBlockOptions(blockId);

        if (loadSliderSlides()) {
            $('#viewSliderSetup').modal('show');
            resetSliderButtons();
        }
}


function loadSlider(SECTIONID, isDropped, blockId) {
    var elmentExists = $('#section_' + SECTIONID).find('.js-carousel').length == 1 || $('#content-iframe').contents().find('#section_' + SECTIONID).find('.js-carousel').length == 1;
    if (elmentExists) {
       
        var myHTML = $(sections[SECTIONID].block.text).find('.js-carousel')[0].outerHTML;
        sections[SECTIONID].sliderHTML = myHTML;
        if (sections[SECTIONID].block.translatedVersions != null) {
            if (sections[SECTIONID].block.translatedVersions.length > 0) {
                for (var i = 0; i < sections[SECTIONID].block.translatedVersions.length; i++) {
                    sections[SECTIONID].block.translatedVersions[i].sliderHTML = $(sections[SECTIONID].block.translatedVersions[i].text).find('.js-carousel')[0].outerHTML;
                }

            }
        }

    }



}

function SaveCarousel() {


    if ($('#_sliderOption').prop('checked') == false) {

        return saveGallery();
    }

    var newObjectDiv = $('<div class="js-carousel" data-infinite="true"' +
                                    'data-arrows-classes="u-arrow-v1 g-absolute-centered--y g-width-35 g-height-40 g-font-size-18 g-color-gray g-bg-white g-mt-minus-10"></div>');
    
    $(newObjectDiv).attr('data-autoplay', $('#_isAutoPlay').prop("checked"));
    if($('#_isAutoPlay').prop("checked"))
        $(newObjectDiv).attr('data-speed', $('#_AutoPlaySpeed').val());

    $(newObjectDiv).attr('data-rows', $('#_rows').val());
    $(newObjectDiv).attr('data-slides-show', $('#_columns').val());

    $(newObjectDiv).attr('data-arrow-left-classes', ArrowLeftClasses);
    $(newObjectDiv).attr('data-arrow-right-classes', ArrowRightClasses);

    if ($('#_navigationSlider').val() != 'Arrows') 
        $(newObjectDiv).removeClass('g-pb-20');

    if ($('#_navigationSlider').val() == 'Indicators') {
        $(newObjectDiv).attr('data-pagi-classes', PagiClasses);
        $(newObjectDiv).addClass('g-pb-20');
    }

    $(newObjectDiv).attr('_animation', $('#_animation').prop("checked")); 
    $(newObjectDiv).attr('_animationImageOption', $('#_animationImageOption').val());
    $(newObjectDiv).attr('_videoOption', $('#_videoOption').prop("checked"));
    $(newObjectDiv).attr('_navigationSlider', $('#_navigationSlider').val());

    var rowContent = "";
    // getBlockTemplatefromBlockId
    var blockId = getBlockId(selectedSectionId);
    var myBlock = blocks.find(x => x.id == blockId);
    var mytemplate = $(myBlock.HTML).html();
    var templateContent = $(mytemplate)[0].outerHTML;

    if (!$('#_videoOption').prop("checked"))
        templateContent = templateContent.replace(/ALLOW_VIDEO/g, '');
    
    if ($('#_animationImageOption').val() != '') {
        
        if (templateContent.includes('img-fluid'))
            templateContent = templateContent.replace(/img-fluid/g, 'img-fluid ' + $('#_animationImageOption').val());
    }
   

    for (var j = 0; j < ($('.sliderPics').children().length); j++) {
            var template = $(templateContent).clone();
            var newImage = $($('.sliderPics').children()[j]).find('img').attr('src');
            $(template).find('img').attr('src', newImage);



            var i = 0
            var mycontent = $($('.sliderPics').children()[j]).find('.js_Content').html();
            $(template).find('h1,h2,h3,h4,h5,h6,p,a,text').each(function () {
                if (!$(this).hasClass('js-fancybox-media')) {
                    $(this).replaceWith($(mycontent)[i].outerHTML);
                    i++;
                }
            });


        if (templateContent.includes('ALLOW_VIDEO')) {
            var myVideo = $($('.sliderPics').children()[j]).find('.js-fancybox-media').first();
            template = template[0].outerHTML.replace(/ALLOW_VIDEO/g, myVideo[0].outerHTML);
            template = $(template);
        }
        else {
            template = template[0].outerHTML.replace(/ALLOW_VIDEO/g, '');
            template = $(template);
        }

            mycontent = $(template)[0].outerHTML;
            rowContent += '<div class="js-slide">' + mycontent + "</div>";

    }



    $(newObjectDiv).html(rowContent);
    var HTML = $(newObjectDiv)[0].outerHTML;
    sections[selectedSectionId].sliderHTML = HTML;
    $('#section_' + selectedSectionId).find('.js-gallery').addClass('js-carousel').removeClass('js-gallery');
    $('#section_' + selectedSectionId).find('.js-carousel').replaceWith(HTML);
    $('#section_' + selectedSectionId).find('.js-gallery-section').addClass('js-carousel-section').removeClass('js-gallery-section');


    $('#section_' + selectedSectionId).find('.js-carousel').each(function () {
        try {
            $(this).slick('unslick');
            $.HSCore.components.HSCarousel.init($(this));
        }
        catch {
            try {
                $.HSCore.components.HSCarousel.init($(this));
            }
            catch (error)
            { }
        }
        
    });

    

    adjustSectionHeight(selectedSectionId);
    makeTextMode(selectedSectionId);
    saveSection(selectedSectionId);
}



function saveGallery() {

    var animation = $('#_animation').prop("checked");
    var animationImageOption = $('#_animationImageOption').val();
    var video = $('#_videoOption').prop("checked");
    var rows = $('#_rows').val();
    var columns = $('#_columns').val();
    var contentArray = [];
    var size = findRowsCount(columns);

    
    var blockId = getBlockId(selectedSectionId);
    var myBlock = blocks.find(x => x.id == blockId);
    var mytemplate = $(myBlock.HTML).html();
    var templateContent = $(mytemplate)[0].outerHTML;

    if (!$('#_videoOption').prop("checked")) 
        templateContent = templateContent.replace(/ALLOW_VIDEO/g, '');

    if ($('#_animationImageOption').val() != '') {
        if (templateContent.includes('img-fluid'))
            templateContent = templateContent.replace(/img-fluid/g, 'img-fluid ' + $('#_animationImageOption').val());
    }


    for (var j = 0; j < (columns * rows); j++) {
        console.log("(Gallery) loop limit " + (columns * rows));
        if ($('.sliderPics').children().length >= (j + 1)) {
            var template = $(templateContent).clone();
            var newImage = $($('.sliderPics').children()[j]).find('img').attr('src');
            $(template).find('img').attr('src', newImage);



            var i = 0;
            var mycontent = $($('.sliderPics').children()[j]).find('.js_Content').html();
            $(template).find('h1,h2,h3,h4,h5,h6,p,a,text').each(function () {
                if (!$(this).hasClass('js-fancybox-media')) {
                    $(this).replaceWith($(mycontent)[i].outerHTML);
                    i++;
                }
            });
            
            if (templateContent.includes('ALLOW_VIDEO')) {
                var myVideo = $($('.sliderPics').children()[j]).find('.js-fancybox-media').first();
                template = template[0].outerHTML.replace(/ALLOW_VIDEO/g, myVideo[0].outerHTML);
                template = $(template);
            }
            else {
                template = template[0].outerHTML.replace(/ALLOW_VIDEO/g, '');
                template = $(template);
            }

            mycontent = $(template)[0].outerHTML;
            
            var Column = '<div class="col-md-' + size + ' js-gallery-slide">' + mycontent + "</div>";
            contentArray.push(Column)
        } else {
            console.log("(Gallery) Condition else ");
        }
    }

    var columnContent = "";
    for (var i = 0; i < rows; i++) {
        var j = i * columns;
        columnContent += '<div class="row">';
        for (var x = 0; x < columns; x++) {

            columnContent += contentArray[x+j] ;
        }
        columnContent += '</div>';
    }

    columnContent = `<div  class='js-gallery' _animation="` + animation + `"   _animationImageOption="` + animationImageOption +
        `"  _videoOption="` + video + `"  data-rows="` + rows
        + `"  data-slides-show="` + columns + `">` + columnContent + "</div>";

    $('#section_' + selectedSectionId).find('.js-gallery,.js-carousel').replaceWith(columnContent);
    //$('#section_' + selectedSectionId).find('.js-gallery').replaceWith(columnContent);
        
    sections[selectedSectionId].sliderHTML = '';

    adjustSectionHeight(selectedSectionId);
    makeTextMode(selectedSectionId);
    saveSection(selectedSectionId);
}

var minimumRequirement = 0;


function countRequirements() {
    minimumRequirement = 0;
    if ($('#_sliderOption').prop('checked'))
        minimumRequirement = ($('#_rows').val() * $('#_columns').val()) + (2 * $('#_rows').val());
    else
        minimumRequirement = $('#_rows').val() * $('#_columns').val();

}
function updateRequirements() {
    countRequirements();
    var req = minimumRequirement;
    
    
    if ($('.sliderPics').children().length >= req)
        $('.useGallery.requirements').html(" Requires Min of " + req + " Slides");
    else
        $('.useGallery.requirements').html("<span class='text-danger'><i class='fas fa-exclamation-triangle fa-2x'></i> Requires Min of " + req + " Slides</span>");
}