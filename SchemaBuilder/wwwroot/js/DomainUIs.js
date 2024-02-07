
const unmappedProperties = ['pic', 'logo', 'video'];
const currencyUnit = "$";
const percent = "%";
const phoneNumberPattern = /^(\(?[0-9]{3}\)[ ])?([0-9]{3})[-]([0-9]{4})$/
const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

const phoneMask = "(999) 999-9999";
const zipCodeMask = "99999";
const percentMask = "9{0,3}.9{0,2}";
const moneyMask = ' 9{0,4}.9{0,2}';
const defaultType = 'edit';

var myColorList = ['s-bg-lavenda', 's-bg-green', 's-bg-yellow'];



//#region InternationCountry
const HtmlInternationlCountryEditContent = `
            <div class="d-flex-desktop">
                <div class="form-group">
                    <label for="internationalCountry">Country</label>
                    <input 
                        id="internationalCountry" 
                        type="text" 
                        class="form-control"
                        oninput="suggestCountry(
                                    $(this).val(),
                                    'internationalCountry',
                                    'internationalSuggestions',
                                    {updatePhone: UPDATE_PHONE, phoneTagId: 'PHONE'})"
                        value="DEFAULT_VALUE"
                        autocomplete="off"
                        onblur="handleCountryBlur('internationalCountry', 'internationalSuggestions')" 
                        onchange="showStateOrNot($(this).val(), 'internationalState'); addObject.country= $(this).val()"
                    >
                    <div class="isSuggestion d-none" id="internationalSuggestions"></div>
                </div>
                <div class="form-group isUSCanada" style="display: none;">
                    <label for="internationalState">State</label>
                    <select 
                        class="form-control"
                        onblur="validateState('internationalState')" 
                        id="internationalState" 
                        name="state"
                        onfocus="cancelSuggestion('internationalSuggestions');"
                        onchange="addObject.state=$(this).val()"
                        >
                        <option></option>
                        STATES
                    </select>
                </div>
            </div>
            <div class="d-flex-desktop">
                <div id="internationalCityContainer" class="form-group">
                    <label for="internationalCity">City</label>
                    <input
                        type="text"
                        id="internationalCity"
                        class="form-control"
                        onblur="validateInput(this.id, false)"
                        onfocus="cancelSuggestion();"
                        onchange="addObject.city=$(this).val()">
                </div>
                <div class="form-group ml-10">
                    <label for="internationalZip" class="form-label"><span class="isUSCanada">Zip</span><span class="isNOTUSCanada">Postal Code</span></label>
                    <input 
                        type="text"
                        class="form-control"
                        onfocus="cancelSuggestion();"
                        onblur="validateInput(this.id, false)"
                        id="internationalZip"
                        name="zip"
                        data-inputmask="'mask':'99999'"
                        onchange="addObject.zip=$(this).val()"">
                </div>
            </div>`;
//#endregion

//#region search
const tablesDesfinition = {}

let pageLength = 5;

const loadMoreBtn = `
        <div style="width:100%;text-align:center;padding-top:20px;padding-bottom:20px;" id="showMore">
            <button onclick="search('NAME') ;return false;" href="#" class="ant-btn btn-cta btn-primary" title="Load More Products"> Load More ... </button>
        </div>
    `;

function setTableProps(objectName, name, endpoint, fieldname, tableProps) {
    tablesDesfinition[name] = {
        ...(tablesDesfinition[name] ?? {}),
        objectName: objectName,
        values: {},
        start: 0,
        endpoint: endpoint,
        fieldname: fieldname,
        type: 'edit',
        ...tableProps
    };
}

function loadSearchRow(objectName, name, endpoint, fieldname) {
    tablesDesfinition[name] = {
        ...(tablesDesfinition[name] ?? {}),
        objectName: objectName,
        values: {},
        start: 0,
        endpoint: endpoint,
        fieldname: fieldname,
        type: 'edit',
        hideEdit: true,
        hideAdd: true
    };
    tablesDesfinition['search_results_' + name] = {
        type: 'select'
    };
    title = deCamelize(name);
    $("#search_" + name).html("");

    searchRowContent = `
        <div class="row">
            <div class="col-md-12" style="padding-bottom:30px;">
                <span class="ant-input-search ant-input-search-enter-button ant-input-affix-wrapper">
                    <input placeholder="Search for a ${title}" class="ant-input" type="text" id="search_${name}" style="padding-top: 22px; padding-bottom: 19px;">
                    <span class="ant-input-suffix">
                        <button id="searchButton" type="button" class="btn ant-input-search-button ant-btn-primary" onclick="search('${name}') ;return false;">
                            <i class="anticon anticon-search"></i>
                        </button>
                    </span>
                </span>
                <a href="#" style=" padding-left: 10px;" onclick="$('#searchButton').val(''); $('#searchResult').html(''); $('#search').val(''); return false;">Clear Search</a>
            </div>
        </div>
        <div id="searchResult">
        </div>
        <div id="placeholder_${name}"></div>
     `
    $("<div></div>").html(searchRowContent).appendTo("#search_" + name);
}

async function search(name) {
    endpoint = tablesDesfinition[name].endpoint;
    fieldname = tablesDesfinition[name].fieldname;
    start = tablesDesfinition[name]?.start ?? 0;
    $("#searchResult").html(spinnersHTML);
    var usersPromise = getPromiseData(endpoint, '&screenName=' + $("#search_" + name).val() + '&clientId = ' + cookieUser.clientId + '&pageNumber=' + start + '&limit=' + pageLength);

    await loadPromise(usersPromise, 'tablesDesfinition.' + name + '.values');
    showData(name, tablesDesfinition[name].values, fieldname)
}

function showData(name, data, fieldname) {
    title = deCamelize(name);
    var initialiterationResults = data.items;
    var totalCount = data.totalCount;
    if (!initialiterationResults)
        return;
    $("#searchResult").html("");
    iterationResults = initialiterationResults.filter(item => !searchResultElementExists(name, fieldname, item));
    tablesDesfinition[name].values.items = iterationResults;
    if (iterationResults?.length == 0) {
        $("#searchResult").html(`<h3 class="text-center"><i class="far fa-frown"></i> </h3><h5  class="text-center" style="padding-bottom:30px;">"` + ($('#search').val() ?? '') + `" did not return any ${title}s </h5>`)
        return;
    }
    $("#searchResult").show();
    $("#searchResult").html(`
        <table id="datatable_search_results_` + name + `" class="table table-striped table-hover" style="border:1px solid #e8e8e8 ;">
        </table>
    `
    );
    if (totalCount > (initialiterationResults?.length + tablesDesfinition[name]?.start)) {
        $("#searchResult").append(loadMoreBtn.replace('NAME', name));
    }
    populateTableWithObjects(iterationResults, 'search_results_' + name, fieldname, "select");
    tablesDesfinition[name].start++;
}

function AddSearchResultItem(index, name, fieldname) {
    var dataName = name.replace("search_results_", "");
    const useId = tablesDesfinition[dataName].useId;
    const objectName = tablesDesfinition[dataName].objectName;
    const resultItem = tablesDesfinition[dataName]?.values?.items ? tablesDesfinition[dataName].values.items[index] : null;
    if (resultItem != null) {
        if (useId) {
            addItemToListTable(
                tablesDesfinition[dataName].objectName,
                dataName,
                fieldname,
                resultItem?.id,
                tablesDesfinition[dataName].source,
            );
        }
        else {
            const fields = eval(fieldname);
            addObject = {};
            addObject.id = e7();
            fields
                .filter(x => x.type !== 'parentLink')
                .forEach(function (field) {
                    if (field.type == "searchLink") {
                        addObject[field.childField] = resultItem[field.parentField];
                    } else {
                        addObject[field.name] = resultItem[field.name];
                    }
                });
            parentObjectName = objectName.split('.')[0];
            const parentLinkFields = fields.filter(x => x.type === 'parentLink');
            parentLinkFields.forEach(function (field) {
                addObject[field.childField] = eval(parentObjectName + ".id");
            });
            if (useId) {

            }
            addObjectFn(objectName, dataName, fieldname);
        }
        $('#row' + name + '_' + index).hide();
    }
}

