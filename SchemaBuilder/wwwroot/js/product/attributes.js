/*
 * This file manages product attribues
 * */

var attribute = {};
var attributeValueResponse = {};
var attributeValue = {};
var editingAttributeValue = {};
var attributes = [];
var attributeValues = [];
var attributeValuesSelectedId = '';
var attributeData = {}
var newAttributeLink = {};
const AddAttributeOptionsVal = 'ADD';
var myattValues = [];

var htmlAddAttributeName = `
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="city">Name</label>
                    <input type="text" class="form-control" id="attribute_name" onchange="attribute.name=this.value" />
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label for="city">Description</label>
                    <input type="text" class="form-control" id="attribute_description" onchange="attribute.description=this.value" />
                </div>
             </div>
            <div class="col-md-12">
                <div style="padding-bottom:20px;">
                    <input type="checkbox" id="attribute_isColor" class="checkbox" onChange="attribute.isColor = $('#attribute_isColor').prop('checked');checkRGB()" />
                    <label for="attribute_isColor" class="switch"></label>
                    is this attribute a color?
                </div>
            </div>
            <div class="col-md-12">
                <div style="padding-bottom:20px;">
                    <input type="checkbox" id="attribute_allowFilter" class="checkbox" onChange="attribute.allowFilter = $('#attribute_allowFilter').prop('checked'); " />
                    <label for="attribute_allowFilter" class="switch"></label>
                    Is this attribute a filter?
                </div>
            </div>
            <div class="col-md-12">
                <div style="padding-bottom:20px;">
                    <label for="city">All available value(s)</label>
                    <input type="text" class="form-control" id="attribute_values" data-role="tagsinput" />
                </div>
            </div>
            <div class="col-md-12 hasRGB hide">
                <div style="padding-bottom:20px;">
                    <label for="addColor">Color(s) RGB</label>
                    <div id='addColor' style="border: 1px solid rgba(12, 12, 12, 0.12);padding: 15px;    margin-top: 10px;    font-size: 14px !important;"></div>
                </div>
            </div>


        </div>
    `;
var htmlAddAttributeNameButtons = `
    <div class="card-actionbar-row">
            <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
            <button type="button" class="ant-btn btn-cta  btn-secondary" onclick=" addAttribute();">Add Attribute</button>
    </div>
    `;
var htmlAddAttributeValue = `
          <div class="row">
            <div class="col-md-12">
                <div class="row add-attribute-value">
                    <div id="attribueValue" class="col-md-12">
                        <div class="form-group">
                            <label for="city">Attribute Value</label>
                            <input type="text" class="form-control" id="attributeValue_newvalue" onchange="attributeValue.value=this.value" />
                        </div>
                    </div>
                    <div id="attribueColorRgb" class="col-md-12">
                        <div class="form-group newAttributeValue colorRgb">
                            <label for="city">Associated Color RGB (Optional)</label>
                            <input type="text" class="form-control" id="attributeValue_colorRgb" onchange="attributeValue.colorRgb=this.value" />
                        </div>
                    </div>
                    <div id="attribueDescription" class="col-md-12">
                        <div class="form-group colorRgb">
                            <label for="city">Description</label>
                            <input type="text" class="form-control" id="attributeValue_Description" onchange="attributeValue.description=this.value" />
                        </div>
                    </div>
                </div>
        </div>
     </div>
    `;
var htmlAddAttributeValueButtons = `
      <div class="card-actionbar-row">
          <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
          <button type="button" class="ant-btn btn-cta  btn-secondary" onclick="addAttributeValue('{{id}}');">Add Attribute Value</button>
      </div>
    `;
