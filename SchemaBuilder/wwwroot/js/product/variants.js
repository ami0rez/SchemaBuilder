/*
 * This file manages product variants
 * */

const htmlVariantAttributeLine = `
            <div style="padding-right: 15px;">
                <div class="form-group">
                    <label for="variantattributeValue_ATTID"> ATTRIBUTE_NAME</label>
                    <select class="form-control" id="variantattributeValue_ATTID"">
                    
                    </select>
                </div>
            </div>`;


const htmlVariantLine = `
     <tr class="gradeX ant-table-row  ant-table-row-level-0"  id='variantLine_MYID'>
        <td  style='padding:10px'> </td>
        <td><a href="../Product/Product?id=MYID">NAME</a></td>
        <td>VALUES</td>
        <td class="text-right">
            CONTROLS
        </td>
     </tr>
`;
const htmlVariantLineControls = `
    <a class="btn btn-slick text-primary"  onClick="showEditVariantModal('MYID');return false;"><i class="fas fa-pencil-alt"></i></a>
    <a class="btn btn-slick text-warning"  onClick="showDeleteVariantModal('MYID');return false;"><i class="fa fa-trash"></i></a>
`;
const htmlAddVariant = `
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="name">Title <font color="red">*</font></label>
                    <input type="text" class="form-control" id="variant_name" onchange="productVariant.name = $(this).val();">
                </div>
            </div>
            <div class="col-md-12">

                <div class="form-group">
                    <label for="note">Short Description</label>
                    <textarea 
                        id="variant_shortDescription" 
                        onchange="productVariant.shortDescription = $(this).val();"
                        class="form-control control-2-rows" 
                        placeholder="Enter short description ..." 
                        spellcheck="false"
                   ></textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="city">Price</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">$</span>
                        </div>
                        <input 
                            onchange="productVariant.price = $(this).val();"
                            type="text" 
                            class="form-control d-flex-grow" 
                            id="variant_price" 
                            data-inputmask="'mask':'$ 9{0,4}.9{0,2}'" 
                        />
                    </div>
                    
                </div>
            </div>
        </div>
        <div id="variantAttributeName" class='d-flex' style ='justify-content: flex-start;'>

        </div>
        <div id="galleryVariant"  class='d-flex' style ='justify-content: flex-start;'> </div>
        <div id="variantURL"> </div>
    `;
const htmlAddNewVariantButtons = `
     <div class="card-actionbar-row">
            <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
            <button type="button" class="ant-btn btn-cta  btn-secondary" onclick="saveVariant();">Save</button>
        </div>
    `;

var allVariantAttributeValues = [];

//#region Variant

/*
 * Handle variant change
 * */
async function handleVariantChange() {

    if ($('#hasVariant').prop('checked')) {
        if (product.selectedValues) {
            $('.hasVariant').show();
        
            $('#addGroupDiv').hide();
            $('.addNeworNotGroup').hide();
            $('.hasGroup').hide();
        } else {
            toastr.error('You must select default attributes first');
            $('#hasVariant').prop('checked', false);
        }
    } else {
        $('.hasVariant').hide();
        $('#addGroupDiv').show();
    }

}

/*
 * Populate product variants
 * */
async function populateProductVariants() {
    $('.hasVariant').hide();
    if (!product.productVariants) {
        return;
    }


    if (product.productVariants.length) {
        $('.hasVariant').show();

        $('#hasVariant').prop('checked', true);
        $('#hasVariant').prop('disabled', true);

        $('#addGroupDiv').hide();
        $('.addNeworNotGroup').hide();
        $('.hasGroup').hide();
    }

    for (var i = 0; i < product.productVariants.length; i++) {
        addVariantLine(product.productVariants[i]);
    }

}

/*
 * Populate product variants
 * */
async function populateProductGroupVariants() {
    $('.hasVariant').hide();
    if (!productGroup.products) {
        return;
    }

    if (productGroup.products.length) {
        $('.hasVariant').show();

        $('#hasVariant').prop('checked', true);
        $('#hasVariant').prop('disabled', true);

        $('#addGroupDiv').hide();
        $('.addNeworNotGroup').hide();
        $('.hasGroup').hide();
    }

    for (var i = 0; i < productGroup.products.length; i++) {
        addVariantLine(productGroup.products[i], false);
    }

}

/*
 * Show add variant modal
 * */
async function showAddVariantModal() {
    productVariant = {
        productId: product.id,
        name: product.name,
        shortDescription: product.shortDescription,
        price: product.price
    };
    $('#genericModalTitle').html('Add a New Variant');
    $('#modalBody').html(htmlAddVariant);
    $('#modalFooter').html(htmlAddNewVariantButtons);
    await initializeVariantAddModal();
    $('#genericModal').modal('show');
}

/*
 * Show edit variant modal
 * */