function searchResultElementExists(name, fieldname, itemToAdd) {

    const fields = eval(fieldname);
    const searchField = fields.find(x => x.type === 'searchLink');
    if (!fields || !searchField) {
        return false;
    }
    if (tablesDesfinition[name]?.useId) {
        const elements = eval(tablesDesfinition[name].objectName)
        return elements?.includes(itemToAdd[searchField.parentField])
    } else {
        const relatedObjects = addedObjects.filter(obj => obj.name == name);
        if (relatedObjects) {
            const elementAdded = relatedObjects.some(obj => obj.value && JSON.parse(obj.value)[searchField.childField] == itemToAdd[searchField.parentField]);
            if (elementAdded) {
                return true;
            }
        }
    }
    return false;
}
//#endregion

function loadStandardValues(sourceObject, properties, checkId) {

    // Add or Edit
    if (checkId == null)
        checkId = true;

    if (checkId) {
        var lastTag = document.URL.substring(document.URL.lastIndexOf('/') + 1);
        if (lastTag.toLowerCase().includes('id=')) {
            MODE = 'EDIT';
        }
    }


    if (unmappedProperties && unmappedProperties.length) {
        properties = properties.filter(prop => !unmappedProperties.includes(prop.name))
    }
    displayValues(properties, sourceObject);
}

function displayElementValue(element, data) {
    const elementData = data[element.name]
    switch (element.type) {

        case "Boolean":
            $(`#${element.name}`).prop('checked', elementData);
            break;

        case "tags":
            $(`#${element.name}`).tagsinput('removeAll');
            elementData?.split(',').forEach((tag) => {
                $(`#${element.name}`).tagsinput('add', tag);
            })
            break;
        default:
            if (element.name.includes('Date')) {
                if (elementData != null && elementData != undefined)
                    $(`#${element.name}`).val(fixToUsaDate(elementData.toString()));
            }
            else {
                $(`#${element.name}`).val(elementData);
            }
    }
}

function displayValues(properties, data) {
    properties.forEach(element => displayElementValue(element, data));
}

async function getPromiseData(domainUIName, filter) {

    if (filter == null)
        filter = "";
    else
        filter = "?" + filter;

    const result = await resolveAJAXCALL(domainUIName, filter);

    return result;

}

function resolveAJAXCALL(domainUIName, filter) {

    try {
        var newPromise = new Promise((resolve, reject) => {

            ajaxCall("GET", null, domainUIName + filter, null, null, data => {
                resolve(data);
                console.log(domainUIName + ' data resolved');
            }
                , err => {
                    reject(err);
                    console.log(domainUIName + ' getting error')
                })
        });
        return newPromise
    }
    catch {
        return null;
    }






}




async function loadPromise(promise, actor) {
    await promise.then(
        response => {
            eval(actor + "= response;");
        }
    ).catch(error => {
        console.log(actor + ': Service unavailable. An exception occurred:' + error);
    });
}

/**
 * Generic save data
 * */
function genericSave(sourceObject, sourceName, requiredList, executeAfterRequest = null) {

    var flag = 0;
    requiredList.forEach(item => {
        const field = item.fieldname;
        if (sourceObject[field] == "" || sourceObject[field] == null) {
            toastr.error("You must enter a valid " + camelize(field));
            flag = 1;
            return;
        }
    });

    if (!validateFormInputs()) {
        unloadSpinnerEffect();
        return;
    }
    if (flag == 1) {
        unloadSpinnerEffect();
        return;
    }

    console.log('passed');
    saveSubTableData();
    executeAfterRequest = executeAfterRequest ?? goToMyHome;
    var addMessage = executeAfterRequest ? undefined : sourceName + " Saved Successfully";
    var editMessage = executeAfterRequest ? undefined : sourceName + " Updated Successfully";
    if (MODE == 'ADD')
        ajaxCall("POST", sourceObject, sourceName, addMessage, sourceName, executeAfterRequest);
    else {
        var id = sourceObject.id;
        ajaxCall("PUT", sourceObject, sourceName + "?id=" + id, editMessage, sourceName, executeAfterRequest);
    }
}
/**
 * Generic delete
 * */
function genericDelete(sourceName, id, executeAfterRequest = null) {
    ajaxCall("DELETE", null, sourceName + "?id=" + id, sourceName + " Deleted Successfully", sourceName, function () {
        if (executeAfterRequest) {
            executeAfterRequest();
        }
    });

}

function savePatch(sourceName, id, fieldname, fieldvalue, executeAfterRequest, noMessage) {
    var model =
        [{
            op: 'replace',
            path: '/' + fieldname,
            value: fieldvalue
        }];
    var message = sourceName + " Updated Successfully";
    if (noMessage == true)
        message = '';

    ajaxCall("PATCH", model, sourceName + "?id=" + id, message, sourceName, executeAfterRequest);
}

function saveMultiPatch(sourceName, id, fieldnames, fieldvalues, executeAfterRequest, noMessage) {

    var model = [];
    var i = 0;
    fieldnames.forEach(x => {
        var localModel = {
            op: 'replace',
            path: '/' + x,
            value: fieldvalues[i]
        }
        i++;
        model.push(localModel);
    });

    var message = sourceName + " Updated Successfully";
    if (noMessage == true)
        message = '';
    ajaxCall("PATCH", model, sourceName + "?id=" + id, message, sourceName, executeAfterRequest);
}

// ************************** SUB TABLE CODE *********************************** //
var addedObjects = [];
var addObject = {};

function loadGenericModalInPage() {
    var myText = `<div class="modal fade" id="genericModal" tabindex="-1" role="dialog" aria-labelledby="genericModal" aria-hidden="true">
        <div id="genericModalDialog" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title webpages_write" id="genericModalTitle"></h4>
                </div>
                <div class="modal-body" id="modalBody">
                </div>
                <div class="modal-footer" id="modalFooter">
                </div>
            </div>
        </div>
    </div>`;

    $('.chapter').after(myText);

}

function populateSubTable(objectsName, name, fieldname, type = defaultType, endpoint = null, tableProps = null) {
    if (tableProps) {
        setTableProps(objectsName, name, endpoint, fieldname, tableProps)
    }
    if (type == "search") {
        loadSearchRow(objectsName, name, endpoint, fieldname);
    }

    if (!$('#genericModal').length)
        loadGenericModalInPage(objectsName);
    initializeInputs(fieldname);
    if (!tableProps?.useId) {
        loadInAddedObjects(objectsName, name);
        refreshTable(objectsName, name, fieldname, type);
    } else {
        populateListTable(objectsName, name, fieldname, tableProps.source ?? [])
    }
}

/*
 * Initializes data and ui for complicated inputs
 */