var htmlAttributeValueline = `
     <tr style='line-height: 3rem;'  id=line_MYID>
        <td  style='padding:10px'><i class="fas fa-list" title="Attribute"></i></td>
        <td>NAME</td>
        <td  id='AttributeSelectedValue_MYID'>VALUE</td>
        <td  id='AttributeSelectedValueColor_MYID'>COLORRGB</td>
        <td  class="text-right">
            <a id='AttributeSelectedValueEdit_MYID' class="btn btn-slick text-primary " onClick="loadEditAttributeValueModal('ATTRIBUTE_ID','ATTRIBUTE_VAL_ID');return false;"><i class="fas fa-pencil-alt"></i></a>
            <a class="btn btn-slick text-warning products_execute"  onClick="showAttributeConfirmDeleteModal('MYID','VALUE');return false;"><i class="fa fa-trash"></i></a></td>
     </tr>
    `;
var htmlEditAttributeValueLine = `
    <div class='row card-body'>
            <div class="col-md-12">
                <div class="form-group newAttributeValue">
                    <label for="city">Select a value</label>
                    <select class="form-control" id="editattributeValue_id" onchange="handleEditAttributeValueChnage()">
                        <option></option>
                    </select>
                </div>
            </div>
            <div id="attribueValueContent" class="col-md-12  add-attribute-value">
                <div class="form-group">
                    <label for="city">New Value</label>
                    <input type="text" class="form-control" id="editAttributeValue_newvalue" onchange="attributeValue.value=this.value" />
                </div>
            </div>
            <div id="attribueColorRgbContent" class="col-md-12  add-attribute-value">
                <div class="form-group newAttributeValue colorRgb">
                    <label for="city">Color RGB</label>
                    <input type="text" class="form-control" id="editAttributeValue_colorRgb" onchange="attributeValue.colorRgb=this.value" />
                </div>
            </div>
            <div id="attribueDescription" class="col-md-12">
                <div class="form-group colorRgb">
                    <label for="city">Description</label>
                    <input type="text" class="form-control" id="editAttributeValue_Description" onchange="attributeValue.description=this.value" disabled/>
                </div>
            </div>
        </div>
    </div>
`;
var htmlEditAttributeValueLineButtons = `
    <div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide');">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-primary" onclick="editAttributeValue('ProductAttributeValueID');">Edit Value</button>
    </div>
`;



function checkRGB(){
    if ($('#attribute_isColor').prop('checked'))
        $('.hasRGB').removeClass('hide');
    else
        $('.hasRGB').addClass('hide');
}

async function showProductAttributesTables(product) {
    $('.hasAttributesData').show();
    $('#div_AttributeValue').empty();
    const productAttributes = product.selectedValues?.split(',')

    if (productAttributes?.length && productAttributes?.some(prodData => !!prodData)) {
       // myattValues= await loadSelectedAttributeValues();


        if (!$('#hasData').prop('checked')) {
            $('#hasData').prop('checked', true);
            toggleHasData(true);
        }

        for (var i = 0; i < productAttributes.length; i++) {
            if (productAttributes[i]) {
                addAttributeToTable(productAttributes[i]);
            }
        }
    }
}

function loadSelectedAttributeValues(attributeId) {
    return attributeValues.filter(x => x.productAttributeId == attributeId)   
}

/*
 * Populate attribute dropDown
 * */
async function populateAttributeDropDown() {
    if (!$('#genericModal').length)
        loadGenericModalInPage();
    $(`#attributeId`).on('change',function() {
        if ($(this).val() == 'ADD')
            LoadAddAttribute();
        else {
            showAttributeValues();
        }
    });

    $('#attributeValue_id').on('change', function () {
        if ($(this).val() == 'ADD')
            addAttValueModal($('#attributeId').val())
        else
            loadAttributeValueById($(this).val())
    });

    loadDropdownWithOptions(attributes, 'attributeId', 'name', {
        includeEmpty: true,
        extraOptions: [{ name: 'Add Attribute', id: AddAttributeOptionsVal }]
    });
    
}


/*
 * Load attribute values
 * */
async function loadAttributeValues(attributeId) {
    
    var myAttributeValues = attributeValues.filter(x => x.productAttributeId == attributeId);
    loadDropdownWithOptions(myAttributeValues, 'attributeValue_id', 'value', {
        includeEmpty: true,
        extraOptions: [{ colorRgb: 'Add Attribute Value', value: 'Add Attribute Value', id: AddAttributeOptionsVal }]
    });

}


