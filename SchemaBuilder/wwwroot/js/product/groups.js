/*
 * This file manages product groups
 * */

const htmlAddNewGroup = `

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="name">Title <font color="red">*</font></label>
                    <input type="text" class="form-control" id="group_name" onchange="group.name=this.value">
                </div>
            </div>
            <div class="col-md-12">

                <div class="form-group">
                    <label for="note">Short Description</label>
                    <textarea id="group_shortDescription" class="form-control control-4-rows" placeholder="Enter short description ..." spellcheck="false" onchange="group.shortDescription=this.value"></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <span style="color:rgb(165, 165, 165);font-size: 12px;">HTML Description</span>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="longDescriptionGroup" name="text" class=" border-gray bg-white " tabindex="0" spellcheck="false" style="padding: 4px 11px;"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="gtin">Starting Price</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">$</span>
                        </div>
                        <input type="number" class="form-control" id="group_startPrice" data-inputmask="'mask':'9{0,4}.9{0,2}'" onchange="if (this.value.replace('$', '') != null && this.value.replace('$', '') != '') { group.startPrice = this.value.replace('$', ''); group.price = ''; $('#group_price').val('') }">
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <h4>Or</h4>
            </div>
            <div class="col-md-4 nonservice">
                <div class="form-group">
                    <label for="city">Fixed Price</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">$</span>
                        </div>
                        <input type="number" class="form-control" id="group_price" data-inputmask="'mask':'9{0,4}.9{0,2}'" onchange="if (this.value.replace('$', '') != null && this.value.replace('$', '') != '') { group.price = this.value.replace('$', ''); group.startPrice = ''; $('#group_startPrice').val('') }" />
                    </div>
                </div>
            </div>
        </div>



    `;
const htmlAddNewGroupButtons = `
            <div class="card-actionbar-row">
                <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
                <button type="button" class="ant-btn btn-cta  btn-secondary" onclick="saveNewGroup();">Add Group</button>
            </div>
        `;

const htmlSearchGroup = `

        <div class="row">
            <div class="col-md-10">
                <div class="form-group">
                    <label for="name">Search by Title <font color="red">*</font></label>
                    <input type="text" class="form-control" id="searchGroup">
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group" style="padding-top: 10px;">
                    <button type="button" class="ant-btn btn-cta  btn-secondary" style=" padding-left: 20px; padding-right: 20px;" onclick="searchGroup();"><i class="fas fa-search fa-2x"></i></button>
                </div>
            </div>

        </div>
        <div id="searchGroupResult">

        </div>

    `;
const htmlSearchGroupButtons = `
        <div class="card-actionbar-row">
            <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        </div>
    `;

const htmlGroupSearchLine = `
     <tr style='line-height: 3rem;'  id=line_MYID>
        <td  style='padding:10px'></td>
        <td>NAME</td>
        <td>DESCRIPTION</td>
        <td class="text-right"><button type="button" class="ant-btn btn-cta  btn-secondary"  onclick="selectGroup('MYID');"><i class="fas fa-mouse-pointer fa-2x"></i></button></td>
     </tr>
    `;
var group = {};
var productVariant = {};
var groupListResponse = {};
var variantAttributeValue = {};
var variantAttributeValueResponse = {};
var variantAttributeResponse = {};


/*
 * Handle group change
 * */
async function handleGroupChange() {
    if ($('#addGroup').prop('checked')) {
        $('.addNeworNotGroup').show();
        $('#addVariantDiv').hide();
        $('.hasVariant').hide();
    } else {
        $('.addNeworNotGroup').hide();
        $('#addVariantDiv').show();
    } 
}
//#region Add New Group
/*
 * Show new group modal
 * */

function showNewGroupModal() {
    if (!group) {
        group = {}
    }
    group.name = product.name;
    group.shortDescription = product.shortDescription;
    group.startPrice = '';
    group.price = product.price;
    group.fullDescription = CKEDITOR.instances.longDescription.getData();

    $('#genericModalTitle').html('Add a New Group');
    $('#modalBody').html(htmlAddNewGroup);
    $('#modalFooter').html(htmlAddNewGroupButtons);

    CKEDITOR.replace('longDescriptionGroup');
    $('#group_name').val(group.name);
    $('#group_shortDescription').val(group.shortDescription);
    $('#group_startPrice').val('');
    $('#group_price').val(group.price);
    if (group.fullDescription != null && group.fullDescription != '')
        CKEDITOR.instances['longDescriptionGroup'].setData(group.fullDescription);

    $('#genericModal').modal('show');
}