function initializeInputs(fieldname) {
    var fields = eval(fieldname);

    //International country
    fields = filterSimpleFields(fields);
    if (fields.some(field => field.type == 'internationalCountry')) {
        const internationalCountryField = fields.find(field => field.type == 'internationalCountry');
        internationalCountryField.options = Object.keys(states).map(state => `${states[state]}:${state}`);
    }
}
function refreshTable(objectsName, name, fieldname) {

    let objects = getObjectsFromAddObjects(name);
    const type = tablesDesfinition[name]?.type ?? defaultType;
    let title = name;
    if (title.includes(':')) {
        title = title.split(':')[1];
        name = title.split(':')[0];
    }
    else
        title = deCamelize(name);
    const clickMethod = tablesDesfinition[name]?.localModal ? 'showLocalAddObjectModal' : 'addObjectModal';
    let addButton = `
    <button 
        style="margin-bottom:20px;"
        class="ant-btn btn-cta btn-primary"
        id="add` + name + `Button" 
        onclick="${clickMethod}('` + objectsName + `','` + name + `','` + fieldname + `')" 
        data-toggle="modal"
        data-target="#ObjectModal"
        >
        <i class="fas fa-plus-circle" aria-hidden="true"></i> Add ` + title + `
    </button>`;
    if (type == "search" || tablesDesfinition[name]?.hideAdd) {
        addButton = '';
    }
    let fullElementTemplate = `
    <div class="mt-2">
         <h4 ${tablesDesfinition[name]?.hideTitle ? 'style="display:none"' : ''}>
             ` + (tablesDesfinition[name]?.title ?? (title + "s")) + `
         </h4>
         <div>
             ${addButton}
             <table id="datatable_` + name + `" class="table table-striped table-hover" style="border:1px solid #e8e8e8 ;">
             </table>
         </div>
     </div>
    `;

    $('#placeholder_' + name).html(fullElementTemplate);
    populateTableWithObjects(objects, name, fieldname);
}

function getObjectsFromAddObjects(name) {
    var selected = addedObjects.filter(x => x.name == name);
    if (selected == null)
        return [];
    var objects = [];
    selected.forEach(function (addedObject) {
        objects.push(JSON.parse(addedObject.value));
    });

    return objects;

}

function loadInAddedObjects(objectsName, name) {

    var objects = eval(objectsName);
    if (objects == null || !objects.length) {
        return;
    }
    objects.forEach(function (object) {
        var found = addedObjects.find(x => x.id == object.id && x.name == name);

        if (found == null) {
            addedObjects.push({ id: object.id, name: name, objectsName: objectsName, value: JSON.stringify(object) });
        }
    });

}

function populateTableWithObjects(objects, name, fieldname, customEdit, customDelete) {
    // Get the table element
    var tableId = 'datatable_' + name
    const type = tablesDesfinition[name]?.type ?? defaultType;
    var fields = eval(fieldname);
    const actionfields = fields.filter(x => x.type == 'customButton');
    fields = filterSimpleFields(fields, { noTitle: null }).filter(x => x.visibility !== false);

    var table = $('#' + tableId);
    var headerRow = $('<tr></tr>');
    if (type == "select") {
        headerRow.append('<th></th>');
    }
    fields.forEach(function (field) {
        let suffix = '';
        if (field.type == 'money') {
            suffix = ` (${field.currency ?? currencyUnit})`;
        }
        else if (field.type == 'percent') {
            suffix = ` (${percent})`;
        }
        headerRow.append('<th class="col_' + field.name + '">' + field.title + suffix + '</th>');
    });
    if (type == defaultType) {
        if (!tablesDesfinition[name]?.hideEdit) {
            headerRow.append('<th></th>');
        }
        if (!tablesDesfinition[name]?.hideDelete) {
            headerRow.append('<th></th>');
        }
        if (tablesDesfinition[name]?.showSelect) {
            headerRow.append('<th></th>');
        }
    }
    actionfields.forEach((field) => {
        headerRow.append('<th class="col_' + field.actionName + '"></th>');
    });

    var thead = $('<thead class="ant-table-thead"></thead>').append(headerRow);

    var tBody = $('<tbody class="ant-table-tbody"></tbody>');
    if (tablesDesfinition[name]?.filter) {
        objects = objects.filter(obj => obj[tablesDesfinition[name].filter.key] == tablesDesfinition[name].filter.value)
    }
    // iterate through the objects
    objects.forEach(function (object, index) {
        // create a row element for the object
        var row = $('<tr id=row' + name + '_' + index + '></tr>');
        if (type == "select") {
            var selectButton = $(`<input type="checkbox" id="checkbox_row_${name}_${index}" onclick="AddSearchResultItem(${index}, '${name}', '${fieldname}');" >`);
            row.append($('<td class="fix-cell-width"></td>').append(selectButton));
        }
        // add the specified fields to the row
        fields.forEach(function (field) {
            switch (field.type) {
                case 'dropdown':
                    if (object[field.name] !== null && object[field.name] !== '') {

                        var myOption = field.options.find(x => x.split(':')[0] == object[field.name]);
                        var value = "";
                        if (myOption != null)
                            value = myOption.split(':')[1];
                        row.append('<td>' + value + '</td>');
                    }
                    else
                        row.append('<td></td>');
                    break;
                case 'bool':
                    var value = object[field.name];
                    let isChecked = '';
                    if (!!value)
                        isChecked = 'checked';
                    const id = `${name}-${field.name}-${object.id}`;
                    const idproperty = field.jsRule ? `id="${id}"` : '';
                    const onchange = field.jsRule ? ' onchange=' + field.jsRule.name + '("' + object.id + '")' : '';
                    row.append('<td> <input ' + idproperty + onchange + ' type="checkbox" class="checkbox" ' + isChecked + '><label for="' + id + '" class="switch"></label></td>');
                    break;
                case 'dropdownAsIcon':
                    row.append('<td>' + todropdownAsIconFormat(object[field.name], field.options) + '</td>');
                    break;
                case 'image':
                    row.append('<td>' + toImageFormat(object[field.name]) + '</td>');
                    break;
                case 'money':
                    row.append('<td>' + toMoneyFormat(object[field.name]) + '</td>');
                    break;
                case 'tags':
                    row.append('<td>' + toTagsFormat(object[field.name]) + '</td>');
                    break;
                case 'date':
                    row.append('<td>' + toDateFormat(object[field.name]) + '</td>');
                    break;
                case 'datetime':
                    row.append('<td>' + toDateTimeFormat(object[field.name]) + '</td>');
                    break;
                case 'email':
                    row.append('<td>' + toEmailFormat(object[field.name]) + '</td>');
                    break;
                case 'enum':
                    row.append('<td>' + toEnumFormat(object[field.name], field.switchToLabel, field.options) + '</td>');
                    break;
                default:
                    row.append(`<td ${field.largText ? 'class="fix-cell-width"' : ''}>` + toSimpleText(object[field.name]) + '</td>');
                    break;
            }
        });
        var id = object.id;
        // create the edit and delete buttons
        if (type == defaultType) {
            const clickMethod = tablesDesfinition[name]?.localModal ? 'showLocalEditObjectModal' : 'editObjectModal';
            const editMehod = customEdit ?? clickMethod;
            const confirmDeleteMethod = customDelete ?? 'confirmDeleteModal';
            var editButton = $(`<a class="btn btn-slick text-primary"  onClick="${editMehod}('` + id + `','` + name + `','` + fieldname + `');return false;"><i class="fas fa-pencil-alt"></i></a>`);
            var deleteButton = $(`<a class="btn btn-slick text-warning"  onClick="${confirmDeleteMethod}('` + id + `','` + name + `','` + fieldname + `');return false;"><i class="fa fa-trash"></i></a>`);
            var selectButton = $(`<a class="btn btn-slick text-warning"  onClick="selectObjectModal('` + id + `','` + name + `',\`` + fieldname + `\`);return false;"><i class="fa fa-search"></i></a>`);
            // add the buttons to the row
            if (!tablesDesfinition[name]?.hideEdit) {
                row.append($('<td></td>').append(editButton));
            }
            if (!tablesDesfinition[name]?.hideDelete) {
                row.append($('<td></td>').append(deleteButton));
            }
            if (tablesDesfinition[name]?.showSelect) {
                row.append($('<td></td>').append(selectButton));
            }

            actionfields.forEach(field => {
                if (field.useImage) {
                    row.append(`<td class="col_${field.actionName}"> <img src="${field.icon}" onClick="${field.actionName}('` + id + `')"></i></td>`);
                } else {
                    row.append(`<td class="col_${field.actionName}"> <i class="fa fa-${field.icon} c-pointer" onClick="${field.actionName}('` + id + `')"></i></td>`);
                }

            });
        }
        // add the row to the table
        tBody.append(row);
    });

    table.append(thead);
    table.append(tBody);
}


