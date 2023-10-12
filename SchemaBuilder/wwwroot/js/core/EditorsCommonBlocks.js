class EditorsCommonBlocks {

    static getEditorAdvancedTab(object, inputId) {
        return EditorsCommonBlocks.getLabelHeader('Spacing', 'spacing')
            + `<div class="section row appandable-section" data-section="default">
                         <div class="spancing-container">
                            <div class="spacing-elements">
                              `+ EditorsCommonBlocks.getSide(object, 'left', 3)
            + EditorsCommonBlocks.getSide(object, 'right', 1)
            + EditorsCommonBlocks.getSide(object, 'top', 0)
            + EditorsCommonBlocks.getSide(object, 'bottom', 2)
            + `<div class="borderPadding">
                                <span class="label">padding</span>
                              </div>
                              <div class="inside"></div>
                              <span class="label">margin</span>
                            </div>
                          </div>
                          <div class="mb-3  col-sm-12" data-key="float">
                            <label class=" form-label" for="input-model"></label>
                            <div class="input">
                              <div class="btn-group btn-group-sm btn-group-fullwidth clearfix" role="group">
                                <input name="spacing_none" class="btn-check fontButton" type="radio" value="none" id="input_none" autocomplete="off" checked="checked" style="">
                                <label class="btn btn-outline-primary " for="input_none" title="None" onclick="removeAllActiveSpacings()"> None </label>
                                <input name="spacing_margins" class="btn-check fontButton" type="radio" value="margins" id="input_margins" autocomplete="off" style="">
                                <label class="btn btn-outline-primary " for="input_margins" title="margins" onclick="activateMargins()"> Margins </label>
                                <input name="spacing_paddings" class="btn-check fontButton " type="radio" value="paddings" id="input_paddings" autocomplete="off" style="">
                                <label class="btn btn-outline-primary " for="input_paddings" title="paddings" onclick="activatePaddings()"> Paddings </label>
                              </div>
                            </div>
                          </div>
                          <div class="mb-3 col-sm-5" data-key="input" style="margin-top: 3px;">
                            <div class="input-group">
                              <input name="float" id="input_`+ inputId + `_spacing" value="0" type="number" class="form-control" style="width: 64% !important; padding : 0px 4px;">
                              <select class="form-control" id="select_units_`+ inputId + `_spacing" name="unit" style="padding: 0px 2px; font-size:12px">
                                <option value="px">px</option>
                                <option value="em">em</option>
                                <option value="%">%</option>
                                <option value="rem">rem</option>
                              </select>
                            </div>
                          </div>
                          <div class="mb-3  col-sm-7 " data-key="slider">
                            <label class=" form-label" for="input-model"></label>
                            <div class=" input">
                              <div>
                                <div class="input-range">
                                  <input id="slider_`+ inputId + `_spacing" type="range" value="0" min="-200" max="200" step="1" class=" ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all sliderTransparency" data-input-value>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>`
            ;
    }

    static getSide(object, side, index) {
        var marginValue;
        var paddingValue;
        switch (side) {
            case 'left':
                marginValue = $(object).get(0).style.marginLeft;
                paddingValue = $(object).get(0).style.paddingLeft;
                break;
            case 'right':
                marginValue = $(object).get(0).style.marginRight;
                paddingValue = $(object).get(0).style.paddingRight;
                break;
            case 'top':
                marginValue = $(object).get(0).style.marginTop;
                paddingValue = $(object).get(0).style.paddingTop;
                break;
            case 'bottom':
                marginValue = $(object).get(0).style.marginBottom;
                paddingValue = $(object).get(0).style.paddingBottom;
                break;

        }
        return `<div class="` + side + `">
                                <div data-disabled="false" id="`+ side + `_1" onclick="toggleActive(` + side + `_1)" data-cursor="pointer" data-prop-index="` + index + `" data-prop="margin" class=" image-side ` + side + `_1">
                                  <input class="elementModifier margin`+ side + `Modifier" value="0" style="display:none">
                                  <span class="value">`+ marginValue + `</span>
                                </div>
                                <div data-tr="-1" data-cursor="pointer" id="`+ side + `_2" onclick="toggleActive(` + side + `_2)" data-prop-index="` + index + `" data-prop="padding" class=" image-side ` + side + `_2">
                                  <input class="elementModifier padding`+ side + `Modifier" value="0" style="display:none">
                                  <span class="value ">`+ paddingValue + `</span>
                                </div>
                              </div>`;

    }

    static getLabelHeader(spanValue, headerId) {
        return `<label class="header" data-header="default" for="header_` + headerId
            + `" onclick="openSectionAndCloseOthers('header_` + headerId + `')">
                            <span>`+ spanValue + `</span>
                            <div class="header-arrow"><i class="fa fa-angle-down"></i></div>
                          </label>
                          <input class="header_check" type="checkbox" checked="true" id="header_` + headerId + `">`;
    }
}