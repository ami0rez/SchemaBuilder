/*
 * This file manages product specification
 * */

const AddGroupOptionsVal = 'ADD';

const htmlFeatureLine = `
     <tr class="gradeX ant-table-row  ant-table-row-level-0"  id='feature_MYID'>
        <td  style='padding:10px'><i class="fas fa-star" title="Feature"></i></td>
        <td>GROUP</td>
        <td id='FeatureSelectedValue_MYID'>VALUE</td>
        <td></td>
        <td class="text-right">
            <a class="btn btn-slick text-primary products_execute"  onClick="showEditFeatureModal('MYID');return false;"><i class="fas fa-pencil-alt"></i></a>
            <a class="btn btn-slick text-warning products_execute"  onClick="showFeatureDeleteModal('MYID','VALUE','FEATURE');return false;"><i class="fa fa-trash"></i></a>
        </td>
     </tr>
`;
const htmlEditFeatureBody = `   
    <div class="col-md-12"  id='div_EditFeature'>
        <div class="card-body">
                    <div class="row add-attribute-value">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="city">Feature Value</label>
                                <input type="text" class="form-control" id="editFeature_newvalue" />
                            </div>
                        </div>
                    </div>
            </div>
    </div>
`;
const htmlEditFeatureBodyButtons = `
    <div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#div_EditAttributeValue').remove(); $('#genericModal').modal('hide');">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-primary" onclick="editFeature('ProductAttributeValueID');">Edit Value</button>
    </div>
`;
const htmlAddFeatureName = `
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="form-group">
                <label for="city">Group Name</label>
                <input type="text" class="form-control" id="groupfeature_name" onchange="groupfeature.name=this.value">
            </div>
            <div class="form-group">
                <label for="city">Description</label>
                <input type="text" class="form-control" id="groupfeature_description" onchange="groupfeature.description=this.value">
            </div>
        </div>
    </div>
    `;
const htmlAddFeatureNameButtons = `
    <div class="card-actionbar-row">
            <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
            <button type="button" class="ant-btn btn-cta  btn-secondary" onclick="saveFeatureGroup('{{groupTagId}}', '{{featuretagId}}');">Add Group</button>
    </div>
    `;


var specData = {}
var groupfeature = {}
var feature = {}
var featureGroups = []
var features = []
var editAttributeValueID;
var editAttributeValue = {};



/*
 * Show features in tables
 * */
async function showGroupFeaturesInTables() {
    $('.hasAttributesData').show();
    const onlyGroupFeatures = product.productFeatures?.filter(f => !f.name);
    if (onlyGroupFeatures?.length) {
        if (!$('#hasData').prop('checked')) {
            $('#hasData').prop('checked', true);
            toggleHasData(true);
        }
        onlyGroupFeatures.forEach((feature) => {
            addFeatureToTabe(feature);
        })
    }
}

/*
 * Populate groups dropDown
 * */
async function populateFeatureGroupsDropDown(groupTagId, featureTagId, groupList) {
    if (!$('#genericModal').length) {
        loadGenericModalInPage();
    }
    featureGroups = groupList;
    attributeData[groupTagId] = {
        featureTagId: featureTagId
    };
    loadDropdownWithOptions(featureGroups, groupTagId, 'name', {
        includeEmpty: true,
        extraOptions: [{ name: 'Add New Group', id: AddGroupOptionsVal }]
    });
    attachGroupListener(groupTagId, featureTagId);
}


/*
 * Attach group listener
 * */
function attachGroupListener(tagId, valTagId) {
    $(`#${tagId}`).change(async () => {
        handleFeatureGroupChange($(`#${tagId}`).val(), tagId, valTagId)
    });
}

/*
 * Attach group listener
 * */
async function handleFeatureGroupChange(value, groupTagId, featureTagId) {
    $('.addFeatureValue').hide();
    groupfeature = {};
    if (value == AddGroupOptionsVal) {
        loadGroupEditModal(groupTagId, featureTagId);
        return;
    } else {
        feature.groupId = value; 
    }
}

/*
 * Load group edit modal
 * */
function loadGroupEditModal(groupTagId, featuretagId) {
    $('#genericModalTitle').html("Add New Feature Group");
    $('#modalBody').html(htmlAddFeatureName);
    $('#modalFooter').html(htmlAddFeatureNameButtons.replace('{{groupTagId}}', groupTagId).replace('{{featuretagId}}', featuretagId));
    $('#genericModal').modal('show');
}

/*
 * save feature group
 * */