/*
 * refresh values of a column in a table
 */
function refreshDeafultColumnValues(tableName, columnName) {
    const tableRows = addedObjects.filter(object => object.name == tableName);
    tableRows.forEach(row => {
        if (!row) {
            return;
        }
        const id = `${tableName}-${columnName}-${row.id}`;
        const formattedRow = JSON.parse(row.value);
        $('#' + id).prop('checked', formattedRow[columnName]);
    })
}


//#region Formatters

/* 
 * formats value to enum format
 */
function toEnumFormat(value, switchToLabel, options) {
    if (switchToLabel) {
        var label = options.find(item => item.value == value)?.label ?? value;
        return label ?? '';
    }
    return value ?? '';
}
/* 
 * formats value to enum format
 */
function todropdownAsIconFormat(value, options) {
    if (!value) {
        return '';
    }
    const selectedOption = options.find(x => x.split(':')[0] == value);
    if (selectedOption) {
        const iconClass = selectedOption.split(':')[2];
        value = `<i class="${iconClass} fa-2x"></i>`
    }
    return value ?? '';
}

/* 
 * formats value to date format
 */
function toImageFormat(value) {
    return `<img src="${value}" class="img-fluid" style="max-width:50px">`;
}


/* 
 * formats value to list of tags format
 */
function toTagsFormat(value) {
    if (!value) {
        return '';
    }
    var formattedValue = '';
    var hasEmpty = 0;
    if (value != null && value != '') {
        for (var i = 0; i < (value.split(",").length); i++) {
            if (value.split(",")[i] == null || value.split(",")[i] == '') {
                hasEmpty++;
                continue;
            }
            var myflag = flags.find(x => x.id == value.split(",")[i]);
            console.log("value.split(", ")[i]:" + value.split(",")[i]);
            var name = '';
            if (myflag != null)
                name = myflag.name;

            if ((i - hasEmpty) < 2)
                formattedValue += `<span class="u-label ` + myColorList[i] + ` g-rounded-20 g-px-15 g-mr-10 g-mb-15">` + name + `</span> `;
        }
        if ((value.split(",").length - hasEmpty) > 2)
            formattedValue += `<span class="u-label ` + myColorList[2] + ` g-rounded-20 g-px-15 g-mr-10 g-mb-15"> + ` + (value.split(",").length - hasEmpty - 2) + `</span> `;
    }
    return formattedValue ?? value;
}


/* 
 * formats value to date format
 */
function toDateFormat(value) {
    return value ?? '';
}


/* 
 * formats value to date format
 */
function toDateTimeFormat(value) {
    return value ? new Date(value) : '';
}




/* 
 * formats value to date format
 */
function toOnlyDateFormat(value) {
    if (typeof value === 'string') {
        value = new Date(value);
    }

    const options = { month: 'long', day: 'numeric', year: 'numeric' };
    return value.toLocaleDateString('en-US', options);
}


/* 
 * formats value to date format
 */
function toNumericLocalDateFormat(value) {
    if (typeof value === 'string') {
        value = new Date(value);
    }

    const options = { month: 'numeric', day: 'numeric', year: 'numeric' };
    return value.toLocaleDateString('en-US', options);
}

/* 
 * formats value to amount format
 */
function toPercentFormat(value) {
    let floatVal = parseFloat(+value?.toString().replace(percent, '').trim());
    if (value && !isNaN(floatVal)) {
        value = floatVal.toFixed(2)
        value += '';
        x = value.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ' ' + '$2');
        }
        return x1 + x2;
    }
    return value;
}

/* 
 * formats value to amount format
 */
function toMoneyFormat(value) {
    let floatVal = parseFloat(+value?.toString().replace(currencyUnit, '').trim());
    if (value && !isNaN(floatVal)) {
        value = floatVal.toFixed(2)
        value += '';
        x = value.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ' ' + '$2');
        }
        return x1 + x2;
    }
    return value;
}

/* 
 * formats value to amount format
 */
function camelToSimpleText(value) {
    if (typeof value !== 'string') {
        throw new Error('Input should be a string');
    }

    const words = value.split(/(?=[A-Z])/).filter(word => /^[a-zA-Z]+$/.test(word));
    const firstWord = words[0].charAt(0).toUpperCase() + words[0].slice(1).toLowerCase();
    const restOfWords = words.slice(1).map(word => word.toLowerCase());

    return firstWord + ' ' + restOfWords.join(' ');
}

/* 
 * formats value to simple text
 */
function toEmailFormat(value) {
    return (value ?? '').toString().toLowerCase();
}

/* 
 * formats value to simple text
 */
function toSimpleText(value) {
    return value ?? '';
}

//#endregion

function filterSimpleFields(fields, props = {}) {
    var filteredFields = fields.filter(x =>
        x.type !== 'parentLink'
        && x.type !== 'customButton'
        && x.type !== 'static'
        & x.type !== 'searchLink');

    if (props?.noTitle !== undefined) {
        filteredFields = filteredFields.filter(x => x.noTitle == props.noTitle)
    }
    if (props?.noAdd !== undefined) {
        filteredFields = filteredFields.filter(x => x.noAdd == props.noAdd)
    }
    if (props?.noEdit !== undefined) {
        filteredFields = filteredFields.filter(x => x.noEdit == props.noEdit)
    }
    if (props?.visibility !== undefined) {
        filteredFields = filteredFields.filter(x => x.visibility == props.visibility)
    }
    return filteredFields;
}
/*
 * show local add object modal
 * */
function showLocalAddObjectModal(objectsName, name, fieldname) {
    const originalFields = eval(fieldname);
    const fields = filterSimpleFields(originalFields, { noAdd: null });
    const parentLinkFields = originalFields.filter(x => x.type === 'parentLink');
    parentObjectName = objectsName.split('.')[0];
    addObject = {};
    addObject.id = e7();
    addObject[parentObjectName + 'Id'] = eval(parentObjectName + ".id");
    parentLinkFields.forEach(function (field) {
        addObject[field.childField] = eval(parentObjectName + ".id");
    });
    const staticFields = originalFields.filter(x => x.type === 'static');
    staticFields.forEach(function (field) {
        addObject[field.name] = field.value;
    });
    refreshModalData(fields, objectsName, name, fieldname, '', 'ADD');
    $('#' + tablesDesfinition[name].localModal).modal('show');
}

/*
 * show local edit object modal
 * */
function showLocalEditObjectModal(id, name, fieldname) {
    var fields = eval(fieldname);
    fields = filterSimpleFields(fields, { noEdit: null });
    addObject = addedObjects.find(x => x.id == id && x.name == name).value;
    addObject = JSON.parse(addObject);

    refreshModalData(fields, '', name, fieldname, id, 'EDIT');
    $('#' + tablesDesfinition[name].localModal).modal('show');
}

