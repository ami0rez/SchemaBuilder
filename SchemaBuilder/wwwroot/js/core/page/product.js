
var contentBlock = "";

var initial = true;
var isProductDetail = false;

function loadNativeBlockProduct(blockId, ProductDetail) {
    if (ProductDetail != null)
        isProductDetail = ProductDetail;

    selectedBlockId = blockId;
    var myBlock = blocks.find(x => x.id == selectedBlockId);
    initial = true;
    contentBlock = myBlock.HTML;
    productDefaultRows = myBlock.defaultRows;
    productDefaultColumns = myBlock.defaultColumns;
    showProductsByBlock(blockId);
}

function showProductsByBlock(blockId) {
    selectedBlockId = blockId;
    
    var databaseFilter = $('#_databaseFilter').val();
    var searchFlags = $('#_searchFlags').val();
    var myBlock = blocks.find(x => x.id == selectedBlockId);
    var flags = (myBlock.flag + ',' + databaseFilter).split(',');
    var filter = "";
  

    for (var i = 0; i < flags.length; i++) {
        var myflag = flags[i].split('=')[0];
        if (myflag == 'productType') {
            if (flags[i].split('=')[1] == 'subscription') {
                filter += "&showMinimumDetails=false";
                filter += '&' + myflag + '=4';
            }
            if (flags[i].split('=')[1] == 'product') {
                filter += "&showMinimumDetails=true";
                filter += '&' + myflag + '=0';
            }
        }
        else {
           
            if (flags[i] == 'Trial') {
                filter += "&isTrial=true";
            }

        }
    }
    
    filter += '&showOnHomePage=true';
    filter += "&published=true";
    filter += "&published=true";
    filter += "&clientId=" + clientId;
    filter += "&searchFlags=" + searchFlags;
    if (isProductDetail)
        filter += "&limit=" + 1;
    ajaxCall("GET", null, 'iProduct?1=1' + filter, null, null, loadProducts);
}