/*
 * Show search group modal
 * */

function showSearchGroupModal() {
    $('#genericModalTitle').html('Search Existing Group');
    $('#modalBody').html(htmlSearchGroup);
    $('#modalFooter').html(htmlSearchGroupButtons);
    $('#genericModal').modal('show');

}

/*
 * Save new group
 * */
function saveNewGroup() {

    if (group.name == '' || group.name == null)
        toastr.error("Please enter a valid group name");



    group.clientId = product.clientId;
    if (product.productgroupId != null)
        group.id = product.productgroupId;
    else
        group.id = e7();

    group.images = [];

    for (var i = 0; i < product.images?.length; i++) {
        group.images[i] = JSON.parse(JSON.stringify(product.images[i]));
        group.images[i].id = e7();
        group.images[i].productGroupId = group.id;
        group.images[i].productId = null;


    }
    group.brandId = product.brandId;
    group.categoryId = product.categoryId;
    group.defaultProductId = product.id;

    if (product.productgroupId != null) {
        group.id = product.productgroupId;
        /*isFirstGroup = false;
        var initailMode = MODE;
        MODE = "EDIT";
        genericSave(
            group,
            'ProductGroup',
            [{ fieldname: 'name' }],
            () => {
                MODE = initailMode;
                saveProductGroup();
            }
        );*/

    }
    /*else {
        isFirstGroup = true;
        var initailMode = MODE;
        MODE = "ADD";
        genericSave(
            group,
            'ProductGroup',
            [{ fieldname: 'name' }],
            () => {
                MODE = initailMode;
                saveProductGroup();
            }
        );
    }*/
    product.group = group;
    saveProductGroup();
}

//#endregion


//#region Search Group

/*
 * Search group
 * */
async function searchGroup() {
    var search = $('#searchGroup').val();
    var myPromise = getPromiseData("ProductGroup", `clientId=${cookieUser.clientId}&${search ? 'name=' + search : ''}`);
    $('#searchGroupResult').html(spinnersHTML);
    await loadPromise(myPromise, "groupListResponse");
    showGroupResult(groupListResponse.items);
}

/*
 * Show group results
 * */
function showGroupResult(data) {
    $('#searchGroupResult').html('');
    if (!data) {
        $('#searchGroupResult').html('No Group found that match your search');
        return;
    }

    var line = '';
    var lines = `<table id="datatable1" class="table table-hover" style="border: 1px solid rgb(232, 232, 232);">
                                <thead class="ant-table-thead">
                                    <tr>
                                        <th></th>
                                        <th class="text-left">Name</th>
                                        <th class="text-left">Description</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody class="ant-table-tbody">
                                    RESULT
                            </tbody>
                            </table>`;
    var allresult = '';
    for (var i = 0; i < data.length; i++) {
        line = htmlGroupSearchLine.replace('NAME', data[i].name);
        line = line.replace('DESCRIPTION', (data[i].shortDescription ?? ''));
        line = line.replace(/MYID/g, data[i].id);
        allresult += line;
    }
    lines = lines.replace('RESULT', allresult)
    $('#searchGroupResult').append(lines);

}

/*
 * Select group
 * */
function selectGroup(groupId) {
    group = groupListResponse.items?.find(grp => grp.id == groupId);
    saveProductGroup();
}
//#endregion

/*
 * Close group modal
 * */
function saveProductGroup() {
    product.productgroupId = group.id;
    displayProductGroup();
}

/*
 * Close group modal
 * */
async function displayProductGroup() {
    if (product.productgroupId) {
        if (!group || !group.id) {
            var myPromise = getPromiseData("ProductGroup", `id=${product.productgroupId}`);
            await loadPromise(myPromise, "groupListResponse");
            group = groupListResponse.items[0];
        }
        $('#addGroup').prop('disabled', true);
        $('#addGroup').prop('checked', true);
        $('#addVariantDiv').hide();
        $('.hasVariant').hide();
        $('.addNeworNotGroup').hide();
        $('.hasGroup').show();

        $('#groupName').html(`<a href="../ProductGroup/ProductGroup?id=` + group.id + `">` + group.name + '</a>');
        $('#groupTitle').html(group.shortDescription);
        $('#addGroup').prop('disabled', true);
        $('#genericModal').modal('hide');
    } else {
        $('#addGroup').prop('disabled', false);
        $('#addGroup').prop('checked', false);
        $('.addNeworNotGroup').show();
        $('.hasGroup').hide();
    }
}