function refreshModalData(fields, objectsName, name, fieldname, id, localMode = 'ADD') {
    let requiredStatementFn = `if(addObject.NAME==null || addObject.NAME=='') {toastr.error('TITLE is required'); return;}`;
    let requiredFn = "";
    fields.forEach(field => {
        if (field.required == true) {
            requiredFn += requiredStatementFn.replace(/NAME/g, field.name).replace(/TITLE/g, field.title);
        }
        requiredFn += generateValidationStatement(field)
        if (field.default && localMode == 'ADD') {
            addObject[field.name] = field.default;
        }
        displayElementValue(
            {
                name: field.name,
                type: field.type == 'bool' ? 'Boolean' : field.type
            },
            addObject
        )
    })
    if (localMode == 'ADD') {
        var modalClick = requiredFn + ` addObjectFn('` + objectsName + `','` + name + `','` + fieldname + `')`
        $('#' + tablesDesfinition[name].localModal + 'Save').attr('onclick', modalClick);
        $('#' + tablesDesfinition[name].localModal + 'Save').text('ADD');
    }
    else {
        var modalClick = requiredFn + ` editObjectFn('` + id + `', '` + name + `', '` + fieldname + `')`;
        $('#' + tablesDesfinition[name].localModal + 'Save').attr('onclick', modalClick);
        $('#' + tablesDesfinition[name].localModal + 'Save').text('Edit');
    }

}
function addObjectModal(objectsName, name, fieldname) {

    const originalFields = eval(fieldname);

    const fields = filterSimpleFields(originalFields, { noAdd: null });
    const parentLinkFields = originalFields.filter(x => x.type === 'parentLink');
    parentObjectName = objectsName.split('.')[0];
    addObject = {};
    addObject.id = e7();
    addObject[parentObjectName + 'Id'] = eval(parentObjectName + ".id");
    parentLinkFields.forEach(function (field) {
        addObject[field.childField] = eval(parentObjectName + ".id");
    });
    const staticFields = originalFields.filter(x => x.type === 'static');
    staticFields.forEach(function (field) {
        addObject[field.name] = field.name;
    });
    // create the form element
    var form = $('<div class="row"></div>');
    let requiredStatementFn = `if(addObject.NAME==null || addObject.NAME=='') {toastr.error('TITLE is required'); return;}`;
    let requiredFn = "";

    // iterate through the fields
    fields.forEach(function (field) {

        let colDiv = $('<div class="col-md-12"></div>');
        let fieldDiv = $(`<div class="form-group" ${getInputGroupStyleTag(field.type)}></div>`);

        // create the label element
        let label = $(`<label ${getInputLabelStyleTag(field.type)}></label>`).text(field.title);

        let input;

        if (field.required == true) {
            requiredFn += requiredStatementFn.replace(/NAME/g, field.name).replace(/TITLE/g, field.title);
        }
        requiredFn += generateValidationStatement(field)
        addObject[field.name] = field.default;
        switch (field.type) {
            case 'dropdownAsIcon':
            case 'dropdown':
                input = $('<select></select>').attr({
                    id: field.name,
                    class: 'form-control',
                });

                field.options.forEach(function (option) {
                    let id = "";
                    let text = "";
                    if (field.optionsFields != null) {
                        id = field.optionsFields.split(':')[0];
                        id = option[id];
                        text = field.optionsFields.split(':')[1];
                        text = option[text];
                    }
                    else {
                        id = option.split(':')[0];
                        text = id;
                        if (option.includes(':'))
                            text = option.split(':')[1];
                    }

                    input.append($('<option></option>').text(text).attr('value', id));
                });
                if (field.options && field.options[0] && (field.options[0] instanceof String || typeof field.options[0] == 'string')) {
                    if (addObject) {
                        addObject[field.name] = field.options[0].split(':')[0];
                    }
                }
                fieldDiv.append(label).append(input);
                break;

            case 'bool':
                let value = field.default;
                let isChecked = '';
                if (!!value)
                    isChecked = 'checked';
                input = $('<input type="checkbox" id="' + field.name + '" ' + isChecked + ' class="checkbox">');
                label = $('<label for="' + field.name + '" class="switch"></label><label for="' + field.name + '" style="padding-left: 20px;">' + field.title + '</label>');

                fieldDiv.append(input).append(label);
                fieldDiv = $('<div>' + fieldDiv.html() + '</div>');
                break;

            case 'phone':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'tel',
                    class: 'form-control',
                    value: field.default,
                });
                fieldDiv.append(label).append(input);
                break;

            case 'mask':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: field.default,
                }).inputmask(field.mask);
                fieldDiv.append(label).append(input);
                break;

            case 'percent':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: field.default,
                }).inputmask(percentMask);

                const prefix = $(`
                         <div class="input-group-prepend">
                            <span class="input-group-text">%</span>
                         </div>
                `);
                const inputGroup = $(`<div class="input-group"></div>`);
                inputGroup.append(prefix).append(input);
                fieldDiv.append(label).append(inputGroup);
                break;

            case 'money':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: field.default,
                }).inputmask(moneyMask);

                const addPrefix = $(`
                         <div class="input-group-prepend">
                            <span class="input-group-text">${field.currency ?? currencyUnit}</span>
                         </div>
                `);
                const addInputGroup = $(`<div class="input-group"></div>`);
                addInputGroup.append(addPrefix).append(input);
                fieldDiv.append(label).append(addInputGroup);
                break;

            case 'ip':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'text',
                    class: 'form-control',
                    value: field.default,
                    placeholder: "xxx.xxx.xxx.xxx",
                }).inputmask({
                    alias: "ip",
                    greedy: false
                });
                fieldDiv.append(label).append(input);
                break;

            case 'email':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: field.default,
                });
                fieldDiv.append(label).append(input);
                break;

            case 'numeric':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'number',
                    class: 'form-control',
                    value: field.default,
                    max: field.maxValue,
                    min: field.minValue,
                    "onkeyup": "enforceNumberRange($(this))"
                });
                fieldDiv.append(label).append(input);
                break;

            case 'search':
                input = searchInputContent
                    .replace('ENDPOINT', field.endpoint)
                    .replace('FIELDNAME', fieldname);
                fieldDiv.append(label).append(input);
                break;

            case 'internationalCountry':
                const phoneId = fields.find(field => field.type == 'phone')?.name;
                const statesKeys = Object.keys(states);
                const statesHtml = statesKeys
                    .map(stateKey => `<option class="${stateKey.split(',').length > 1 && stateKey.split(',')[1] == "US" ? "isUS" : "isCanada"}" value="${states[stateKey]}">${stateKey.split(',')[0].replace(',', '')}</option>`)
                    .join('');
                const html = HtmlInternationlCountryEditContent
                    .replace('STATES', statesHtml)
                    .replace('UPDATE_PHONE', !!phoneId)
                    .replace('PHONE', phoneId)
                    .replace('DEFAULT_VALUE', field.default);
                fieldDiv = $.parseHTML(html);
                break;

            default:
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: field.default,
                    maxLength: field.maxLength,
                    minLength: field.minLength,
                });
                fieldDiv.append(label).append(input);
                break;
        }

        colDiv.append(fieldDiv);

        form.append(colDiv);
    });

    // add a submit button to the form

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="` + requiredFn + ` addObjectFn('` + objectsName + `','` + name + `','` + fieldname + `');">Add</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    // display the form in the modal
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Add ' + formatName(name));
    refreshFormData(fieldname);
    callEvents(fieldname);
    $('#genericModal').modal('show');
}