/*
 * Load attribute value by id
 * */
function loadAttributeValueById(id) {
    $('.colorRgb').hide();
    $('#colorSample').css('background-color', 'white');
    var myvalue = attributeValues.find(x => x.id == id);
    if (myvalue != null) {
        if (myvalue?.colorRgb != '' && myvalue?.colorRgb != null) {
            $('#colorSample').css('background-color', myvalue.colorRgb);
            $('.colorRgb').show();
        }
    }
}



/*
 * Load attiburte value edit modal
 * */
function addAttValueModal(attributeId) {


    $('#genericModalTitle').html("Add New Value");
    $('#modalBody').html(htmlAddAttributeValue);
    $('#modalFooter').html(htmlAddAttributeValueButtons.replace('{{id}}'));
    $('#genericModal').modal('show');

    
    var att = attributes.find(x => x.id == attributeId);
    if (att.isColor) {
        $('#attribueDescription').hide();
        $('#attributeValue_colorRgb').colorpicker();
    }
    else {
        $('#attribueDescription').show();
        $('#attribueColorRgb').hide();
    }
    setTimeout(() => {
        $('#genericModal').modal('show');
    }, 500)
}


/*
 * Load attiburte edit modal
 * */
function LoadAddAttribute() {

    attribute = {};
    $('#genericModalTitle').html("Add New Attribute");
    $('#modalBody').html(htmlAddAttributeName);
    $('#attribute_values').tagsinput();
    
    $('#attribute_values').on('change', function () {
        var list = $('#attribute_values').val().split(',');
        var i = 0;
        if (attribute.isColor) {
            $('#addColor').html('');
            list.filter(x => x != '').forEach(x => {
                var template = `
                <div class="row add-attribute-value">
                    <div id="attribueValue" class="col-md-6">
                        <div class="form-group">
                            <label for="city">Color</label>
                            <p style="margin-top: 19px;">VALUE</p>
                        </div>
                    </div>
                    <div id="attribueColorRgb" class="col-md-6">
                        <div class="form-group newAttributeValue colorRgb">
                            <label for="city">Associated Color RGB (Optional)</label>
                            <input type="text" class="form-control attributeValue_colorRgb" id="color_ID" data-colorpicker-guid="2">
                        </div>
                    </div>
                    
                </div>`;
                var line = template.replace('VALUE', x).replace("ID", i);
                $('#addColor').append(line);
                $('.attributeValue_colorRgb').colorpicker();
                i++;
            });
        }

    });

    $('#modalFooter').html(htmlAddAttributeNameButtons);
    $('#genericModal').modal('show');
}

/*
 * add attribute
 * */
function addAttribute() {
    attribute.id = e7();
    attribute.clientId = cookieUser.clientId;
    MODE = "ADD";
    genericSave(
        attribute,
        'ProductAttribute',
        [{ fieldname: 'name' }],
        () => {
            
            addAttributeToDropdown(attribute)
            saveAttValues($('#attribute_values').val(), attribute.isColor);
            $('#genericModal').modal('hide');
            
            
        });


    function saveAttValues(valueLists,isColor) {
        var values = valueLists.split(',').filter(x => x != '');
        
        for (var i = 0; i < values.length; i++) {
            $('.addAttributeValue').show()
            attributeValue.id = e7();
            attributeValue.value = values[i];
            attributeValue.productAttributeId = attribute.id;
            if (isColor) {
                var colorValue = $('#color_' + i).val();
                attributeValue.colorRgb = colorValue;
            }
            else
                attributeValue.colorRgb = null;

            var att = JSON.parse(JSON.stringify(attributeValue));
            attributeValues.push(att);
            addAttributeValueToDropdown(att);
            genericSave(
                attributeValue,
                'ProductAttributeValue',
                [], () => {
                    console.log('done');
            });
        }
        $(`#attributeValue_id`).append(`<option value='ADD'>Add new value</option>`);

        
    }


    function addAttributeToDropdown(attribute) {

        attributes.push(JSON.parse(JSON.stringify(attribute)));
        $(`#attributeId option:last`).before(`<option value='${attribute.id}'>${attribute.name}</option>`);
        $(`#attributeId`).val(attribute.id);
    }


    function addAttributeValueToDropdown(attributeV) {

        $(`#attributeValue_id`).append(`<option value='${attributeV.id}'>${attributeV.value}</option>`);
        $(`#attributeValue_id`).val(attributeV.id);
        if (attributeV.colorRgb != null && attributeV.colorRgb != '')
            loadAttributeValueById(attributeV.id);
        else
            $('.colorRgb').hide();
    }

}