async function showEditVariantModal(variantId) {
    productVariant = product?.productVariants?.find(variant => variant.id == variantId);
    if (productVariant) {
        $('#genericModalTitle').html('Add a New Variant');
        $('#modalBody').html(htmlAddVariant);
        $('#modalFooter').html(htmlAddNewVariantButtons);
        await initializeVariantAddModal(variantId);
        $('#genericModal').modal('show');
    }
}

/*
 * Initialize variant add modal
 * */
var allVariantAttributes = [];
var selectedAttributes = [];
async function initializeVariantAddModal(variantId) {

    $('#variant_name').val(productVariant.name);
    $('#variant_shortDescription').val(productVariant.shortDescription);
    $('#variant_price').val(productVariant.price);
    generateVariantGallery();
    attachDropzoneToVariantFiles();
    var variantLine = '';

    $('#variantAttributeName').html('');
    selectedAttributes = [];
    var selectedValues = product.selectedValues;

    selectedValues.split(',').filter(x => x != '').forEach(x => {

        var myAttributeValue = attributeValues.find(y => y.id == x);
        selectedAttributes.push(attributes.find(y => y.id == myAttributeValue.productAttributeId));

    });


    for (var i = 0; i < selectedAttributes.length; i++) {
        var myAttribute = selectedAttributes[i];
        var myAttributeValues = attributeValues.filter(x => x.productAttributeId == myAttribute.id);

        var attName = myAttribute.name;
        var variantLine = htmlVariantAttributeLine.replace('ATTRIBUTE_NAME', attName);
        variantLine = variantLine.replace(/ATTID/g, myAttribute.id);

        $('#variantAttributeName').append(variantLine);

        loadDropdown(myAttributeValues, 'variantattributeValue_' + myAttribute.id, 'value');

    }

    if (variantId != null) {

        // Set Values in the Dropdown for variant
        var variant = product?.productVariants?.find(variant => variant.id == variantId);
        var variantValues = variant.selectedValues.split(',').filter(x => x != '');

        for (var i = 0; i < variantValues.length; i++) {

            var attValue = attributeValues.find(x => x.id == variantValues[i]);
            var att = attributes.find(x => x.id == attValue.productAttributeId);
            $('#variantattributeValue_' + att.id).val(variantValues[i]);
        }

    }

}

/*
 * Load variant attribute values
 * */
async function loadVariantAttributeValues(attributeId) {
    //var myPromise = getPromiseData("ProductAttributeValue", 'productAttributeId=' + attributeId);
    //await loadPromise(myPromise, "variantAttributeValueResponse");
    // allVariantAttributeValues = [...allVariantAttributeValues, ...variantAttributeValueResponse.items]
    loadDropdownWithOptions(variantAttributeValueResponse.items, 'variantattributeValue_' + attributeId, 'value', {
        includeEmpty: true,
        extraOptions: [{ colorRgb: 'Add Attribute Value', value: 'Add Attribute Value', id: AddAttributeOptionsVal }]
    });
}

/*
 * select variant attribute value and show it in input
 * */
function selectVariantAttributeValue(productVariant, attributeId) {
    if (!productVariant.id || !productVariant.selectedValues) {
        return
    }
    const variantAttributeValueResponseIds = variantAttributeValueResponse.items
        .filter(item => item.productAttributeId == attributeId)
        .map(item => item.id);
    const variantAttribteValueId = productVariant.selectedValues.split(',').find(valueId => variantAttributeValueResponseIds?.includes(valueId));

    $('#variantattributeValue_' + attributeId).val(variantAttribteValueId);
    handleVariantAttributeValueChange(attributeId)
}

/*
 * Handle variant  attribute value change
 * */
function handleVariantAttributeValueChange(attributeId) {
    const attributeValueId = $('#variantattributeValue_' + attributeId).val();
    const attributeValue = allVariantAttributeValues.find(attr => attr.id == attributeValueId);
    const attribute = variantAttributeResponse.items.find(attr => attr.id == attributeId);
    $('#colorSample_' + attributeId).css('background', 'unset');
    if ($('#variantattributeValue_' + attributeId).val() == 'ADD') {
        showVariantAttributeValueAddInputs(attribute);
        variantAttributeValue = {
            id: e7(),
            productAttributeId: attributeId
        }
        return;
    }

    if (attribute.isColor) {
        $('#variantColor_' + attributeValue.productAttributeId).show();
    } else {
        $('#variantDescription_' + attributeValue.productAttributeId).show();
    }

    $('.addNewAtt_' + attributeId).hide();
    $('#colorSample_' + attributeId).css('background', attributeValue?.colorRgb)
    $('#descriptionValue_' + attributeId).val(attributeValue?.description)
}

/*
 * Save variant
 * */