function onMoneyChange(fieldName, value) {
    const numberValue = +value.replace(currencyUnit, '').replace(/ /g, '');
    if (numberValue && !isNaN(numberValue)) {
        addObject[fieldName] = numberValue;
    } else {
        addObject[fieldName] = undefined;
    }
}

// this checks the value and updates it on the control, if needed
function enforceNumberRange(sender) {
    let min = parseInt($(sender).attr('min'));
    let max = parseInt($(sender).attr('max'));;
    let value = parseInt($(sender).val());
    if (value > max) {
        $(sender).val(max);
    } else if (value < min) {
        $(sender).val(min);
    }
}

function editObjectModal(id, name, fieldname) {

    var fields = eval(fieldname);
    fields = filterSimpleFields(fields, { noEdit: null });
    addObject = addedObjects.find(x => x.id == id && x.name == name).value;
    addObject = JSON.parse(addObject);
    // create the form element
    var form = $('<div class="row"></div>');

    let requiredStatementFn = `if(addObject.NAME==null || addObject.NAME=='') {toastr.error('TITLE is required'); return;}`;
    let requiredFn = "";
    // iterate through the fields
    fields.forEach(function (field) {

        let colDiv = $('<div class="col-md-12"></div>');

        let fieldDiv = $(`<div class="form-group" ${getInputGroupStyleTag(field.type)}></div>`);

        // create the label element
        let label = $('<label></label>').text(field.title);

        let input;

        if (field.required == true) {
            requiredFn += requiredStatementFn.replace(/NAME/g, field.name).replace(/TITLE/g, field.title);
        }
        requiredFn += generateValidationStatement(field)

        switch (field.type) {
            case 'dropdownAsIcon':
            case 'dropdown':
                input = $('<select></select>').attr({
                    id: field.name,
                    class: 'form-control',
                });
                //input.change(function () {
                //    addObject[field.name] = $(this).val();
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //});

                field.options.forEach(function (option) {
                    let id = "";
                    let text = "";
                    if (field.optionsFields != null) {
                        id = field.optionsFields.split(':')[0];
                        id = option[id];
                        text = field.optionsFields.split(':')[1];
                        text = option[text];
                    }
                    else {
                        id = option.split(':')[0];
                        text = id;
                        if (option.includes(':'))
                            text = option.split(':')[1];
                    }

                    if (addObject[field.name] == id)
                        input.append($('<option selected></option>').text(text).attr('value', id));
                    else
                        input.append($('<option></option>').text(text).attr('value', id));

                });
                fieldDiv.append(label).append(input);
                break;

            case 'bool':
                let value = addObject[field.name];
                let isChecked = '';
                if (!!value)
                    isChecked = 'checked';
                input = $('<input type="checkbox" id="' + field.name + '" ' + isChecked + ' class="checkbox">');
                //input.change(function () {
                //    console.log('text')
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).prop('checked');
                //});
                label = $('<label for="' + field.name + '" class="switch"></label><label for="' + field.name + '">' + field.title + '</label>');

                fieldDiv.append(input).append(label);
                fieldDiv = $('<div>' + fieldDiv.html() + '</div>');
                break;

            case 'phone':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'tel',
                    class: 'form-control',
                    value: addObject[field.name],
                });
                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                fieldDiv.append(label).append(input);
                break;

            case 'mask':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: addObject[field.name],
                }).inputmask(field.mask);
                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                fieldDiv.append(label).append(input);
                break;

            case 'percent':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: addObject[field.name],
                }).inputmask(percentMask);

                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                const prefix = $(`
                         <div class="input-group-prepend">
                            <span class="input-group-text">%</span>
                         </div>
                `);
                const inputGroup = $(`<div class="input-group"></div>`);
                inputGroup.append(prefix).append(input);
                fieldDiv.append(label).append(inputGroup);
                break;

            case 'money':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: addObject[field.name],
                }).inputmask(moneyMask);

                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    onMoneyChange(field.name, $(this).val());
                //});
                const editPrefix = $(`
                         <div class="input-group-prepend">
                            <span class="input-group-text">${field.currency ?? currencyUnit}</span>
                         </div>
                `);
                const editInputGroup = $(`<div class="input-group"></div>`);
                editInputGroup.append(editPrefix).append(input);
                fieldDiv.append(label).append(editInputGroup);
                break;

            case 'ip':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'text',
                    class: 'form-control',
                    value: addObject[field.name],
                    placeholder: "xxx.xxx.xxx.xxx",
                }).inputmask({
                    alias: "ip",
                    greedy: false
                });
                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                fieldDiv.append(label).append(input);
                break;

            case 'email':
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: addObject[field.name],
                });
                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                fieldDiv.append(label).append(input);
                break;

            case 'numeric':
                input = $('<input>').attr({
                    id: field.name,
                    type: 'number',
                    class: 'form-control',
                    value: addObject[field.name],
                    max: field.maxValue,
                    min: field.minValue,
                    "onkeyup": "enforceNumberRange($(this))"
                });
                //input.change(function () {
                //    if (field.actionName) {
                //        eval(`${field.actionName}(addObject)`);
                //    }
                //    addObject[field.name] = $(this).val();
                //});
                fieldDiv.append(label).append(input);
                break;

            case 'internationalCountry':
                const phoneId = fields.find(field => field.type == 'phone')?.name;
                const statesKeys = Object.keys(states);
                const statesHtml = statesKeys
                    .map(stateKey => `<option class="${stateKey.split(',').length > 1 && stateKey.split(',')[1] == "US" ? "isUS" : "isCanada"}" value="${states[stateKey]}">${stateKey.split(',')[0].replace(',', '')}</option>`)
                    .join('');
                let html = HtmlInternationlCountryEditContent
                    .replace('STATES', statesHtml)
                    .replace('UPDATE_PHONE', !!phoneId)
                    .replace('PHONE', phoneId)
                    .replace('DEFAULT_VALUE', addObject[field.name]);
                fieldDiv = $.parseHTML(html);
                break;

            default:
                input = $('<input>').attr({
                    id: field.name,
                    type: field.type,
                    class: 'form-control',
                    value: addObject[field.name],
                    maxLength: field.maxLength,
                    minLength: field.minLength,
                    disabled: field.disabled,
                });

                if (field.largText) {
                    input = $('<textarea/>').attr({
                        id: field.name,
                        type: field.type,
                        class: 'form-control',
                        disabled: field.disabled,
                    }).text(addObject[field.name]);
                }

                fieldDiv.append(label).append(input);
                break;
                break;
        }

        colDiv.append(fieldDiv);

        form.append(colDiv);
    });

    // add a submit button to the form

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="` + requiredFn + ` editObjectFn('` + id + `','` + name + `','` + fieldname + `');">Edit</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    // display the form in the modal
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Edit ' + formatName(name));
    refreshFormData(fieldname);
    callEvents(fieldname, true);
    $('#genericModal').modal('show');
    //if (tablesDesfinition[name]?.onStartEdit) {
    //    tablesDesfinition[name]?.onStartEdit(addObject);
    //}
}

function selectObjectModal(id, name, fieldname) {
    if (tablesDesfinition[name].onSelect) {
        tablesDesfinition[name].onSelect(id, name, fieldname);
    } else {
        editObjectModal(id, name, fieldname);
    }
}

/* 
 * checks if value is valid for type phone number
 */
function getInputGroupStyleTag(fieldName) {
    switch (fieldName) {
        case 'phone':
            return 'style="display: flex; flex-flow: column;"'
            break;
        default:
            return '';
    }
}
/* 
 * checks if value is valid for type phone number
 */
function getInputLabelStyleTag(fieldName) {
    switch (fieldName) {
        case 'phone':
            return 'style="margin-bottom: 8px;"'
            break;
        default:
            return '';
    }
}
/* 
 * Update form data
 */