function showAttributeValues() {

    var id = $('#attributeId').val();
    $('.addAttributeValue').show();

   
    if (id != 'ADD') {
        loadAttributeValues(id);
        var att = attributes.find(x => x.id == id);
        if (!att.isColor)
            $('.colorRgb').hide();
        else {
            $('#colorSample').css('background-color', 'white');
            $('.colorRgb').show();
        }

    }
}


/*
 * save attribute
 * */
function saveProductAttribute(productkey) {
    const currentProduct = eval(productkey);
    selectedAttributeValueId = $('#attributeValue_id').val();

    if (currentProduct.selectedValues == null)
        eval(`${productkey}.selectedValues = ""`);

    eval(`${productkey}.selectedValues += '${selectedAttributeValueId},'`);
    closeAddAttributeValue();
    addAttributeToTable(selectedAttributeValueId);
}

function addAttributeToTable(attribueValueId) {
    const attrValue = attributeValues.find(attr => attr.id === attribueValueId);
    if (attrValue) {
        const attribute = attributes.find(attr => attr.id == attrValue.productAttributeId);
        var name = "";
        name = attribute.name;

        var line = htmlAttributeValueline.replace(/NAME/g, name ?? '');
        line = line.replace(/MYID/g, attribueValueId);
        line = line.replace(/VALUE/g, attrValue.value);
        line = line.replace(/COLORRGB/g, (attrValue.colorRgb == null || attrValue.colorRgb == '') ? "" : generateRgbColorBox(attrValue.colorRgb));
        line = line.replace(/EDIT/g, "edit");
        line = line.replace(/ATTRIBUTE_VAL_ID/g, attrValue.id);
        line = line.replace(/ATTRIBUTE_ID/g, attrValue.productAttributeId);
        $('#div_AttributeValue').append(line);
        
    }
}


/*
 * add attribute value
 * */
function addAttributeValue(tagId) {

  

    if (attributeValue.productAttributeId == null) {
        toastr.error("You must select an attribute");
        return;
    }
    attributeValue.id = e7();
    MODE = "ADD";
    genericSave(
        attributeValue,
        'ProductAttributeValue',
        [],
        () => {
            MODE = "ADD";
            addNewAttributeValueToDropdown(tagId, attributeValue)
        });
    $('#genericModal').modal('hide');
}


/*
 * Close add attribute value
 * */
function closeAddAttributeValue() {
    
    $('.hasAttributesData').show();
    $('#addData').val('');
    
    $('#modalEditValue').modal('hide');

}



/*  EDIT ATTRIBUTE VALUE */


/*
 * Load edit attribute value modal
 * */
function loadEditAttributeValueModal(id, attributeValueId) {

    if (attributeValuesSelectedId != attributeValueId) {
            myattValues = loadSelectedAttributeValues(attributeValueId);
    }
    const body = htmlEditAttributeValueLine.replace('ProductAttributeValueID', attributeValueId);
    const buttons = htmlEditAttributeValueLineButtons.replace('ProductAttributeValueID', attributeValueId);


    $('#genericModalTitle').html("Edit Product Attribute");
    $('#modalBody').html(body);
    $('#modalFooter').html(buttons);
    $('#genericModal').modal('show');

    showAttributeValueProperties(attributeValueId, 'edit');
    $('#editAttributeValue_colorRgb').colorpicker();
    $('.add-attribute-value').hide();


}

/*
 * Show attribute value properties
 * */