function loadProducts(data) {


    contentBlock = $(contentBlock);
    contentBlock = loadProductTemplate(contentBlock, contentBlock, false);
    var rows = 1;
    var columns = 1;

    if (!isProductDetail) {
        rows = contentBlock.attr('_rows');
        columns = contentBlock.attr('_columns');
    }

    var size = findRowsCount(columns);
    var HTMLcontent = "";
    if (isProductDetail)
        HTMLcontent = contentBlock.find('.js-products').html();
    else
        HTMLcontent = contentBlock.html();
    var totalProduct = 0;
    var rowAndColumns = columns * rows;
    var columnContent = "";
    var contentArray = [];
    if (data.length < rowAndColumns) {
        totalProduct = data.length;
    } else {
        totalProduct = rowAndColumns;
    }
    if (data.length > 0) {

        for (var j = 0; j < totalProduct; j++) {
            var hidePricing = false;
            if (data.length > j) {
                var myContent = HTMLcontent.replace(/@@NAME@@/g, data[j].name);
                myContent = myContent.replace(/@@DESCRIPTION@@/g, data[j].shortDescription);
                myContent = myContent.replace(/@@PRODUCTID@@/g, data[j].id);

                if (data[j].isRecurring) {
                    if (selectedPeriod = 'month')
                        myContent = myContent.replace(/@@PRICE@@/g, '$' + toMoney(data[j].recurringMonthlyPrice));
                    if (selectedPeriod = 'year')
                        myContent = myContent.replace(/@@PRICE@@/g, '$' + toMoney(data[j].recurringYearlyPrice));
                }
                else {
                    if (data[j].callForPrice)
                        myContent = myContent.replace(/@@PRICE@@/g, "Call For Price");
                    else {
                        if (data[j].price != null)
                            myContent = myContent.replace(/@@PRICE@@/g, '$' + toMoney(data[j].price));
                        else {
                            myContent = myContent.replace(/@@PRICE@@/g, "");
                            hidePricing = true;
                        }

                    }


                }

                myContent = $(myContent);
                if (hidePricing) {
                    {
                        myContent.find(".CartIcon").hide();
                        myContent.find(".WishlistIcon").hide();
                    }
                }

                if (contentBlock.attr('_showimage') == 'true') {
                    if (data[j].defaultImage != '') 
                        myContent.find('.mainImage').attr('src', data[j].defaultImage);
                }
                else
                    myContent.find('.mainImage').hide();

                var specLine = $(myContent).find('.productSpec');
                specLine = specLine[0].outerHTML;

                var myLimit = 0;
                if (contentBlock.attr('_featurelimited') == 'true') {

                    if (data[j].features != null) {

                        if (maxSpec >= data[j].features.length)
                            myLimit = data[j].features.length;
                        else
                            myLimit = maxSpec;
                    }
                }
                else {
                    if (data[j].features != null)
                        myLimit = data[j].features.length;
                    else
                        myLimit = 0;
                }

                for (var i = 0; i < myLimit; i++) {
                    var textLine = '';
                    if (data[j].features[i].name == null)
                        textLine = data[j].features[i].value;
                    if (data[j].features[i].name != null)
                        textLine = data[j].features[i].name + ' ' + data[j].features[i].value;

                    var myLine = specLine.replace('@@SPEC@@', textLine);
                    myContent.find('.productSpec').last().after(myLine);
                }
                myContent.find('.productSpec').first().remove();
                myContent = myContent[0].outerHTML;

                myContent = '<div class="col-md-' + size + ' " >' + myContent + "</div>";
                contentArray.push(myContent);

            }
        }

        if (Math.trunc(totalProduct / columns) == 0) {
            loopRows = rows;
        } else {
            loopRows = Math.trunc(totalProduct / columns) + 1;
        }
        for (var i = 0; i < loopRows; i++) {
            var j = 0;
            if (totalProduct < columns) {
                j = i * totalProduct;
            } else {
                j = i * columns
            }
            columnContent += '<div class="row">';
            if (columns > (totalProduct - (i * columns))) {
                for (var x = 0; x < (totalProduct - (i * columns)); x++) {
                    columnContent += contentArray[x + j];
                }
            } else {
                for (var x = 0; x < columns; x++) {
                    columnContent += contentArray[x + j];
                }
            }

            columnContent += '</div>';

        }



        var switchLine = '';

        if (contentBlock.attr('_showswitch') == 'true') {

            var _savingtext = '';
            if ($(contentBlock).attr('_savingtext') != null)
                _savingtext = $(contentBlock).attr('_savingtext');

            switchLine = '<div class="row" style="padding-bottom:25px;">';
            switchLine += `<div class="col-md-12" style="text-align:center"> <input type="checkbox" id="_paySwitch" class="checkbox"><label for="_paySwitch" class="switch"></label> Pay Yearly?  <span style="font-weight:bold;padding-left:30px;" id=savingText>` + _savingtext + `</span></div>`;
            switchLine += '</div>';
        }

        columnContent = '<div class="js-products">' + switchLine + columnContent + '</div>';
    }
    else {
        var sadface = "https://rentblobdev.blob.core.windows.net/rentcontainer/b3db8c9e-c77d-4f84-87a7-997669fd8bf3.png";
        columnContent = '<div class="js-products min-height-section" style="padding-bottom:50px;padding-top:50px;text-align:center"> <h1 class="d-inline-block g-brd-around g-brd-2 g-brd-black g-color-black g-font-weight-700 g-font-size-20 g-font-size-50--md text-uppercase g-line-height-1_2 g-letter-spacing-5 g-py-12 g-px-20 g-mb-50"><img src=' + sadface + ' class="img-fluid" style="max-width:30px;"> No products Found</h1> </div>'; 

    }

    if (initial) {
        var Xsection = rebuildSection(contentBlock[0].attributes) + "</section>";

        if (isProductDetail) {
            columnContent = columnContent.replace('js-products', 'js-products-detail');
            contentBlock.find('.js-products').replaceWith(columnContent);
            loadThisBlock(selectedBlockId, true, contentBlock[0].outerHTML);
        }
        else {
            Xsection = $(Xsection).html(columnContent);
            loadThisBlock(selectedBlockId, true, Xsection[0].outerHTML);
        }

    }
    else {
        // Reload all the contentBlock attributes: and then replace js-Product content
        $.each(contentBlock[0].attributes, function (index, attribute) {
            $('#section_' + selectedSectionId).find('section').attr(attribute.name, attribute.value);
        });
        if (isProductDetail) {
            columnContent = columnContent.replace('js-products', 'js-products-detail');
            $('#section_' + selectedSectionId).find('.js-products-detail').replaceWith(columnContent);
        }
        else {
            $('#section_' + selectedSectionId).find('.js-products').replaceWith(columnContent);
        }

        makeTextMode(selectedSectionId);
        saveSection(selectedSectionId);
    }

}