function refreshFormData(fieldname) {
    var fields = eval(fieldname);
    fields = filterSimpleFields(fields, { noEdit: null });
    // iterate through the fields
    fields.forEach(function (field) {
        switch (field.type) {
            case 'internationalCountry':
                selectCountryState(addObject, 'internationalCountry', 'internationalState')
                $('#internationalZip').val(addObject.zip)
                if (field.hideCity) {
                    $('#internationalCityContainer').hide();
                } else {
                    $('#internationalCity').val(addObject.city)
                }
                break;
            case 'phone':
                initPhoneInput(field.name)
                break;
        }
    });
}
/* 
 * call field events (action names)
 */
function callEvents(fieldname, edit) {
    var fields = eval(fieldname);
    if (edit) {
        fields = filterSimpleFields(fields, { noEdit: null });
    } else {
        fields = filterSimpleFields(fields, { noAdd: null });
    }

    // iterate through the fields
    fields.forEach(function (field) {
        if (field.type == 'bool') {
            $(`#${field.name}`).change(function () {
                addObject[field.name] = $(this).prop('checked');
                executefieldActionName(field)
            });
            executefieldActionName(field)
        } else {
            $(`#${field.name}`).change(function () {
                addObject[field.name] = $(this).val();
                executefieldActionName(field)
            });
            executefieldActionName(field)
        }

    });
}
/* 
 * Execute field action name 
 */
function executefieldActionName(field) {
    if (field.actionName) {
        eval(`${field.actionName}(addObject)`);
    }
}
//#region Validations

/* 
 * Generate validation statement
 */
function generateValidationStatement(field) {
    let statement = '';
    switch (field.type) {
        case 'phone':
            statement += `if(!validatePhoneNumberTypeValue(addObject.${field.name}, '${field.name}', '${field.title}')){return;}`;
            break;
        case 'mask':
            statement += `if(!validateMaskTypeValue(addObject.${field.name}, '${field.title}', ${field.regExValidator})){return;}`;
            break;
        case 'money':
            statement += `if(!validateMoneyTypeValue(addObject.${field.name}, '${field.title}')){return;}`;
            break;
        case 'numeric':
            statement += `if(!validateNumericTypeValue(addObject.${field.name}, '${field.title}')){return;}`;
            break;
        case 'text':
            statement += `if(!validateTextTypeValue(addObject.${field.name}, '${field.title}', ${field.maxLength}, ${field.minLength})){return;}`;
            break;
        case 'email':
            statement += `if(!validateEmailTypeValue(addObject.${field.name}, '${field.title}')){return;}`;
            break;
        case 'internationalCountry':
            statement += `if(!validateInternationalCountry()){return;}`;
            break;
    }
    return statement;
}

/* 
 * checks if value is valid for type phone number
 */
function validatePhoneNumberTypeValue(value, tag, label) {
    if (value && !validatePhoneNumber(tag, { hideToast: true })) {
        toastr.error(`'${value}' is not a valid phone number for ${label}`);
        return false;
    }
    return true;
}

/* 
 * checks if value is valid for type masl
 */
function validateMaskTypeValue(value, key, regEx) {
    if (value && !regEx.test(value)) {
        toastr.error(`'${value}' is not a valid for input ${key}`);
        return false;
    }
    return true;
}

/* 
 * checks if value is valid for type number
 */
function validateNumericTypeValue(value, key) {
    const isNumeric = (num) => (typeof (num) === 'numeric' || typeof (num) === "string" && num.trim() !== '') && !isNaN(num);
    if (value && !isNumeric(value)) {
        toastr.error(`'${value}' is not a valid value for input ${key}`);
        return false;
    }
    return true;
}

/* 
 * checks if value is valid for type amount
 */
function validateMoneyTypeValue(value, key) {
    const numericValue = +value?.toString().replace(currencyUnit, '').trim();
    const isNumeric = (num) => (typeof (num) === 'number' && !isNaN(num));
    if (value && !isNumeric(numericValue)) {
        toastr.error(`'${value}'' is not a valid value for input ${key}`);
        return false;
    }
    return true;
}

/* 
 * checks if value is valid for type text
 */
function validateTextTypeValue(value, key, maxLength, minLength) {
    if (value) {
        if (maxLength && value.length > maxLength) {
            toastr.error(`value for input : '${key}' exceeds max length: ${maxLength}`);
            return false;
        }
        if (minLength && value.length < minLength) {
            toastr.error(`value for input : '${key}' did not reach min length: ${minLength}`);
            return false;
        }
    }
    return true;
}

/* 
 * checks if value is valid for type phone number
 */
function validateEmailTypeValue(value, key) {
    if (value && !validateEmail(value)) {
        toastr.error(`'${value}' is not a valid email for ${key}`);
        return false;
    }
    return true;
}

/* 
 * checks if value is valid for type phone number
 */
function validateInternationalCountry() {
    if ($('#internationalCountry').hasClass('invalid')) {
        toastr.error(`Selected country is not valid`);
        return false;
    }
    return true;
}
//#endregion

