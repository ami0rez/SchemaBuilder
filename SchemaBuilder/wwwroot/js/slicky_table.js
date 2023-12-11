var NAME;
var LINK;
var MYACTION;
var myID;
var InternalSearchTerm;
var InternalSortBy = '';
var InternalSortByText = '';
var InternalOriginalSortBy = '';
var internalPageNumber = 1;
var internalDatatable = {};
var SHOWBULK = false;
var BULKACTIONS = '';

function modalTemplate(name, link, action, fieldName, THISID) {
    $('#templateName').html(fieldName);

    myID = THISID
    NAME = name;
    LINK = link;
    MYACTION = action;
    $('#RemoveBlockModal').modal('show');
}

function deleteModal() {

    ajaxCall("DELETE", null, LINK, NAME + " " + MYACTION + " Successfully", NAME, closeModal);
}

function closeModal() {
    $('#del_' + myID).empty();
    $('#closeButton').click();
    if (internalDatatable.url == "" || internalDatatable.url == null || internalDatatable.url == undefined) {
        const indexOfObject = internalDatatable.data.findIndex(object => {
            return object.id === myID;
        });
        internalDatatable.data.splice(indexOfObject, 1);
    }

}

function findRowsCount(count, andSort) {
    if (andSort == null || andSort.length == 0)
        return Math.ceil(8 / (count - 4));
    else
        return Math.ceil(6 / (count - 6));

}
function findNormalRowsCount(count) {
    return Math.ceil(12 / (count));
}


class slickyTable {
    #columnHTML
    emptySearchPhrase
    emptyPhrase
    constructor({ id, url, pageSize, extraLink, columns = [], bulkActions = [], actions = [], title, link, deleteLink, param, linkFromSource, importAction, exportAction, search, filters = [], flags = [], sorts = [], data = [], addButtonFlag, isPopUp } = {}) {

        this.columns = columns;
        this.bulkActions = bulkActions;
        this.filters = filters;
        this.flags = flags;
        this.title = title;
        this.link = link;
        this.deleteLink = deleteLink;
        this.param = param;
        this.addButtonFlag = addButtonFlag;
        this.sorts = sorts;
        this.search = search;
        this.importAction = importAction;
        this.exportAction = exportAction;
        this.actions = actions;
        this.pageSize = pageSize;
        this.data = data;
        this.id = id;
        this.url = url;
        this.extraLink = extraLink;
        if (linkFromSource == null)
            this.linkFromSource = false;
        else
            this.linkFromSource = linkFromSource;
        this.rows = {};
        this.columnSize = 0;
        this.#columnHTML = `<th class='MYCLASS'>COLUMN_NAME</th>`;
        this.emptySearchPhrase = `<h3><img src="/img/search_not_found.png" style="max-width:300px;padding:25px;"> </h3><h5 style="padding:25px;">Your search for "SEARCH_WORD" didn't return any results. Try modifying the filter or search term<br></h5>`;
        this.emptyPhrase = `<h3><img src="/img/search_not_found.png"  style="max-width:300px;padding:25px;"></i> </h3><h5 style="padding:25px;">There is no data </h5>`;
        if (isPopUp == 'True')
            this.isPopUp = true;
        else
            this.isPopUp = false;

    }


    showHeaders() {
        var myRowHeader = `<thead class="ant-table-thead">
                                    CONTENT
                                </thead>`;
        var mycontent = '';
        var self = this;
        if (this.bulkActions != null && this.bulkActions.length != 0) {
            mycontent += `<th rowspan="1" colspan="1" style="padding-left:20px;"><input type=checkbox onClick="selectAll(this)" aria-controls="masterDataTable"/> </th>`;
        }
        var getSorting = getSortByNameAndOrder();


        if (this.columns.length > 0) {
            for (var i = 0; i < this.columns.length; i++) {
                var name = '';
                if (this.columns[i].name != null)
                    name = this.columns[i].name;
                var className = '';
                if (this.columns[i].className != null && this.columns[i].className != '')
                    className = this.columns[i].className

                mycontent += this.#columnHTML.replace(/COLUMN_NAME/g, name + " <span id='HEADER_" + this.columns[i].data.replace(" ", "_") + "'></span>").replace('MYCLASS', className);
            }
        }
        var bulkButton = `<button type="button" id="bulk" class="ant-btn btn-cta btn-gray" disabled onClick="showTheBulkLine()"><span> Bulk Action</span></button>`;


        if (this.actions != null && this.actions.length != 0) {
            if (this.bulkActions != null && this.bulkActions.fields != null && this.bulkActions.fields.length > 0)
                mycontent += `<th rowspan="1" colspan="1"  style="text-align:right;padding-right:50px;">` + bulkButton + `</th>`;
            else
                mycontent += `<th rowspan="1" colspan="1" ></th>`;
        }
        else {
            if (this.bulkActions != null && this.bulkActions.length != 0)
                mycontent += `<th rowspan="1" colspan="1"  style="text-align:right;padding-right:50px;">` + bulkButton + `</th>`;
            else
                mycontent += `<th rowspan="1" colspan="1"></th>`;

        }
        return myRowHeader.replace('CONTENT', mycontent);
    }