var selectedPeriod;
var maxSpec = 0;
var productDefaultRows = 0;
var productDefaultColumns = 0;

function loadProductTemplate(source, destination,setFields)
{
    var BG = source.attr('_BG');
    var textColor = source.attr('_textColor');
    var headerText = source.attr('_headerText');
    var buttonText = source.attr('_buttonText');
    var savingText = source.attr('_savingText');
    var featureLimited = source.attr('_featureLimited');
    var featureLimit = source.attr('_featureLimit');
    var showImage = source.attr('_showimage');
    var showSwitch = source.attr('_showSwitch');
    var rows = source.attr('_rows');
    var columns = source.attr('_columns');
    var animation = source.attr('_animation');
    var databaseFilter = source.attr('_databaseFilter');
    var searchFlags = source.attr('_searchFlags');
  
    // $('#_productRows').val();
    //var columns = $('#_productColumns').val();

    setDatabaseFilter(databaseFilter);
    setSearchFlags(searchFlags);

    if (rows == '' || rows == null)
        rows = productDefaultRows;
    destination.attr('_rows', rows);
    $('#_productRows').val(rows);

    if (columns == '' || columns == null)
        columns = productDefaultColumns;
    destination.attr('_columns', columns);
    $('#_productColumns').val(columns);

   

    maxSpec = 0;
    $('._featureLimited').hide();
    if (featureLimited != '' && featureLimited != null) {
        if (featureLimited == "true") {
            $('._featureLimited').show();
            $('#_featureLimited').prop('checked', true);
            $('#_featureLimit').val(featureLimit);

            if (featureLimit != '' && featureLimit != null) {
                maxSpec = featureLimit;
            }
        }
        else {
            $('._featureLimited').hide();
            $('#_featureLimited').prop('checked', false);
            $('#_featureLimit').val('0');

        }
    }
    if (BG != '' && BG != null) {
        destination.find('.product_bgcolor').attr('style', 'background-color: ' + BG + ' !important;');
        selectedItemValue["background-color"] = BG;
        $('.pallet.colorProductBGColor').each(function () {
            if ($(this).css('background-color') == BG) {
                $(this).addClass('selected');
            }
        });

    }
    if (textColor != '' && textColor != null) {
        destination.find('.product_textcolor').attr('style', 'color: ' + textColor + ' !important');
        selectedItemValue["color"] = textColor;
        $('.pallet.colorProductTextColor').each(function () {
            if ($(this).css('color') == textColor) {
                $(this).addClass('selected');
            }
        });
    }

    if (headerText != '' && headerText != null) {
        destination = destination[0].outerHTML;
        selectedPeriod = headerText;
        destination = destination.replace(/@@PERIOD@@/g, selectedPeriod);
        $('#_headerText').val(headerText);
        destination = $(destination);
    }
    else {
        selectedPeriod = "month";
        destination = destination[0].outerHTML;
        destination = destination.replace(/@@PERIOD@@/g, selectedPeriod);
        destination = $(destination);
    }

    if (buttonText != '' && buttonText != null) {
        destination.find('.pricingButton').html(buttonText);
        $('#_buttonText').val(buttonText);
    }
    else
        $('#_buttonText').val('');

    if (savingText != '' && savingText != null) {
        destination.attr('_savingText', savingText);
        $('#_savingTextLabel').html(savingText);
        $('#_savingText').val(savingText);

    }
    else {
        $('#_savingText').val('');
        $('#_savingTextLabel').html('');
    }

    if (animation != '' && animation != null) {
        $('#_animationProductOption').val(animation);

        var myImage = destination.find('.mainImage');
        if (myImage.length > 0) {
        {
            myImage.parent().addClass('u-block-hover');
            myImage.removeClass(function (index, className) {
                return (className.match(/(^|\s)u-block-hover__main\S+/g) || []).join(' ');
                    });
                myImage.addClass(animation);
             }
        }       

    }
    else
        $('#_animationProductOption').val('');

    if (showImage != '' && showImage != null) {
        if (showImage == "true") 
            $('#_showImage').prop('checked', true);
    }
    else {
        if (source.find('.mainImage').length > 0) {
            $('#_showImage').prop('checked', true);
            destination.attr('_showImage', true);
        }

    }
    $('._mySwitch').hide();
    if (showSwitch != '' && showSwitch != null) {
        if (showSwitch == "true") {
            $('#_showSwitch').prop('checked', true);
            $('#_mySwitch').show();
            $('._mySwitch').show();
            destination.attr('_showswitch', true);
        }
        else {
            $('#_mySwitch').hide();
            destination.attr('_showswitch', false);
        }
    }
    


    return destination;
}