function confirmDeleteModal(id, name, fieldname) {
    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this ' + name + '?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="  deleteObjectFn('` + id + `','` + name + `','` + fieldname + `');">Confirm</button>
    </div>`;
    $('#modalFooter').html(footerButtons);
    // display the form in the modal
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete ' + name);
    $('#genericModal').modal('show');

}

function addObjectFn(objectsName, name, fieldname) {
    const type = tablesDesfinition[name]?.type ?? defaultType;
    addedObjects.push({ id: addObject.id, name: name, objectsName: objectsName, value: JSON.stringify(addObject) });
    refreshTable(objectsName, name, fieldname, type);
    if (tablesDesfinition[name]?.onAdd) {
        tablesDesfinition[name]?.onAdd(addObject);
    }
    const modalName = tablesDesfinition[name]?.localModal ?? 'genericModal';
    $('#' + modalName).modal('hide');

}

function editObjectFn(id, name, fieldname) {
    var myObject = addedObjects.find(x => x.id == id && x.name == name);
    myObject.value = JSON.stringify(addObject);
    refreshTable(myObject.objectsName, name, fieldname);
    const modalName = tablesDesfinition[name]?.localModal ?? 'genericModal';

    if (tablesDesfinition[name]?.onEdit) {
        tablesDesfinition[name]?.onEdit(addObject);
    }
    $('#' + modalName).modal('hide');
}

function deleteObjectFn(id, name, fieldname) {
    var myObject = addedObjects.find(x => x.id == id && x.name == name);
    addedObjects = removeObjectById(addedObjects, id);
    refreshTable(myObject.objectsName, name, fieldname);

    if (tablesDesfinition[name]?.onDelete) {
        tablesDesfinition[name]?.onDelete(id);
    }
    $('#genericModal').modal('hide');
}


let modifiedEntity = [];

function addModifiedEntity(entityName) {
    if (!modifiedEntity) {
        modifiedEntity = [entityName];
    } else if (!modifiedEntity.includes(entityName)) {
        modifiedEntity = [...modifiedEntity, entityName]
    }
}

async function saveSubTableData() {
    if (MODE == 'EDIT') {
        addedObjects.forEach(z => {
            var datastring = z.objectsName + "=[];";
            eval(datastring);
        });
    }

    addedObjects.forEach(z => {
        var exist = modifiedEntity.find(x => x == z.objectsName.split('.')[1]);
        if (exist == null)
            modifiedEntity.push(z.objectsName.split('.')[1]);
        var datastring = z.objectsName + ".push(" + z.value + ")";
        eval(datastring);
    });
}

// ************************** END SUB TABLE CODE ******************************* //



// ************************** LIST TABLE CODE *********************************** //

function populateListTable(objects, name, fieldname, source) {


    var fullElementTemplate = `
         <table id="datatable_` + name + `" class="table table-striped table-hover" style="border:1px solid #e8e8e8 ;">
         </table>`;

    $('#placeholder_' + name).html(fullElementTemplate);

    refreshListTable(objects, name, fieldname, source)
}

function addItemToListTable(objectName, name, fieldname, itemId, sourceName) {


    var objects = eval(objectName);

    if (objects == null)
        objects = '';
    if (!objects.includes(itemId))
        objects += itemId + ',';
    else {
        toastr.error('Item was already added');
    }

    eval(objectName + "='" + objects + "';")
    refreshListTable(objectName, name, fieldname, sourceName);
}


function deleteItemToListTable(id, objectName, name, fieldname, sourceName) {
    var objects = eval(objectName);

    if (objects == null)
        objects = '';

    objects = objects.replace(id + ',', '');
    console.log('AddItem');
    eval(objectName + "='" + objects + "';")
    refreshListTable(objectName, name, fieldname, sourceName);

}

function refreshListTable(objectName, name, fieldname, sourceName) {
    var tableId = 'datatable_' + name;
    var type = tablesDesfinition[name]?.type ?? defaultType;
    var source = eval(sourceName);
    var objects = eval(objectName);

    if (objects == null)
        return;

    objects = objects.split(',');

    var fields = eval(fieldname);
    fields = filterSimpleFields(fields, { noTitle: null });
    var table = $('#' + tableId);
    table.empty();
    var headerRow = $('<tr></tr>');
    if (type == "select") {
        headerRow.append('<th></th>');
    }

    fields.forEach(function (field) {
        let suffix = '';
        if (field.type == 'money') {
            suffix = ` (${field.currency ?? currencyUnit})`;
        }
        else if (field.type == 'percent') {
            suffix = ` (${percent})`;
        }
        headerRow.append('<th>' + field.title + suffix + '</th>');
    });

    if (type == defaultType) {
        if (!tablesDesfinition[name]?.hideDelete) {
            headerRow.append('<th></th>');
        }
    }

    var thead = $('<thead class="ant-table-thead"></thead>').append(headerRow);

    var tBody = $('<tbody class="ant-table-tbody"></tbody>');

    // iterate through the objects
    objects.forEach(function (object, index) {
        // create a row element for the object

        if (object == '' || object == null)
            return;
        var row = $('<tr id=row' + name + '_' + index + '></tr>');
        var Item = source.find(x => x.id == object);
        if (!Item) {
            return;
        }
        // add the specified fields to the row
        fields.forEach(function (field) {
            switch (field.type) {
                case 'dropdown':
                    if (Item[field.name] != null && Item[field.name] != '') {

                        var myOption = field.options.find(x => x.split(':')[0] == Item[field.name])
                        var value = myOption.split(':')[1];
                        row.append('<td>' + value + '</td>');
                    }
                    else
                        row.append('<td></td>');
                    break;
                case 'bool':
                    var value = Item[field.name];
                    let isChecked = '';
                    if (!!value)
                        isChecked = 'checked';
                    row.append('<td> <input type="checkbox" class="checkbox" ' + isChecked + '><label for="addisDefault" class="switch"></label></td>');
                    break;
                case 'dropdownAsIcon':
                    row.append('<td>' + todropdownAsIconFormat(Item[field.name], field.options) + '</td>');
                    break;
                case 'image':
                    row.append('<td>' + toImageFormat(Item[field.name]) + '</td>');
                    break;
                case 'money':
                    row.append('<td>' + toMoneyFormat(Item[field.name]) + '</td>');
                    break;
                case 'percent':
                    row.append('<td>' + toPercentFormat(Item[field.name]) + '</td>');
                    break;
                case 'tags':
                    row.append('<td>' + toTagsFormat(Item[field.name]) + '</td>');
                    break;
                case 'date':
                    row.append('<td>' + toDateFormat(Item[field.name]) + '</td>');
                    break;
                case 'datetime':
                    row.append('<td>' + toDateTimeFormat(Item[field.name]) + '</td>');
                    break;
                case 'email':
                    row.append('<td>' + toEmailFormat(Item[field.name]) + '</td>');
                    break;
                case 'enum':
                    row.append('<td>' + toEnumFormat(Item[field.name], field.switchToLabel, field.options) + '</td>');
                    break;
                default:
                    row.append('<td>' + toSimpleText(Item[field.name]) + '</td>');
                    break;
            }
        });
        var id = object;

        // add the buttons to the row
        if (!tablesDesfinition[name]?.hideDelete) {
            // create the edit and delete buttons
            var deleteButton = $(`<a class="btn btn-slick text-warning"  onClick="deleteItemToListTable('` + id + `','` + objectName + `','` + name + `','` + fieldname + `','` + sourceName + `');return false;"><i class="fa fa-trash"></i></a>`);
            row.append($('<td></td>').append(deleteButton));
        }
        // add the row to the table
        tBody.append(row);
    });

    table.append(thead);
    table.append(tBody);


}

// ************************** END LIST TABLE CODE ******************************* //

function loadDropdown(data, dropdownId, textFieldName) {
    // Get the dropdown element
    var dropdown = $('#' + dropdownId);

    if (textFieldName == null)
        textFieldName = 'name';

    // Clear the dropdown
    dropdown.empty();

    // Add an option for each piece of data
    for (var i = 0; i < data.length; i++) {
        const option = "<option value='" + data[i].id + "'>" + data[i][textFieldName] + "</option>";
        dropdown.append(option);
    }

}
function loadDropdownAddEmpty(data, dropdownId, textFieldName, defaultValue = '') {
    if (data) {
        const emptyItem = {
            id: ''
        };
        emptyItem[textFieldName ?? 'name'] = defaultValue;
        data.unshift(emptyItem)
    }
    loadDropdown(data, dropdownId, textFieldName);
}
function loadDropdownWithOptions(dataSource, dropdownId, textFieldName, props = {}) {

    var data = JSON.parse(JSON.stringify(dataSource));

    if (props) {
        if (props.includeEmpty) {
            const emptyItem = {
                id: ''
            };
            emptyItem[textFieldName ?? 'name'] = props.emptyOptionLabel ?? '';
            data.unshift(emptyItem)
        }
        if (props.extraOptions) {
            if (props.addExtraOnTop) {
                data = [...(props.extraOptions ?? []), ...(data ?? [])]
            } else {
                data = [...(data ?? []), ...(props.extraOptions ?? [])]
            }
        }
    }
    loadDropdown(data, dropdownId, textFieldName);

}

/*
 * Formats Pascal name of table to simple text
 */
function formatName(str) {
    return str
        // Look for long acronyms and filter out the last letter
        .replace(/([A-Z]+)([A-Z][a-z])/g, ' $1 $2')
        // Look for lower-case letters followed by upper-case letters
        .replace(/([a-z\d])([A-Z])/g, '$1 $2')
        // Look for lower-case letters followed by numbers
        .replace(/([a-zA-Z])(\d)/g, '$1 $2')
        .replace(/^./, function (str) { return str.toUpperCase(); })
        // Remove any white space left around the word
        .trim();
}

//#region FormValidations


/*
 * Formats Pascal name of table to simple text
 */
function validateFormInputs() {
    allValid = true;
    $("input[type=email]").each(function () {
        if (allValid) {
            allValid = validateEmailTypeValue($(this).val(), $(this).siblings("label").text())
        }
    });
    return allValid;
}
//#endregion