    showRowData(row, number) {

        var isSearchContinue = false;
        if ((this.url == '' || this.url == null) && (InternalSearchTerm != '' && InternalSearchTerm != null)) {
            // SEARCH IS ACTIVATED

            for (var i = 0; i < this.columns.length; i++) {
                if (this.columns[i].data != null && this.columns[i].data != '') {
                    var myValue = String(row[this.columns[i].data]);

                    if (myValue.toLowerCase().includes(InternalSearchTerm.toLowerCase())) {
                        isSearchContinue = true;
                        continue;
                    }
                }
            }

            if (!isSearchContinue)
                return '';
        }

        var myRow = `<tr class="NUMBER_TYPE" id='del_` + row["id"] + `'>
                                    CONTENT
                                </tr>`;
        var mycontent = '';

        if (this.columns.length > 0) {
            if (this.bulkActions != null && this.bulkActions.length != 0) {
                mycontent += `<td style="max-width: 50px;padding-left:20px;"><input type=checkbox name='check_BULK' value='` + row["id"] + `' onClick="if(this.checked)$('#bulk').prop('disabled',false);"/> </td>`;
            }
            for (var i = 0; i < this.columns.length; i++) {
                var columnContent = '';

                if (this.columns[i].defaultContent != null && this.columns[i].defaultContent != '')
                    columnContent = this.columns[i].defaultContent;
                else {
                    if (this.columns[i].data == null && this.columns[i].data == '')
                        columnContent = ''
                    else {
                        if (this.columns[i].render == null)
                            columnContent = row[this.columns[i].data] ?? '';
                        else {
                            columnContent = this.columns[i].render(row[this.columns[i].data], row) ?? '';
                        }
                    }
                }
                var className = '';
                if (this.columns[i].className != null && this.columns[i].className != '')
                    className = this.columns[i].className
                if (this.columns[i].action != null && this.columns[i].action != '') {
                    var myAction = this.actions.find(x => x.action == this.columns[i].action);
                    var link = '';
                    var noLink = false;
                    if (myAction.noShowFlagId != null && myAction.noShowFlagValue != null) {
                        console.log("ROW " + myAction.noShowFlagId + "=" + myAction.noShowFlagValue + " ?? " + row[myAction.noShowFlagId])
                        if (row[myAction.noShowFlagId].toString() == myAction.noShowFlagValue)
                            noLink = true;
                    }

                    let mylink = "";
                    if (this.linkFromSource)
                        mylink = "/";
                    if (myAction.link == null || myAction.link == '') {
                        if (this.link != null && this.link != '') {
                            if (this.param == '' || this.param == null)
                                link = mylink + this.link + "?id=" + row["id"];
                            else
                                link = mylink + this.link + "?id=" + row["id"] + this.param;
                        }
                    }
                    else {
                        link = mylink + myAction.link;
                        link += "?id=" + row["id"];

                    }

                    if (link != '') {
                        if (myAction.extra != null && myAction.extra != '')
                            link += "&" + myAction.extra;
                    }
                    if (link != '' && this.isPopUp) {
                        link += '&isPopUp=true';
                    }
                    if (noLink == false)
                        mycontent += "<td class='" + className + "'><a href='" + link + "'>" + columnContent + "</a></td>";
                    else
                        mycontent += "<td class='" + className + "'>" + columnContent + "</td>";

                }
                else
                    mycontent += "<td class='" + className + "'>" + columnContent + "</td>";
            }

            if (this.actions != null && this.actions.length != 0) {

                var noContent = true;
                for (var i = 0; i < this.actions.length; i++) {
                    if (this.actions[i].noShowFlagId != null && this.actions[i].noShowFlagValue != null) {
                        if (row[this.actions[i].noShowFlagId].toString() == this.actions[i].noShowFlagValue)
                            continue;
                    }
                    noContent = false;
                }
                if (noContent)
                    mycontent += `<td> </td>`;
                else {
                    mycontent += `<td style="text-align:right;padding-right:110px;">`;
                    mycontent += `<div class="dropdown">
                                                <a class="no-link-style dropdown-toggle " id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="false">
                                                    <span><i style="color:#B6B4BA;" class="fas fa-ellipsis-h"></i></span>
                                                </a>`;
                    mycontent += `<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">`;

                    for (var i = 0; i < this.actions.length; i++) {
                        var link = '';

                        if (this.actions[i].noShowFlagId != null && this.actions[i].noShowFlagValue != null) {

                            if (row[this.actions[i].noShowFlagId].toString() == this.actions[i].noShowFlagValue)
                                continue;
                        }
                        if (this.actions[i].jsAction != null && this.actions[i].jsAction != "") {
                            link = this.actions[i].jsAction + "('" + row["id"] + "');return false;";
                        }
                        else {
                            let mylink = "";
                            if (this.linkFromSource)
                                mylink = "/";
                            if (this.actions[i].link == null || this.actions[i].link == '') {
                                if (this.param == '' || this.param == null)
                                    link = mylink + this.link + "?id=" + row["id"];
                                else
                                    link = mylink + this.link + "?id=" + row["id"] + this.param;
                            }
                            else {
                                link = this.actions[i].link;
                                if (this.param == '' || this.param == null)
                                    link += "?id=" + row["id"];
                                else
                                    link += "?id=" + row["id"] + this.param;
                            }
                            if (link != '') {
                                if (this.actions[i].extra != null && this.actions[i].extra != '')
                                    link += '&' + this.actions[i].extra;
                            }
                            if (link != '' && this.isPopUp) {
                                link += '&isPopUp=true';
                            }

                        }




                        if (link != '') {
                            if (this.actions[i].modal != null && this.actions[i].modal == true) {
                                var fieldName = '';
                                var title = this.title;
                                if (this.actions[i].fieldName != null && this.actions[i].fieldName != '')
                                    fieldName = row[this.actions[i].fieldName];
                                if (this.actions[i].action == 'Delete' && this.deleteLink != '' && this.deleteLink != null)
                                    link = this.deleteLink + "?id=" + row["id"];
                                mycontent += `<a class="dropdown-item" href="#"  onclick="modalTemplate('` + title + `','` + link + `','` + this.actions[i].action + `','` + fieldName + `','` + row["id"] + `'); return false;"> ` + this.actions[i].action + `</a>`;

                            }
                            else {
                                if (this.actions[i].jsAction != null && this.actions[i].jsAction != "") {
                                    mycontent += `<a class="dropdown-item" href="#" onClick="` + link + `">` + this.actions[i].action + `</a>`;
                                }
                                else {
                                    mycontent += `<a class="dropdown-item" href="` + link + `">` + this.actions[i].action + `</a>`;
                                }



                            }
                        }
                    }
                    mycontent += `</div></td>`;
                }
            }
            else {
                if (this.bulkActions != null && this.bulkActions.length != 0)
                    mycontent += `<td> </td>`;


            }

        }
        myRow = myRow.replace('CONTENT', mycontent);
        if (number % 2 == 0)
            myRow = myRow.replace('NUMBER_TYPE', "even");
        else
            myRow = myRow.replace('NUMBER_TYPE', "odd");
        return myRow;
    }