function saveFeatureGroup(groupTagId, featuretagId) {
    groupfeature.id = e7();
    groupfeature.clientId = cookieUser.clientId;
    var initailMode = MODE;
    MODE = "ADD";
    genericSave(
        groupfeature,
        'ProductGroupFeature',
        [{ fieldname: 'name' }],
        () => {
            MODE = initailMode;
            addNewFeatureGroupToDropdonw(groupTagId, groupfeature, featuretagId)
        });   
}

/*
 * Add new group to dropdonw
 * */
function addNewFeatureGroupToDropdonw(groupTagId, featureGroup, featuretagId) {

    featureGroups = [...(featureGroups ?? []), { ...featureGroup }]
    $(`#${groupTagId} option:last`).before(`<option value='${groupfeature.id}'>${groupfeature.name}</option>`);

    feature.groupId = groupfeature.id;

    $(`#${groupTagId}`).val(featureGroup.id);
    handleGroupChange(attribute.id, groupTagId, featuretagId);

    $('#genericModal').modal('hide');
}

/*
 * Save feature to product
 * */
function saveFeatureToProduct() {
    feature.name = '';
    if ($('#feature_value').val() == '' || $('#feature_value').val() == null) {
        toastr.error("Please enter a valid feature");
        return;
    }
    $('#addData').val('');
    feature.productId = product.id;
    feature.id = e7();
    feature.order = (product.productFeatures?.length ?? 0) + 1;
    let deepClone = JSON.parse(JSON.stringify(feature));
    if (!product.productFeatures) {
        product.productFeatures = []
    }
    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
    }
    product.productFeatures.push(deepClone);
    addFeatureToTabe(deepClone);
    closeAddFeature();
}

/*
 * add feature to table
 * */
function addFeatureToTabe(featureGroup) {
    const group = featureGroups.find(grp => grp.id === featureGroup.groupId);
    var line = htmlFeatureLine.replace(/GROUP/g, group?.name ?? '');
    line = line.replace(/VALUE/g, featureGroup.value ?? '');
    line = line.replace(/MYID/g, featureGroup.id);
    line = line.replace(/EDIT/g, "edit");
    $('#div_Feature').append(line);
    hideClass();
}

/*
 * close add feature
 * */
function closeAddFeature() {
    toggleHasData();
    $('#feature_groupId').val('');
    $('#feature_value').val('');
    feature.value = '';
    feature.groupId = null;
    $('.hasFeaturesData').show();
}

/*
 * show edit feature modal
 * */
function showEditFeatureModal(id) {
    $('#div_EditFeature').remove();
    $('#modalEditValueTitle').html('Edit Product Feature');
    var feature = product.productFeatures.find(x => x.id == id);

    editAttributeValue = feature;
    var featureBody = htmlEditFeatureBody.replace('', '');
    featureBody = featureBody.replace('ProductAttributeValueID', id);

    featureFooter = htmlEditFeatureBodyButtons.replace('', '');
    featureFooter = featureFooter.replace('ProductAttributeValueID', id);

    $('#genericModalTitle').html('Edit Product Specification');
    $('#modalBody').html(featureBody);
    $('#modalFooter').html(featureFooter);

    if (feature.value != null)
        $('#editFeature_newvalue').val(feature.value);

    $('#genericModal').modal('show');
}

/*
 * Edit feature
 * */
function editFeature(id) {

    var editFeature_newvalue = $('#editFeature_newvalue').val()

    if (editFeature_newvalue != null && editFeature_newvalue != '') {
        var feature = product.productFeatures.find(x => x.id == id);
        feature.value = editFeature_newvalue;
        $('#div_EditFeature').remove();
        $('#modalEditValue').modal('hide');
        $('#FeatureSelectedValue_' + id).html(editFeature_newvalue);
        if (MODE != 'ADD') {
            modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
        }
        $('#genericModal').modal('hide');
    }
    else {
        toastr.error("Please enter a valid feature value")
    }
}


/*
 * Show feature confirm delete modal
 * */
function showFeatureDeleteModal(id, value) {
    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this product feature: ' + value + '?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="deleteFeature('` + id + `');">Confirm</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete Attribue Value');
    $('#genericModal').modal('show');
}

/*
 * delete feature
 * */
function deleteFeature(id) {
    $('#feature_' + id).remove();
    product.productFeatures = product.productFeatures.filter(featureSpec => featureSpec.id != id);
    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
        $('#genericModal').modal('hide');
    }
}