function saveVariant(nochecking) {

    if (!nochecking) {
        if (!validateVariantAdd(productVariant.id)) {
            return;
        }
    }

    if (productVariant.id) {
        product.productVariants = product.productVariants.map(variant => variant.id != productVariant.id ? variant : productVariant)
        updateVariantLine(productVariant);
    } else {
        productVariant.id = e7();

        product.productVariants = [...(product.productVariants ?? []), productVariant]
        addVariantLine(productVariant);
    }
    if (!modifiedEntity.includes('productVariants')) {
        modifiedEntity = [...(modifiedEntity ?? []), 'productVariants'];
    }
}

/*
 * Validate variant save
 * */
function validateVariantAdd(variantId) {
    if ($('#variant_name').val() == '' || $('#variant_name').val() == null) {
        toastr.error("Please enter a product name for this variant");
        return false;
    }
    var currentSelection = "";
    // Make sure no dropdown is left empty
    for (var i = 0; i < selectedAttributes.length; i++) {

        var selectedValue = $('#variantattributeValue_' + selectedAttributes[i].id).val();
        if (selectedValue == null || selectedValue == '') {
            toastr.error("Please select a  valid value for " + selectedAttributes[i].name);
            return false;
        }
        currentSelection += selectedValue + ",";
    }
    // Make sure current selection does not already exist
    console.log(currentSelection);

    if (product.selectedValues == currentSelection) {
        toastr.error("The attribute combination you have selected already exists. Please choose a different value for at least one of the attributes.");
        return false;
    }
    var flag = true;
    if (product.productVariants == null)
        product.productVariants = [];
    product.productVariants.forEach(x => {
        if (variantId == null) {
            if ((variantId == null && x.selectedValues == currentSelection) || (variantId != null && x.selectedValues == currentSelection && x.id != variantId)) {
                toastr.error("The attribute combination you have selected already exists. Please choose a different value for at least one of the attributes.");
                flag = false;
            }
        }
    }
    );
    if (flag) {
        productVariant.selectedValues = currentSelection;
        return true;
    }
    else
        return false;

}

function autoAddVariantCombo() {

    var currentSelection = ''
    if (product.price == null || product.name == null || product.shortDescription == null) {
        toastr.error("Please enter a valid  name, description and price at a minimum to auto create all variations of this product");
        return;
    }
    selectedAttributes = [];
    var selectedValues = product.selectedValues;

    selectedValues.split(',').filter(x => x != '').forEach(x => {

        var myAttributeValue = attributeValues.find(y => y.id == x);
        selectedAttributes.push(attributes.find(y => y.id == myAttributeValue.productAttributeId));

    });
    const attributeCombinations = selectedAttributes.map(attribute => {
        const attributeValuesForAttribute = attributeValues.filter(x => x.productAttributeId === attribute.id);
        return attributeValuesForAttribute.map(attributeValue => attributeValue.id);
    });
    const combinations = generateCombinations(attributeCombinations);


    if (product.productVariants == null)
        product.productVariants = [];

    combinations.forEach(combination => {
        var currentSelection = combination.join(",");
        

        if (product.selectedValues != currentSelection + ',') {
            const variantExists = product.productVariants.some(variant => variant.selectedValues === currentSelection);

            if (!variantExists) {
                var productVariant = {
                    id: e7(),
                    name: product.name,
                    shortDescription: product.shortDescription,
                    price: product.price,
                    selectedValues: currentSelection,
                    productId: product.id
                };
                product.productVariants.push(productVariant);
                addVariantLine(productVariant);
                if (!modifiedEntity.includes('productVariants')) {
                    modifiedEntity = [...(modifiedEntity ?? []), 'productVariants'];
                }
            }
        }
    });


}

function generateCombinations(arrays) {
    if (!arrays.length) return [[]];
    const [first, ...rest] = arrays;
    const recursiveCombinations = generateCombinations(rest);
    return first.flatMap(value => recursiveCombinations.map(combination => [value, ...combination]));
}


/*
 * Validate variant save
 * */
function selectedValuesEqual(value1, value2) {
    if (value1 != value2) {
        const value1Items = value1.split(',').filter(item => !!item);
        for (var index in value1Items) {
            if (!value2.includes(value1Items[index])) {
                return false;
            }
        }
    }
    return true;
}

/*
 * Fill variant selected values
 * */
function fillVariantSelectedValues() {

    const selectedValues = product.selectedValues.split(',').filter(attr => !!attr);
    productVariant.selectedValues = '';
    for (var i = 0; i < selectedValues.length; i++) {
        const attributeValue = allVariantAttributeValues.find(attr => attr.id == selectedValues[i]);
        if (!attributeValue) {
            continue;
        }
        const valueId = $('#variantattributeValue_' + attributeValue.productAttributeId).val();
        if (valueId) {
            productVariant.selectedValues = productVariant.selectedValues ? productVariant.selectedValues + ',' + valueId : valueId
        }
    }
}