    showBulk() {
        var myRow = `<tr  id='bulkRow' style="display:none">
                                    CONTENT
                                </tr>`;
        var mycontent = '';
        mycontent += `<td>  </td>`;

        if (this.columns.length > 0) {
            for (var i = 0; i < this.columns.length; i++) {
                if (this.columns[i].data != null && this.columns[i].data != '') {
                    if (this.bulkActions.fields.some(e => e.name === this.columns[i].data)) {
                        var selectedField = this.bulkActions.fields.find(e => e.name === this.columns[i].data);
                        console.log(selectedField);
                        if (selectedField.query == null || selectedField.query == '')
                            mycontent += `<td><input placeholder="` + this.columns[i].name + `" class="ant-input" type="text"   onchange="BulkValue($(this).val(),'` + this.columns[i].data + `');"></td>`;
                        else {
                            mycontent += `<td style="text-align:right;padding-right:110px;">`;

                            mycontent += `<select class="ant-input"  onchange="BulkValue($(this).val(),'` + this.columns[i].data + `');">
                                                                <option value="">` + this.columns[i].name + `</option>`;
                            var list = selectedField.query;
                            for (var j = 0; j < selectedField.query.length; j++) {
                                if (!list[j].includes('|'))
                                    list[j] = list[j] + "|" + list[j];

                                var myData = list[j].split('|');
                                var myValue = myData[0];

                                var myText = myData[1];
                                if (myData.length > 1)
                                    myText = myData[1];
                                mycontent += `     <option value='` + myValue + `'>` + myText + `</option>`;
                            }
                            mycontent += `</select></td>`;

                        }
                    }
                    else
                        mycontent += `<td> -- </td>`;
                }
            }

        }
        mycontent += `<td> <button type="button" id="bulk" class="ant-btn-sm btn-cta btn-primary" onclick="updateBulkActionValues()"><span> Save</span></button> <button type="button" id="bulk" class="ant-btn-sm btn-cta btn-white" onclick="closeBulkActionValues()"><span> Cancel</span></button></td>`;
        myRow = myRow.replace('CONTENT', mycontent);
        myRow = myRow.replace('NUMBER_TYPE', "");
        return myRow;;

    }