function showProductMenu(object, sectionID,ProductDetail) {


    selectedSectionId = sectionID;
    closeAllMenu();
    var blockId = getBlockId(sectionID);

    var myBlock = blocks.find(x => x.id == blockId);

    if (ProductDetail != null) {
        isProductDetail = ProductDetail;
        productDefaultRows = 1;
        productDefaultColumns = 1;
        $('._columnsOption').hide();
        $('._rowsOption').hide();
    }
    else {
        productDefaultRows = myBlock.defaultRows;
        productDefaultColumns = myBlock.defaultColumns;

        if (myBlock.maxColumns != null) {
            if (myBlock.maxColumns == 1) 
                $('._columnsOption').hide();
            else
                $('._columnsOption').show();
            showColumnsOption(myBlock.maxColumns);
        }
        if (myBlock.maxRows != null) {
            if (myBlock.maxRows == 1) 
                $('._rowsOption').hide();
             else
                $('._rowsOption').show();
            showRowsOption(myBlock.maxRows);
        }
    }

      

    
    var preview = "";
    if (isProductDetail)
        preview = $(myBlock.HTML).find('.js-products').html();
    else
        preview = $(myBlock.HTML).html();

        $('#_productBackgroundColor').html(colorPallet.replace(/colorButton/g, 'colorProductBGColor'));
        $('#_productTextColor').html(colorPallet.replace(/colorButton/g, 'colorProductTextColor'));

        var source = $('#section_' + sectionID).find('section');
        preview = $(preview);
        preview = loadProductTemplate(source, preview,true);
        preview = preview[0].outerHTML;
        preview = preview.replace(/@@/g, '');


        $('#_previewProduct').html(preview);


        var previewName = 'background-color';
        $('.pallet.colorProductBGColor').each(function () {
            $(this).mouseover(function () {
                SelectedCSSObject = $('#_previewProduct').find('.product_bgcolor');
                if (!isClicked)
                    previewCSSFeature(this, previewName);
                isClicked = false;
            });
            $(this).mouseout(function () {
                SelectedCSSObject = $('#_previewProduct').find('.product_bgcolor');
                if (!isClicked)
                    unpreviewCSSFeature(previewName);
            });
            $(this).click(function () {
                isClicked = true;
                SelectedCSSObject = $('#_previewProduct').find('.product_bgcolor');
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



        var previewName2 = 'color';
        $('.pallet.colorProductTextColor').each(function () {
            $(this).mouseover(function () {
                SelectedCSSObject = $('#_previewProduct').find('.product_textcolor');
                if (!isClicked)
                    previewCSSFeature(this, previewName2);
                isClicked = false;
            });
            $(this).mouseout(function () {
                SelectedCSSObject = $('#_previewProduct').find('.product_textcolor');
                if (!isClicked)
                    unpreviewCSSFeature(previewName2);
            });
            $(this).click(function () {
                isClicked = true;
                SelectedCSSObject = $('#_previewProduct').find('.product_textcolor');
                if ($(this).hasClass('selected')) {

                    $(this).parent('.GroupOptions').children().removeClass('selected');
                    $('.fontButton.' + previewName2.replace('-', '') + 'Button').removeClass('selected');
                    selectedItemValue[previewName2] = "unset";
                    resetCSSFeature(previewName2);
                }
                else {
                    $(this).parent('.GroupOptions').children().removeClass('selected');
                    selectedItemValue[previewName2] = $(this).css(previewName2);  // Save the selected Element Value
                    $('.fontButton.' + previewName2.replace('-', '') + 'Button').removeClass('selected');
                    $(this).addClass('selected');
                    previewCSSFeature(this, previewName2);
                }
                isClicked = false;
            });
        });

    

    $('#_animationProductOption').on('change', function () {

        
        $('#_previewProduct').find('.mainImage').removeClass(function (index, className) {
            return (className.match(/(^|\s)u-block-hover__main\S+/g) || []).join(' ');
        });
        if ($(this).val() != '') {
            if ($('#_previewProduct').find('.mainImage').parent().hasClass('u-block-hover') == false)
                $('#_previewProduct').find('.mainImage').parent().addClass('u-block-hover');
            $('#_previewProduct').find('.mainImage').addClass($(this).val());
        }


    })

        $('#viewProductSetup').modal('show');

}


function EditFlags(value) {

    var flags = $('#_searchFlags').val();

    if (flags == null)
        flags = '';
    if (flags.includes(value))
        flags = flags.replace(value + ',', '');
    else
        flags += value + ',';

    $('#_searchFlags').val(flags);
}

function saveProductMenu() {

    var blockId = getBlockId(selectedSectionId);
    var myBlock = blocks.find(x => x.id == blockId);
    // Build the attributes
    // $('#_previewProduct').html(preview);

    var BG = $('.pallet.colorProductBGColor.selected').css('background-color');
    var TextColor = $('.pallet.colorProductTextColor.selected').css('color');
    var actionButton = $('#_buttonText').val();
    var savingText = $('#_savingText').val();
    var headerText = $('#_headerText').val();
    var buttonText = $('#_buttonText').val();
    var featureLimited = $('#_featureLimited').prop('checked');
    var featureLimit = $('#_featureLimit').val();
    var showImage = $('#_showImage').prop('checked');
    var rows = $('#_productRows').val();
    var columns = $('#_productColumns').val();
    var animation = $('#_animationProductOption').val();
    var showSwitch = $('#_showSwitch').prop('checked');
    
    var databaseFilter = $('#_databaseFilter').val();
    var searchFlags = $('#_searchFlags').val();

    var blockHTML = $(myBlock.HTML);
    blockHTML.attr('_BG', BG);
    blockHTML.attr('_textColor', TextColor);
    blockHTML.attr('_headerText', headerText);
    blockHTML.attr('_buttonText', buttonText);
    blockHTML.attr('_savingText', savingText);
    blockHTML.attr('_featureLimited', featureLimited);
    blockHTML.attr('_featureLimit', featureLimit);
    blockHTML.attr('_showImage', showImage);
    blockHTML.attr('_rows', rows);
    blockHTML.attr('_columns', columns);
    blockHTML.attr('_animation', animation);
    blockHTML.attr('_showswitch', showSwitch);
    blockHTML.attr('_databaseFilter', databaseFilter);
    blockHTML.attr('_searchFlags', searchFlags);

    contentBlock = blockHTML[0].outerHTML;
    showProductsByBlock(blockId);
    initial = false;
    clearDatabaseFilter();
    clearSearchFlags();
    closeProductMenu();
}


function closeProductMenu() {
    $('#viewProductSetup').modal('hide');
}





function clearDatabaseFilter() {
    var currentValue = '';
    $('input[name="_filterValue"]:checked').each(function () {
        $(this).prop('checked', false);
    });
    $('#_databaseFilter').val('');
}

function clearSearchFlags() {
    var currentValue = $('#_searchFlags').val();
    $('#_searchFlags').val('');
    var currentValueSplit = currentValue.split(',');
    for (var i = 0; i < currentValueSplit.length; i++) {
        if (currentValueSplit[i].length > 0) {
            $('#id_' + currentValueSplit[i]).prop('checked', false);
        }
    }
}

function getDatabaseFilter() {
    var currentValue = '';
    $('input[name="_filterValue"]:checked').each(function () {
        currentValue += this.value + ',';
    });
    $('#_databaseFilter').val(currentValue);
}

function setDatabaseFilter(currentValue) {
    
    if (currentValue == null)
        currentValue = '';
    var currentValueSplit = currentValue.split(',');
    for (var i = 0; i < currentValueSplit.length; i++) {
        if (currentValueSplit[i].length > 0) {
            $('input[name="_filterValue"][value="' + currentValueSplit[i] + '"]').prop('checked', true);
        }
    }

    $('#_databaseFilter').val(currentValue);
}

function setSearchFlags(currentValue) {

    if (currentValue == null)
        currentValue = '';
    $('#_searchFlags').val(currentValue);
    var currentValueSplit = currentValue.split(',');
    for (var i = 0; i < currentValueSplit.length; i++) {
        if (currentValueSplit[i].length > 0) {
            $('#id_' + currentValueSplit[i]).prop('checked', true);
        }
    }

   
}