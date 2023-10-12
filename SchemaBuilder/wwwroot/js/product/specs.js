/*
 * This file manages product specification
 * */

var specData = {}
var specFeature = {}
var htmlSpecLine = `
      <tr class="gradeX ant-table-row  ant-table-row-level-0"  id='featureSpec_MYID'>
        <td  style='padding:10px'><i class="fas fa-cogs" title="Technical Spec"></i></td>
        <td id='SpecSelectedName_MYID'>NAME</td>
        <td id='SpecSelectedValue_MYID'>VALUE</td>
        <td></td>
        <td class="text-right">
            <a class="btn btn-slick text-primary products_execute"  onClick="showEditSpecModal('MYID');return false;"><i class="fas fa-pencil-alt"></i>
            </a><a class="btn btn-slick text-warning products_execute"  onClick="showFeatureSpecDeleteModal('MYID','VALUE','SPEC');return false;"><i class="fa fa-trash"></i></a>
        </td>
     </tr>
    `;
var EditSpecLine = `                    
    <div class='row card-body'>
        <div class="col-md-12">
            <div class="form-group">
                <label for="city">Spec Name</label>
                <input type="text" class="form-control" id="editSpec_newname" />
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="city">Spec Value</label>
                <input type="text" class="form-control" id="editSpec_newvalue" />
            </div>
        </div>
    </div>
`;

var EditSpecLineButtons = `
    <div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#div_EditAttributeValue').remove(); $('#genericModal').modal('hide');">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-primary" onclick="editFeatureSpec('ProductAttributeValueID');">Edit Value</button>
    </div>
`;
/*
 * save specification
 * */
function saveSpec() {
    if (specFeature.name == null || specFeature.name == '') {
        toastr.error("Tech Spec require a name");
        return;
    }
    if (specFeature.value == null || specFeature.value == '') {
        toastr.error("Tech Spec require a value");
        return;
    }

    specFeature.productId = product.id;
    specFeature.id = e7();
    let deepClone = JSON.parse(JSON.stringify(specFeature));
    if (!product.productFeatures) {
        product.productFeatures = []
    }
    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
    }
    product.productFeatures.push(deepClone);
    addSpecLineToTabe(deepClone);
    closeAddSpec();
    $('#addData').val('');

}

/*
 * Show product feature tech spec
 * */
async function showProductFeatureTechSpec() {
    $('.hasAttributesData').show();
    const onlyTecSpec = product.productFeatures?.filter(f => !!f.name);
    if (onlyTecSpec?.length) {
        if (!$('#hasData').prop('checked')) {
            $('#hasData').prop('checked', true);
            toggleHasData(true);
        }
        onlyTecSpec.forEach((feature) => {
            addSpecLineToTabe(feature);
        })
    }
}

/*
 * add specification line to table
 * */
function addSpecLineToTabe(a) {
    var line = htmlSpecLine.replace('', '');
    if (a.value == null)
        a.value = '';
    if (a.name == null)
        a.name = '';

    line = line.replace(/VALUE/g, a.value);
    line = line.replace(/MYID/g, a.id);
    line = line.replace(/NAME/g, a.name);
    line = line.replace(/EDIT/g, "edit");
    $('#div_Spec').append(line);
    hideClass();
}

/*
 * Close add specification
 * */
function closeAddSpec() {
    $('.hasSpecificationsData').show();
    clearAddData();
    $('#spec_name').val('');
    $('#spec_value').val('');
    specFeature.value = '';
    specFeature.name = '';

}

/*
 * show specification editing modal
 * */
function showEditSpecModal(id) {

    $('#div_EditSpec').html('');
    var featureSpec = product.productFeatures.find(x => x.id == id);

    editAttributeValue = featureSpec;
    var specBody = EditSpecLine.replace('', '');
    specBody = specBody.replace('ProductAttributeValueID', id);

    var specFooter = EditSpecLineButtons.replace('', '');
    specFooter = specFooter.replace('ProductAttributeValueID', id);

    $('#genericModalTitle').html('Edit Product Specification');
    $('#modalBody').html(specBody);
    $('#modalFooter').html(specFooter);

    $('#editSpec_newname').val(featureSpec.name);
    $('#editSpec_newvalue').val(featureSpec.value);

    $('#genericModal').modal('show');
}

/*
 * edit specification
 * */
function editFeatureSpec(id) {

    var editSpec_newvalue = $('#editSpec_newvalue').val();
    var editSpec_newname = $('#editSpec_newname').val();
    if (editSpec_newvalue == null)
        editSpec_newvalue = '';

    if (editSpec_newname != null && editSpec_newname != '') {
        var featureSpecif = product.productFeatures.find(x => x.id == id);
        featureSpecif.value = editSpec_newvalue;
        featureSpecif.name = editSpec_newname;
        $('#genericModal').modal('hide');
        $('#SpecSelectedValue_' + editAttributeValue.id).html(editSpec_newvalue);
        $('#SpecSelectedName_' + editAttributeValue.id).html(editSpec_newname);
        if (MODE != 'ADD') {
            modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
        }
    }
    else {
        toastr.error("Please enter a valid spec name")
    }
}

/*
 * Show Attribute confirm delete modal
 * */
function showFeatureSpecDeleteModal(id, value) {
    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this product Tec Spec: ' + value + '?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="deleteFeatureSpec('` + id + `');">Confirm</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete Attribue Value');
    $('#genericModal').modal('show');
}

/*
 * delete specification
 * */
function deleteFeatureSpec(id) {
    $('#featureSpec_' + id).remove();
    product.productFeatures = product.productFeatures.filter(featureSpec => featureSpec.id != id);
    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productFeatures']
        $('#genericModal').modal('hide');
    }
}