    showBody(data) {
        var mytable = `ROWS`;
        var myRow = '';
        this.rows = data;
        var bulkRow = '';

        if (this.bulkActions != null && this.bulkActions.fields != null && this.bulkActions.fields.length > 0) {
            bulkRow = this.showBulk();

        }

        if (data.length > 0) {

            var startingI = data.length <= this.pageSize ? 0 : (this.pageSize * (internalPageNumber - 1));
            var maxRecord = data.length <= this.pageSize ? data.length : (data.length < (startingI + this.pageSize) ? (data.length) : (this.pageSize + startingI));


            for (var i = startingI; i < maxRecord; i++) {
                myRow += this.showRowData(data[i], i);
            }
        }
        return mytable.replace('ROWS', bulkRow + myRow);
    }

    display() {
        if (this.columns == null || this.columns.length == 0) {
            $('#' + this.id).html("No Columns have been defined to display in the table -  Setup Error");
            return;
        }
        var columnSize = this.columns.length;

       // if (this.actions != null && this.actions.length != 0) {
            columnSize += 1;
       // }
        console.log('columnSize: ' + columnSize);
        console.log('this.bulkActions');
        console.log(this.bulkActions);

        if (this.bulkActions != null && this.bulkActions.fields != null && this.bulkActions.fields.length > 0) {
            columnSize += 2;
            if (this.actions != null && this.actions.length != 0) {
                columnSize -= 1;
            }

        }
        console.log('columnSize: ' + columnSize);

        this.columnSize = columnSize;
        var preMasterOptions = '';
        var preMasterQuery = '';
        if (this.importAction != null && !this.isPopUp) {
            preMasterOptions += ` <a href='#' onClick="showImports('` + this.importAction.fields + `','` + this.importAction.defaultFields + `')" class="ImportExport">Import</a>`;

        }
        if (this.exportAction != null && !this.isPopUp) {
            preMasterOptions += ` <a href='#' onClick="showExports('` + this.exportAction.fields + `','` + this.exportAction.defaultFields + `')"class="ImportExport">Export</a>`;
        }

        let myparam = '';

        if (this.extraLink != null && this.extraLink == '') {
            myparam = '?' + this.extraLink;
            if (this.param != null && this.param != '')
                myparam = myparam + this.param;
        }
        else
            if (this.param != null && this.param != '')
                myparam = "?" + this.param.slice(1);



        if (this.link != null && this.link != '' && ((this.addButtonFlag != null && this.addButtonFlag == true) || this.addButtonFlag == null) && !this.isPopUp) {
            let mylink = "";
            if (this.linkFromSource)
                mylink = "/" + this.link + myparam;
            else
                mylink = "./" + this.link + myparam;
            preMasterOptions += `<a href="` + mylink + `" id="add${this.toCamelCase(this.title)}" class="ant-btn btn-cta btn-primary"><i class="fas fa-plus-circle"></i><span> Add ` + this.title + ` </span></a>`;
        }



        preMasterOptions = `<div class="row" style="margin-bottom:20px"><div class=col-md-6><h3 class="text-primary section-title" style="text-transform:capitalize;">` + (this.title ?? '') + `${this.title ? ' List' : ''}</h3></div>  <div class="col-md-6 text-right"> ` + preMasterOptions + `</div> </div>`
        var queryColumn = 0;
        if (this.search != null && this.search != '')
            queryColumn += 4;
        if (this.sorts.length != null && this.sorts.length > 0)
            queryColumn += 2;
        if (this.flags != null && this.flags.length > 0)
            queryColumn += this.flags.length;
        if (this.filters != null && this.filters.length > 0)
            queryColumn += this.filters.length;

        var rowSize = 0;
        if (queryColumn > 0) {
            if (this.search != null && this.search != '')
                rowSize = findRowsCount(queryColumn, this.sorts.length);
            else
                rowSize = findNormalRowsCount(queryColumn);
            preMasterQuery = `<div class="row">`;
            if (this.search != null && this.search != '') {
                preMasterQuery += `<div class="col-md-4"><span class="ant-input-search ant-input-search-enter-button ant-input-affix-wrapper">
                                                <input placeholder="Search By ` + this.search.text + `" class="ant-input input-lg" type="text" aria-controls="masterDataTable" oninput="SearchSlickyTable(this)">
                                                <span class="ant-input-suffix"  style="padding-right:20px">
                                                        <i class="anticon anticon-search"></i>
                                                </span>
                                            </span></div>`;
            }
            if (this.filters != null && this.filters.length > 0) {

                for (var j = 0; j < this.filters.length; j++) {
                    preMasterQuery += `<div class="col-md-` + rowSize + `">`;
                    var name = this.filters[j].name;
                    var thisId = this.filters[j].id;
                    if (thisId == null || thisId == '')
                        thisId = name;
                    var list = [];
                    if (this.filters[j].type = "DEL") // DELIMINATED
                    {
                        list = this.filters[j].data;
                    }

                    preMasterQuery += `<select id="` + thisId + `" class="ant-input input-lg"  onchange="SearchSlickyTable(this,'` + thisId + `');">
                                                                <option value="">` + name + `</option>`
                    for (var i = 0; i < list.length; i++) {
                        if (!list[i].includes('|'))
                            list[i] = list[i] + "|" + list[i];

                        var myData = list[i].split('|');
                        var myValue = myData[0];

                        var myText = myData[1];
                        if (myData.length > 1)
                            myText = myData[1];
                        preMasterQuery += `     <option value='|` + thisId + `:` + myValue + `'>` + myText + `</option>`;
                    }
                    preMasterQuery += `</select>`;
                    preMasterQuery += `</div>`;
                }
            }
            else {
                var rowSize = 12;
                if (this.search != null && this.search != '')
                    rowSize -= 4;
                if (this.sorts.length != null && this.sorts.length > 0)
                    rowSize -= 2;


                preMasterQuery += `<div class="col-md-` + rowSize + `"></div>`;
            }
            if (this.sorts != null && this.sorts.length > 0) {  // Must be Last
                preMasterQuery += `<div class="col-md-1" style='text-align:right; padding-right: 20px;' id=sortText></div><div class="col-md-1" style='text-align:right;    padding-right: 20px;padding-left: unset;'>`;
                preMasterQuery += `<select id=sortSlicky class="ant-input input-lg" style='width:100px;text-align:left' onchange="SearchSlickyTable(this,null,'SORTING');$('#sortText').html($('#sortSlicky option:selected').text());$('#sortSlicky').val('')">
                                                                <option value="">Sort</option>`
                for (var i = 0; i < this.sorts.length; i++) {
                    if (this.sorts[i].orderBy == null || this.sorts[i].orderBy == '')
                        this.sorts[i].orderBy = 0;
                    var myText = this.sorts[i].name;
                    var myValue = "&orderField=" + this.sorts[i].orderField + "&orderBy=" + this.sorts[i].orderBy;


                    preMasterQuery += `     <option value='` + myValue + `'>` + myText + `</option>`;
                }
                preMasterQuery += `</select>`;
                preMasterQuery += `</div>`;
            }

            preMasterQuery += `</div>`;
        }

        var masterTable = ` 
                    <div class="box box-default style-default-bright">
                       <div class="table-responsive">
                                    <table  class="table table-striped table-hover dt-responsive display nowrap" cellspacing="0" id="masterDataTable">HEADER_CONTENT
                                        <tbody class='ant-table-tbody'><tr id='tSpinner'><td colspan=COLUMNSIZE style="height:200px; text-align:center">TBODY_CONTENT</td></tr></tbody>
                                        <tbody class='ant-table-tbody' id='tBodyContent'></tbody>
                                        <tbody class='ant-table-tbody'><tr><td colspan=COLUMNSIZE class="g-color-gray-dark-v6" style="height:200px; text-align:center;" id='tEmpty'>` + this.emptyPhrase + `</td></tr></tbody>
                                        <tbody class='ant-table-tbody'><tr><td colspan=COLUMNSIZE style="background: white;height:100px; text-align:center;text-transform: uppercase;" id='tPaging'></td></tr></tbody>
                                    </table>
                         </div>
                        <i class="bi bi-hand-index-thumb rotative-hand mb-2"></i>
                    </div>`;

        masterTable = masterTable.replace('HEADER_CONTENT', this.showHeaders());

        masterTable = masterTable.replace('TBODY_CONTENT', spinnersHTML).replace(/COLUMNSIZE/g, columnSize);
        masterTable = preMasterOptions + preMasterQuery + masterTable;
        $('#' + this.id).html(masterTable + loadDeleteModal(this.title));

        internalDatatable = this;
        getSortByData(internalDatatable);
        if (InternalOriginalSortBy == '')
            InternalOriginalSortBy = InternalSortBy;
        InternalSearchSlickyTable(internalDatatable);
    }