function showAttributeValueProperties(id) {
    attributeValue = attributeValues.find(attrVal => attrVal.id == id);
    attribute = attributes.find(attr => attr.id == attributeValue.productAttributeId);

    editingAttributeValue = JSON.parse(JSON.stringify(attributeValue));

    if (attributeValue) {
        loadDropdownWithOptions(attributeValues, 'editattributeValue_id', 'value', {
            extraOptions: [{ value: 'Add Attribute Value', id: AddAttributeOptionsVal }]
        });
        $('#editattributeValue_id').val(attributeValue.id)
        if (attribute.isColor) {
            $('#attribueColorRgbContent').show();
            $('#attribueDescription').hide();
            $('#editAttributeValue_Description').val('')
            $('#attributeValue_colorRgb').colorpicker();
        } else {
            $('#attribueColorRgbContent').hide();
            $('#attribueDescription').show();
            $('#editAttributeValue_Description').val(attributeValue.description)
        }
    }
}

/*
 * Show attribute value properties
 * */
function handleEditAttributeValueChnage() {
    if ($('#editattributeValue_id').val() == 'ADD') {
        $('.add-attribute-value').show();
        attributeValue = {};
        $('#editAttributeValue_Description').val('')
        $("#editAttributeValue_Description").prop("disabled", false);
        attribute = attributes.find(attr => attr.id == editingAttributeValue.productAttributeId);
        if (attribute.isColor) {
            $('#attribueColorRgbContent').show();
        } else {
            $('#attribueColorRgbContent').hide();
        }
    } else {
        attributeValue = attributeValues.find(attrVal => attrVal.id == $('#editattributeValue_id').val());
        attributeValue.oldId = editingAttributeValue.id;
        $('#editAttributeValue_Description').val(attributeValue.description)
        $("#editAttributeValue_Description").prop("disabled", true);
    }
}

/*
 * Edit attribute value
 * */
function editAttributeValue() {
    if ($('#editattributeValue_id').val() == 'ADD') {
        attributeValue.id= e7();
        attributeValue.oldId = editingAttributeValue.id;
        attributeValue.productAttributeId = editingAttributeValue.productAttributeId;
        var initailMode = MODE;
        MODE = "ADD";
        genericSave(
            attributeValue,
            'ProductAttributeValue',
            [{ fieldname: 'productAttributeId' }],
            () => {
                MODE = initailMode;
                updatedShowProductAttributeValue(attributeValue);
            });
    } else {
        if (!attributeValue.id) {
            toastr.error('Select a valid value in order to continue');
            return;
        }
        updatedShowProductAttributeValue(attributeValue);
    }
}

/*
 * Updated show product attribute value
 * */
function updatedShowProductAttributeValue(attributeValue) {
    const attribute = attributes.find(attr => attr.id == attributeValue.productAttributeId);
    if (product.selectedValues) {
        product.selectedValues = product.selectedValues?.replace(attributeValue.oldId, attributeValue.id)
    } else {
        product.selectedValues = (attributeValue.id ?? attributeValue.oldId) + ";";
    }
    $('#AttributeSelectedValue_' + attributeValue.oldId).html(attributeValue.value);
    if (attribute.isColor) {
        $('#AttributeSelectedValueColor_' + attributeValue.oldId).html(generateRgbColorBox(attributeValue.colorRgb));
    }
    $('#genericModal').modal('hide');
}

/*
 * Generate rgb color box
 * */
function generateRgbColorBox(rgb) {
    return "<div class='colorSample' style='background-color: " + rgb + ";'></div> ";
}

/*
 * Show Attribute confirm delete modal
 * */
function showAttributeConfirmDeleteModal(id, value) {
    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this product attribute value: ' + value +'?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="deleteAtributeValue('` + id + `');">Confirm</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete Attribue Value');
    $('#genericModal').modal('show');
}

/*
 * Delete atribute value
 * */
function deleteAtributeValue(id) {
    product.selectedValues = product.selectedValues?.replace(id+',', '');
    $('#genericModal').modal('hide')
    $(`#line_${id}`).hide()
}