/*
 * Generate variant line content for table
 * */
function generateVariantLineContent(variant, editable = true) {

    if (variant == null)
        return;
    var line = htmlVariantLine.replace('', '');

    if (editable) {
        line = line.replace('CONTROLS', htmlVariantLineControls);
    } else {
        line = line.replace('CONTROLS', '');
    }
    line = line.replace('NAME', variant.name);

    line = line.replace(/MYID/g, variant.id);

    var myLine = '';


    var variantValues = variant.selectedValues.split(',').filter(x => x != '');

    for (var i = 0; i < variantValues.length; i++) {

        var attValue = attributeValues.find(x => x.id == variantValues[i]);
        var att = attributes.find(x => x.id == attValue.productAttributeId);


        myLine += `<div class='row'><div class="col-md-6"> ${att.name} </div><div class='col-md-6'> `;

        if (att.isColor)
            myLine += `<div  class="colorSample" style="background-color: ` + attValue.colorRgb + `;"></div>`;
        else
            myLine += ` ${attValue.value} `;
        myLine += '</div></div>';

    }

    line = line.replace('VALUES', myLine);
    return line;
}

/*
 * Add variant line to table
 * */
function addVariantLine(variant, editable = true) {
    $('.hasVariant').show()

    const lineContent = generateVariantLineContent(variant, editable);
    if ($('#lastVariantLine').length > 0) {
        $('#lastVariantLine').before(lineContent);
    }
    else {
        $('#div_variants').append(lineContent);
    }

    $('#genericModal').modal('hide');
}

/*
 * Update variant line in table
 * */
function updateVariantLine(variant) {
    const lineContent = generateVariantLineContent(variant);
    $('#variantLine_' + variant.id).replaceWith(lineContent);
    $('#genericModal').modal('hide');
}

/*
 * Show attribute value inputs for add 
 * */
function showVariantAttributeValueAddInputs(attribute) {
    hidePreviousVariantAttributeValueAddInputs();
    $('.addNewAtt_' + attribute.id).show();
    if (attribute.isColor) {
        $('#variantColor_' + attribute.id).hide();
        $('#variantDescriptionAdd_' + attribute.id).hide();
    } else {
        $('#variantColorAdd_' + attribute.id).hide();
        $('#variantDescription_' + attribute.id).hide();
    }
}

/*
 * Hide previous attribute value inputs for add 
 * */
function hidePreviousVariantAttributeValueAddInputs() {
    if (variantAttributeValue.productAttributeId) {
        const variantAttributeValueResponseIds = allVariantAttributeValues
            .filter(item => item.productAttributeId == variantAttributeValue.productAttributeId)
            .map(item => item.id);
        const variantAttribteValueId = productVariant.selectedValues.split(',').find(valueId => variantAttributeValueResponseIds?.includes(valueId));
        const variantAttrValue = allVariantAttributeValues.find(item => item.id == variantAttribteValueId);
        const attribute = variantAttributeResponse.items.find(attr => attr.id == variantAttrValue.productAttributeId);
        hideVariantAttributeValueAddInputs(attribute, variantAttrValue);

        $('#variantattributeValue_' + variantAttributeValue.productAttributeId).val(variantAttribteValueId);
    }
}

/*
 * Hide attribute value inputs for add 
 * */
function hideVariantAttributeValueAddInputs(attribute, attributeValue) {
    $('.addNewAtt_' + attributeValue.productAttributeId).hide();

    if (attribute.isColor) {
        $('#variantColor_' + attributeValue.productAttributeId).show();
    } else {
        $('#variantDescription_' + attributeValue.productAttributeId).show();
    }

    $('#colorSample_' + attributeValue.productAttributeId).css('background', attributeValue.colorRgb)
    $('#descriptionValue_' + attributeValue.productAttributeId).val(attributeValue.description)
}

/*
 * Show variant confirm delete modal
 * */
function showDeleteVariantModal(variantId) {
    const variant = product.productVariants.find(variant => variant.id == variantId);
    const value = variant.name;

    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this product variant: ' + value + '?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="deleteVariantModal('` + variantId + `');">Confirm</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete Product Variant');
    $('#genericModal').modal('show');
}

/*
 * Delete variant value
 * */
function deleteVariantModal(id) {
    product.productVariants = product.productVariants.filter(variant => variant.id != id);
    if (!modifiedEntity.includes('productVariants')) {
        modifiedEntity = [...(modifiedEntity ?? []), 'productVariants'];
    }
    $('#genericModal').modal('hide')
    $(`#variantLine_${id}`).hide()

    if (!product.productVariants.length) {
        $('#hasVariant').prop('disabled', false);
    }
}

function deleteVariantImage(number, imageName)
{
    
    productVariant.images = productVariant.images.replace(imageName + ',', '');

    $('#number_' + number).remove();

}