    toCamelCase(text) {
        return text.replace(/[\s-](.)/g, function (match, group1) {
            return group1.toUpperCase();
        });
    }

}



function selectAll(mObject) {

    $('#bulk').prop('disabled', false);
    var value = $(mObject).prop('checked');
    var myTable = $(mObject).attr('aria-controls');
    var checkboxes = $('#' + myTable).children().find('[type="checkbox"]').each(function () {
        $(this).prop('checked', value);
    });

}

function SearchSlickyTable(mObject, filterName, sortBy) {
    var value = $(mObject).val();
    if (InternalSearchTerm == null)
        InternalSearchTerm = '';
    if (sortBy == null) {
        internalPageNumber = 1;
        if (filterName != null && filterName != '') {
            if (InternalSearchTerm.includes('|' + filterName + ':')) {
                var oldSs = InternalSearchTerm.split('|');
                var oldValue = oldSs.find(x => x.split(':')[0] == filterName);
                InternalSearchTerm = InternalSearchTerm.replace('|' + oldValue, value);
            }
            else
                InternalSearchTerm += value;
        }
        else {
            if (InternalSearchTerm.includes('|')) {
                if (InternalSearchTerm[0] == '|')
                    InternalSearchTerm = value + InternalSearchTerm
                else {
                    var oldSs = InternalSearchTerm.split('|');
                    InternalSearchTerm = value;
                    for (var i = 1; i < oldSs.length; i++) {
                        InternalSearchTerm += '|' + oldSs[i];
                    }
                }
            }
            else
                InternalSearchTerm = value;
        }
    }
    else {
        if (value == '')
            value = InternalOriginalSortBy;
        if (internalDatatable.url != null && internalDatatable.url != '')
            internalDatatable.url = internalDatatable.url.replace(InternalSortBy, value);
        else
            internalDatatable.sortValue = value;

        getSortByData(internalDatatable);

    }



    InternalSearchSlickyTable(internalDatatable);
}

function gotoPage(pageNumber, next, previous) {
    if (pageNumber != null)
        internalPageNumber = pageNumber;
    if (next != null)
        internalPageNumber++;
    if (previous != null)
        internalPageNumber--;

    InternalSearchSlickyTable(internalDatatable);
}


function getSortByNameAndOrder() {
    if (InternalSortBy == '' || InternalSortBy == null)
        return '';
    var orderField;
    var orderBy;
    for (var i = 0; i < InternalSortBy.split('&').length; i++) {
        if (InternalSortBy.split('&')[i] != null && InternalSortBy.split('&')[i] != '') {

            if (InternalSortBy.split('&')[i].split('=')[0] == 'orderField')
                orderField = InternalSortBy.split('&')[i].split('=')[1];
            if (InternalSortBy.split('&')[i].split('=')[0] == 'orderBy')
                orderBy = InternalSortBy.split('&')[i].split('=')[1];
        }
    }

    return orderField + '|' + orderBy;

}

function updateSlickyHeader(id, by, allNames) {
    console.log("updateSlickyHeader: " + id);
    console.log("updateSlickyHeader: " + by);
    if (by == "0")
        $('#HEADER_' + id.replace(" ", "_")).html('<i class="fas fa-caret-down"></i>')
    else
        $('#HEADER_' + id.replace(" ", "_")).html('<i class="fas fa-caret-up"></i>')
}

function getSortByData(xDatatable) {

    if (xDatatable.url == '' || xDatatable.url == null) {

        var orderField;
        var orderBy;
        if (xDatatable.sortValue == null || xDatatable.sortValue == '')
            return;
        if (xDatatable.data == null)
            return;
        if (xDatatable.data.length == 0)
            return;

        for (var i = 0; i < xDatatable.sortValue.split('&').length; i++) {
            if (xDatatable.sortValue.split('&')[i] != null && xDatatable.sortValue.split('&')[i] != '') {

                if (xDatatable.sortValue.split('&')[i].split('=')[0] == 'orderField')
                    orderField = xDatatable.sortValue.split('&')[i].split('=')[1];
                if (xDatatable.sortValue.split('&')[i].split('=')[0] == 'orderBy')
                    orderBy = xDatatable.sortValue.split('&')[i].split('=')[1];
            }
        }

        if (orderField == null || orderBy == null || orderField == '' || orderBy == '')
            return;
        if (orderBy == 0)
            xDatatable.data.sort((a, b) => (a[orderField] > b[orderField]) ? 1 : -1);
        else
            xDatatable.data.sort((a, b) => (a[orderField] < b[orderField]) ? 1 : -1);

        updateSlickyHeader(orderField, orderBy);
        return;
    }


    var url = xDatatable.url;

    if (url.includes("orderField")) {
        var ss = url.split('&');
        var values = '';
        var orderField;
        var orderBy;
        for (var i = 0; i < ss.length; i++) {
            if (ss[i].includes("orderField")) {
                orderField = ss[i].split('=')[1]
                values += "&orderField=" + ss[i].split('=')[1];

            }
            if (ss[i].includes("orderBy")) {
                orderBy = ss[i].split('=')[1];
                values += "&orderBy=" + ss[i].split('=')[1];
            }
        }
        updateSlickyHeader(orderField, orderBy);
        InternalSortBy = values;


    }

}

function InternalSearchSlickyTable(xDatatable) {
    $('#tBodyContent').html('');
    $('#tSpinner').show();
    $('#tEmpty').hide();
    $('#tPaging').html('');


    var search = InternalSearchTerm;
    if (xDatatable.url == null || xDatatable.url == '') {
        InternalShowDataSlickyTable(xDatatable);
        return;
    }

    url = URL = ajaxCallServer + "/api/" + xDatatable.url;



    if (search != null) {
        url += "&search=" + search;
        var text = '';
        if (search.includes('|')) {
            var ss = search.split('|');
            text = ss[0];
            for (var i = 1; i < ss.length; i++) {
                if (i == 1)
                    text += " with " + ss[i].split(":")[0] + " = " + $('#' + ss[i].split(":")[0] + " option:selected").text(); //ss[i].split(":")[1];
                else
                    text += " and " + ss[i].split(":")[0] + " = " + $('#' + ss[i].split(":")[0] + " option:selected").text();
            }
        }
        else
            text = search;
        $('#tEmpty').html(xDatatable.emptySearchPhrase.replace('SEARCH_WORD', text));
    }

    //var start = (internalPageNumber - 1) * xDatatable.pageSize;
    var length = xDatatable.pageSize;

    url += "&pageNumber=" + internalPageNumber;
    url += "&limit=" + length;
    var token = getCookie("accessToken");
    $.ajax({
        url: url,
        contentType: "application/json",
        type: "GET",
        data: null,
        beforeSend: function (xhr) {
            if (token != '') {
                xhr.setRequestHeader("Authorization", "Bearer " + token)
            }
        },
        success: function (data, textStatus) {
            $('#tSpinner').hide();
            if (data != null) {

                if (data.length > 0) {
                    $('#tBodyContent').html(xDatatable.showBody(data));

                    $('#tPaging').html(displayPaging(xDatatable, data.length));
                }
                else {
                    $('#tEmpty').show();
                }

            }

        },
        error: function (jqXHR, textStatus, err) {
            if (jqXHR.status == 401) {
                refreshTableToken();
                return;
            }
            $('#tSpinner').hide();
            $('#tBodyContent').html("There has been an error");

            toastr.error('There was an error: ' + jqXHR.responseText, "Error in slicky_table.js");

        },
    });
}


function InternalShowDataSlickyTable(xDatatable) {

    $('#tSpinner').hide();
    if (xDatatable.data != null) {

        if (xDatatable.data.length > 0) {
            var myData = xDatatable.data; //.slice((page - 1) * itemsNumber, page * itemsNumber)
            var start = (internalPageNumber - 1) * xDatatable.pageSize;
            var length = xDatatable.pageSize;
            myData.slice((internalPageNumber - 1) * 10, internalPageNumber * 10)

            $('#tBodyContent').html(xDatatable.showBody(myData));
            $('#tPaging').html(displayPaging(xDatatable, xDatatable.data.length));
        }
        else {
            $('#tEmpty').show();
        }

    }
    else
        $('#tEmpty').show();


}

function displayPaging(xDatatable, totalCount) {


    var pageNumber = internalPageNumber;
    var pages = (totalCount / xDatatable.pageSize);


    var pageTotal = Math.ceil(pages);

    var points = -1;
    var points2 = -1;
    var ruleof5 = [1, 2, 3, 4, 5];
    var pageText = '';



    if (pageTotal <= 5) {
        for (var i = 1; i <= pageTotal; i++) {
            ruleof5[i - 1] = i;
        }
        for (var i = pageTotal + 1; i <= 5; i++) {
            ruleof5[i - 1] = 0;
        }
    }
    else {

        if (pageNumber < 5) {
            for (var i = 1; i < 5; i++) {
                ruleof5[i - 1] = i;
            }
            points = 5;
            ruleof5[4] = pageTotal;
        }
        else {

            if (pageNumber >= pageTotal - 4) {
                ruleof5[0] = 1;
                points = 2;
                for (var i = 2; i <= 5; i++) {
                    ruleof5[i - 1] = pageTotal - 5 + i;
                }
            }
            else {
                ruleof5[0] = 1;
                points = 2;
                ruleof5[4] = pageTotal;
                points2 = 4;
                ruleof5[1] = pageNumber - 1;
                ruleof5[2] = pageNumber;
                ruleof5[3] = pageNumber + 1;
            }
        }
    }




    var pageText = `<div class="dataTables_paginate paging_simple_numbers">`;

    if (pageNumber > 1) {
        pageText += ` <a class="paginate_button previous" onClick="gotoPage(null,null,1);return false;" title="">
                                <i class="fa fa-angle-left"></i>
                         </a>`;

    }


    for (var i = 0; i < ruleof5.length; i++) {
        if (ruleof5[i] == 0) {
            continue;
        }
        if (points == i + 1) {
            pageText += ` <a class="paginate_button previous ">
                                                     ...
                                                </a>`;
        }

        if (ruleof5[i] == pageNumber) {
            pageText += `<span>
                                                    <a class="paginate_button current" title="">` + ruleof5[i] + `</a>
                                                </span>`;
        }
        else {
            pageText += `<span>
                                                    <a class="paginate_button " title="" onClick="gotoPage(` + ruleof5[i] + `,null,null);return false;">` + ruleof5[i] + `</a>
                                                </span>`;

        }

        if (points2 == i + 1) {
            pageText += ` <a class="paginate_button previous" title="">
                                                     ...
                                                </a>`;
        }

    }



    if (pageNumber < pageTotal) {
        pageText += ` <a class="paginate_button next" title="" onClick="gotoPage(null,1,null);return false;"><i class="fa fa-angle-right"></i></a>`;
    }
    pageText += `</div>`;



    return pageText;

}

function loadDeleteModal(title) {

    var myModal = `
<div id="RemoveBlockModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mytitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mytitle">Delete ` + title + `</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closeButton">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="userPic">
                    <div class="form-group " id=slider>
                        <p>Are you sure you want to delete this <span style="text-transform:lowercase;">` + title + `</span> <span id="templateName"> </span> ?</p>
                    </div>
               </div>
            </div>
            <div class="modal-footer">
                <button style="background-color:rgb(239, 239, 239);" type="button" class="ant-btn btn-cta btn-light-gray" onclick="$('#RemoveBlockModal').modal('hide')">Cancel</button>
                <button type="button" class="ant-btn btn-cta  btn-warning users_execute_button" onclick="deleteModal()">Delete</button>
            </div>
        </div>
    </div>
</div>
`;
    return myModal;

}


function showTheBulkLine() {
    SHOWBULK = true;
    $('#bulkRow').show();
}

function BulkValue(value, fieldName) {
    if (BULKACTIONS.includes("|" + fieldName + ":")) {
        var temp = "";
        for (var i = 0; i < BULKACTIONS.split("|").length; i++) {
            if (BULKACTIONS.split("|")[i] != null && BULKACTIONS.split("|")[i] != '' && !BULKACTIONS.split("|")[i].includes(fieldName + ":") && value != null && value != '')
                temp = "|" + BULKACTIONS.split("|")[i];
        }
        BULKACTIONS = temp;
    }



    BULKACTIONS += "|" + fieldName + ":" + value;
}

function updateBulkActionValues() {
    var listOfIds = ''
    $('input[name="check_BULK"]:checked').each(function () { listOfIds += "," + $(this).val() });
    var bulks = { "bulks": BULKACTIONS, "ids": listOfIds };

    ajaxCall("POST", bulks, internalDatatable.link + "Bulk", internalDatatable.title + " Bulk Action Updated Successfully", internalDatatable.title, refreshDatabase);
}

function closeBulkActionValues() {
    gotoPage(internalPageNumber, null, null);
}

function refreshDatabase() {
    gotoPage(internalPageNumber, null, null);
}
function showImports(somedata, some) {
    toastr.info("The Import feature has not been developed yet. Coming soon");

}
function showExports(somedata, some) {
    toastr.info("The Export feature has not been developed yet. Coming soon");

}


function refreshTableToken() {

    console.log("Current Access Token have expired. Attempting to refresh tokens");
    var originalServer = ajaxCallServer
    if (originalServer != GatewayURL)
        return;


    ajaxCallServer = IdentityServerURL;
    var token = getCookie('refreshToken')
    if (token == '' || token == null) {
        console.log('Refresh tokens are  not present. Refresh failed');
    }
    var body = "refreshToken=" + token;
    ajaxCall("POST", null, "Authentication/refresh?" + body, null, null,
        response => {
            var expiryDate = new Date();
            expiryDate.setMonth(expiryDate.getMonth() + 1);
            document.cookie = "accessToken=" + response.accessToken.value + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            document.cookie = "refreshToken=" + response.refreshToken.value + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            document.cookie = "accountResponse=" + JSON.stringify(response) + "; expires= " + expiryDate.toGMTString() + ";  path=/";
            console.log('Tokens refreshed successfully. Call ajax function again');
            ajaxCallServer = GatewayURL;
            InternalSearchSlickyTable(internalDatatable);

        },
        data => {
            toastr.error(data);
            console.log('Refresh tokens have failed. Redirecting to login ');
            goToHome("Your session has expired. Please login again");
        });
}
