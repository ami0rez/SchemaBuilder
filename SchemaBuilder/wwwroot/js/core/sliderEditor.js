class SliderEditor {
   
    static getSliderEditorContentTab() {
        return EditorsCommonBlocks.getLabelHeader('Slides', 'Slides_default')
            + SliderEditor.getSlidesContent(slides_stub)
            + EditorsCommonBlocks.getLabelHeader('Slider options', 'SliderOptions_default')
            + SliderEditor.getSliderOptions()
            ;
    }
    static getSliderOptions() {
        return `<div class="section row m-1">`
                  + SliderEditor.getSelectBlock('Navigation', ['Arrows and Dots', 'Arrows', 'Dots','None'],'select_NavigationControl_id')
                  + SliderEditor.getSliderSwitchButtonBlock('Autoplay', 'switch_SlidersOptions_autoplay', '')
                  + SliderEditor.getSliderSwitchButtonBlock('Pause on Hover', 'switch_SlidersOptions_pauseHover', '')
                  + SliderEditor.getSliderSwitchButtonBlock('Pause on Interaction', 'switch_SlidersOptions_pauseInteraction', '')
                  + SliderEditor.getSliderNumberInputBlock('Autoplay Speed', 'input_SliderOptions_playSpeed', 0,1000000,10)
                  + SliderEditor.getSliderSwitchButtonBlock('Infinite Loop', 'switch_SlidersOptions_infiniteLoop', '')
                  + SliderEditor.getSelectBlock('Transition', ['Slide', 'Fade'], 'select_SlidersOptions_transitions_id')
                  + SliderEditor.getSliderNumberInputBlock('Transition Speed (ms)', 'input_SliderOptions_transitionSpeed', 0, 1000000, 1)
                  + SliderEditor.getSelectBlock('Content Animation', ['None', 'Down', 'Up', 'Right', 'Left', 'Zoom'], 'select_SlidersOptions_contentAnimation_id')
              +`</div>`;
    }
    static getSliderEditorStyleTab() {
        return EditorsCommonBlocks.getLabelHeader('Slides', 'SlidesStyle_default')
            + SliderEditor.getSlidesStyle()
            + EditorsCommonBlocks.getLabelHeader('Title', 'SlidesTitle_default')
            + SliderEditor.getSlidesTitleStyle()
            + EditorsCommonBlocks.getLabelHeader('Description', 'Description_default')
            + SliderEditor.getSlidesDescriptionStyle()
            + EditorsCommonBlocks.getLabelHeader('Button', 'Button_default')
            + SliderEditor.getSlidesButtonStyle()
            + EditorsCommonBlocks.getLabelHeader('Navigation', 'Navigation_default')
            + SliderEditor.getSlidesNavigationStyle()
            ;
    }

    static getSlidesNavigationStyle() {
        return `<div class="section row appandable-section" data-section="Navigation">
                  `+ SliderEditor.getSelectBlock('Position', ['Inside','Outside'],'select_Navigation_Position_id')
                   + SliderEditor.getColorBlock('Color', 'Color')
                   + SliderEditor.getColorBlock('Active Color', 'Active Color')
                 + `</div>`
           ;
    }

    static getSlidesButtonStyle() {
        return  `<div class="section row appandable-section" data-section="Navigation">`
                    + SliderEditor.getSelectBlock('Size', ['Small', 'Large', 'Block level'], 'slelect_button_size_id')
                    + SliderEditor.getSliderSingleButtonBlock('Typography', 'bi bi-pencil')
                    + SliderEditor.getSliderInputBlock('range_input_Button_BorderWidth_Id', 'input_Button_BorderWidth_Id', 'Border Width', 0, 30, 1,false)
                    + SliderEditor.getSliderInputBlock('range_input_Button_BorderRadius_Id', 'input_Button_BorderRadius_Id', 'Border Radius', 0, 30, 1, false)
                    + SliderEditor.getSliderHoverButtonsBlock()
                    + SliderEditor.getColorBlock('Text Color', 'Text Color')
                    + SliderEditor.getButtonBackgroundType()
                    + SliderEditor.getColorBlock('Color', 'Color')
                    + SliderEditor.getColorBlock('Border Color', 'Border Color')
                + `</div> `;       
    }
    static getSlidesDescriptionStyle() {      
        return `<div class="section row appandable-section" data-section="Description_default">`
                    + SliderEditor.getSliderInputBlock('range_input_Description_Spacing_Id', 'range_input_Description_Spacing_Id','Spacing', 0, 20,1,false)
                    + SliderEditor.getColorBlock('Text Color', 'Text Color')
                    + SliderEditor.getSliderSingleButtonBlock('Typography', 'bi bi-pencil')
                +`</div>`;
    }

    static getSlidesTitleStyle() {
        return `<div class="section row appandable-section" data-section="SlidesTitle_default">                      `
                    + SliderEditor.getSliderInputBlock('range_input_Title_Spacing_Id', 'range_input_Title_Spacing_Id', 'Spacing', 0, 20, 1,false)
                    + SliderEditor.getColorBlock('Text Color', 'Text Color')
                    + SliderEditor.getSliderSingleButtonBlock('Typography', 'bi bi-pencil')
                +`</div>`;
    }

    static getSlidesStyle() {
        return `<div class="section row appandable-section" data-section="Slides_default">`
                   + SliderEditor.getSliderInputBlock('range_input_Slides_ContentWidth_Id', 'range_input_Slides_ContentWidth_Id','Content Width', 0, 20,1,true)
                   + SliderEditor.getSlidesStylePadding()
                   + SliderEditor.getSliderThreeButtonsBlock('Horizontal Position', 'bi bi-align-start', 'bi bi-align-center', 'bi bi-align-end', 'Left', 'Center', 'Right')
                   + SliderEditor.getSliderThreeButtonsBlock('Vertical Position', 'bi bi-align-top', 'bi bi-align-middle', 'bi bi-align-bottom', 'Top', 'Middle', 'Bottom')                  
                   + SliderEditor.getSliderThreeButtonsBlock('Text Align', 'bi bi-text-left', 'bi bi-text-center', 'bi bi-text-right', 'Left', 'Center', 'Right')
                   + SliderEditor.getSliderSingleButtonBlock('Text Shadow', 'bi bi-pencil')
                +`</div>`;
    }

    static getSliderEditorAdvancedTab(object, inputId) {
        return EditorsCommonBlocks.getEditorAdvancedTab(object, inputId);
    }

    static getSlidesContent(slides) {
        var content = '<div>';
        for (var i = 0; i < slides.length; i++) {
            var panel = `<div class="repeater-row-tools control-common">
                            <div class="repeater-row-item-title control-common tn btn-link" data-toggle="collapse" data-target="#collapseOne` + i + `" aria-expanded="true" aria-controls="collapseOne` + i + `">
                              <span>
                                Slide  ` + i + `
                              </span>
                            </div>
                          <div class="repeater-row-tool control-common btn-outline-primary">
                            <i class="bi bi-back"></i>
                          </div>
                          <div class="repeater-row-tool control-common btn-outline-primary">
                            <i class="bi bi-x"></i>
                          </div>
                        </div>
                        <div id="collapseOne` + i + `" class="pl-0 pr-0 collapse" aria-labelledby="headingOne` + i + `">
                          <div class="card-body p-0"> `+ SliderEditor.getSlideTabs() + ` </div>
                        </div>`;
            content += panel;
        }
        content += '</div>';
        return `<div class="section row m-1">
                  `+ content + `
                    <div class="button-wrapper">
	                    <button class="btn btn-primary" type="button">
	                    <i class="bi bi-plus"></i>  Add Item</button>
                    </div>
                    `+ SliderEditor.getSliderInputBlock('range_input_Slides_height_Id', 'input_Slides_height_Id', 'Height', 1, 100000, 1, true) +`
                </div>`;
    }

    static getSlideTabs() {
        return `<div class="control-common repeater-row-controls">
                  <div class="control-common control-type-repeater nav">
                    <a class="control-common control-type-tab active show" data-toggle="tab" href="#Background_menu" role="tab" >
                         <div class="control-common control-content">
                            <span class="control-common control-element">Background</span>
                         </div>
                     </a>
                     <a class="control-common control-type-tab control-type-tab-active" data-toggle="tab" href="#Content_menu" role="tab" >
                         <div class="control-common control-content">
                            <span class="control-common control-element">Content</span>
                         </div>
                     </a>
                     <a class="control-common control-type-tab control-type-tab-active" data-toggle="tab" href="#Style_menu" role="tab" >
                         <div class="control-common control-content">
                            <span class="control-common control-element">Style</span>
                         </div>
                     </a>
                  </div>
                  <div class="tab-content">
                    <div id="Background_menu" class="tab-pane fade active show">
                     `+ SliderEditor.getSingleSlideBackground() + `
                    </div>
                    <div id="Content_menu" class="tab-pane fade">
                      `+ SliderEditor.getSingleSlideContent() + `
                    </div>
                    <div id="Style_menu" class="tab-pane fade">
                       `+ SliderEditor.getSingleSlideStyle() + `
                    </div>
                  </div>
                </div>`;
    }


    //Inner tabs for content tab
    static getSingleSlideBackground() {
        return  SliderEditor.getColorBlock('Color', 'Color')
            +`<div class="control-common label-inline">
                    <div class="control-common control-content">
                      <div class="p-2 control-common content-wrapper" style="">
                        <label class="control-common mr-5" style="">Image</label>
                        <div class="control-common input-wrapper" style="">
                          <div class="control-common media-content" style="">
                            <div class="image-holder">
                              <div class="remove-background" title="Remove" style="display:none;">
                                <i class="bi bi-trash3"></i>
                              </div>
                              <div class="" style="background-image:"></div>
                            </div>
                            <div class="choose-image">
                              <i class="bi bi-plus-circle"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>`;
                    }

    static getSingleSlideContent() {
        return `<div class="control-common label-block">
                  <div class="control-common control-content">
                    <div class="control-common control-field">
                      <label for="control-input1" class="control-common control-title">Title &amp; Description</label>
                      <div class="control-common control-input-wrapper control-switcher-wrapper">
                        <input id="control-input1" type="text" class="control-common control-input" placeholder="Title" original-title="">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="control-common label-block">
                  <div class="control-common control-content">
                    <div class="control-common control-field">
                      <div class="mt-0 control-common control-input-wrapper control-switcher-wrapper">
                        <textarea id="control-input2" class="mt-0 control-common control-text-area" rows="5"  placeholder="My description"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="control-common label-block">
                  <div class="control-common control-content">
                    <div class="control-common control-field">
                      <label for="control-input3" class="control-common control-title">Button Text</label>
                      <div class="mt-0 control-common control-input-wrapper">
                        <input id="control-input3" type="text" class="control-common control-input" placeholder="Click me" original-title="">
                      </div>
                    </div>
                  </div>
                </div>
               <div class="control-common label-block">
                  <div class="control-common control-content">
                    <div class="control-common control-field">
                      <label for="control-default-c1225" class="control-common control-title">Link</label>
                      <div class="control-common control-input-wrapper">
                        <input id="control-default-c1225" class="control-common control-input" data-setting="url" placeholder="https://your-link.here" autocomplete="off">
                        <div class="control-common control-unit-1 btn-outline-primary" original-title="">
                          <i class="bi bi-gear-fill"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>`;
    }

    static getSingleSlideStyle() {
        return `<div>` + SliderEditor.getSliderSwitchButtonBlock('Custom', 'switch_Styles_Custom', ' <div class="control-common control-field-description">Set custom style that will only affect this specific slide.</div>')
                  + SliderEditor.getSliderThreeButtonsBlock('Horizontal Position', 'bi bi-align-start', 'bi bi-align-center', 'bi bi-align-end', 'Left', 'Center', 'Right')
                  + SliderEditor.getSliderThreeButtonsBlock('Vertical Position', 'bi bi-align-top', 'bi bi-align-middle', 'bi bi-align-bottom', 'Top', 'Middle', 'Bottom')
                  + SliderEditor.getSliderThreeButtonsBlock('Text Align', 'bi bi-text-left', 'bi bi-text-center', 'bi bi-text-right', 'Left', 'Center', 'Right') 
                  + SliderEditor.getColorBlock('Content Color', 'Content Color')
                  +`</div>`;
    }

    static switchEditTo(tab) {
        switch (tab) {
            case 'advanced':
                $('#advancedTab').addClass('active');
                openSectionAndCloseOthers("header_spacing");
                break;
            case 'style':
                $('#styleTab').addClass('active');
                openSectionAndCloseOthers("header_SlidesStyle_default");
                break;
            default:
                $('#contentTab').addClass('active');
                openSectionAndCloseOthers("header_Slides_default");
                //$('#content-tab').addClass('show');
        }
    }

    //Common Blocks
    static getSlidesStylePadding() {
        return `<div class="control-common label-block control-content">
                      <div class="control-common control-field">
                        <label class="control-common control-title">Padding</label>
                        <div class="control-common units-choices">`
                        + SliderEditor.getUnitChoice('choose-slide-padding-px', 'px', 'px')
                        + SliderEditor.getUnitChoice('choose-slide-padding-em', 'em', 'em')
                        + SliderEditor.getUnitChoice('choose-slide-padding-percent', '%', '%')
                        + `
                        </div>
                        <div class="control-common control-input-wrapper">
                          <ul class="control-common control-dimensions">`
                            + SliderEditor.getPaddingInput_Label('Top')
                            + SliderEditor.getPaddingInput_Label('Right')
                            + SliderEditor.getPaddingInput_Label('Bottom')
                            + SliderEditor.getPaddingInput_Label('Left')
                            + `
                            <li>
                               <button type="button" class="link-dimensions btn">
				                   <i class="bi bi-link-45deg"></i>
                              </button>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>`;
    }
    static getUnitChoice(inputId,unitValue,unitLabel) {
        return `<input id="` + inputId + `" type="radio" name="choose-` + inputId + `" data-setting="unit" value="` + unitValue+`">
                <label class="control-common units-choices-label" for="` + inputId + `">`+ unitLabel+`</label>`;
    }
    static getPaddingInput_Label(labelContent) {
        return ` <li class="control-common control-dimension">
                    <input id="paddingInput` + labelContent + `_id" type="number" data-setting="` + labelContent + `" placeholder="">
                    <label for="paddingInput` + labelContent + `_id" class="control-common control-dimension-label">` + labelContent + `</label>
                 </li>`;
    }
    static getButtonBackgroundType() {
        return `<div class="control-common label-inline">
                            <div class="control-content">
                              <div class="control-field">
                                <label class="control-title">Background Type</label>
                                <div class="control-input-wrapper">
                                  <div title="Custom" class="control-unit-1 btn-outline-primary">
                                    <i class="bi bi-brush"></i>
                                  </div>
                                   <div title="Custom" class="control-unit-1 btn-outline-primary">
                                    <i class="bi bi-upc"></i>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>`;
    }
    static getSliderHoverButtonsBlock() {
        return `<div class="control-common control-button_tabs label-inline">
                          <div class="control-common control-normal control-type-tab label-inline control-separator-none tab-active">
                            <div class="control-common control-content">
                              <div class="control-common panel-tab-heading"> Normal </div>
                            </div>
                          </div>
                          <div class="control-common control-hover control-type-tab label-inline">
                            <div class="control-common control-content">
                              <div class="control-common panel-tab-heading"> Hover </div>
                            </div>
                          </div>
                        </div>`;
    }
    static getSliderThreeButtonsBlock(labelContent, icon1,icon2,icon3, direction1,direction2,direction3) {
        return `<div class="control-common label-inline">
                    <div class="control-common control-content">
                      <div class="control-common control-field">
                        <label class="control-common control-title">`+ labelContent +`</label>
                        <div class=" input">
                          <div class="btn-group btn-group-sm btn-group-fullwidth clearfix" role="group">
                            <input name="alignText`+ direction1 +`" class="btn-check elementModifier textalignModifier" type="radio" value="`+ direction1 +`" autocomplete="off">
                            <label class="btn btn-outline-primary " for="alignText`+ direction1 +`" title="`+ direction1 +`">
                              <i class="`+ icon1 +`"></i>
                            </label>
                            <input name="alignText`+ direction2 + `" class="btn-check elementModifier textalignModifier" type="radio" value="` + direction2 +`" autocomplete="off">
                            <label class="btn btn-outline-primary " for="alignText`+ direction2 +`" title="`+ direction2 +`">
                              <i class="`+ icon2 +`"></i>
                            </label>
                            <input name="alignText`+ direction3 + `" class="btn-check elementModifier textalignModifier" type="radio" value="` + direction3 +`" autocomplete="off">
                            <label class="btn btn-outline-primary " for="alignText` + direction3 +`" title="` + direction3 +`">
                              <i class="`+ icon3 +`"></i>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>`;
    }
    static getSliderNumberInputBlock(labelContent, inputId, min, max, step) {
        return `<div class="control-common control-custom_style control-type-switcher label-inline ">
                    <div class="control-common control-content">
                      <div class="control-common control-field">
                        <label for="`+ inputId +`" class="control-common control-title">`+ labelContent+`</label>
                        <div class="control-common control-input-wrapper">
                          <input id="`+ inputId + `" type="number" min="` + min + `" max="` + max + `" step="` + step +`" class="control-unit-2">
                        </div>
                      </div>
                    </div>
                  </div>`;
    }
    static getSliderSwitchButtonBlock(labelContent, inputId, additionalContent) {
        return `<div class="control-common label-inline">
                    <div class="control-common control-content">
                      <div class="control-common control-field">
                        <label for="`+ inputId +`" class="control-common control-title">`+ labelContent+`</label>
                        <div class="control-common control-input-wrapper">
                          <label class="control-common control-switch">
                            <input type="checkbox" hidden id="`+ inputId+`">
                            <span class="control-common control-slider round"></span>
                          </label>
                        </div>
                      </div>
                      `+ additionalContent +`
                    </div>
                  </div>`;
    }
    static getSliderSingleButtonBlock(labelContent, icon) {
        return `<div class="control-common  label-inline">
                        <div class="control-content">
                          <div class="control-field">
                            <label class="control-title">`+ labelContent + `</label>
                            <div class="control-input-wrapper">
                              <div title="Custom" class="control-icon btn-outline-primary">
                                <i class="`+ icon + `"></i>
                              </div>
                            </div>
                          </div>
                         </div>
                      </div>`;
    }
    static getSliderInputBlock(inputRangeId, inputId, labelContent, min, max, step, hasSizeUnits) {
        var unitBlock = '';
        if (hasSizeUnits) {
            unitBlock = `<select class="mt-0 form-control" name="unit" id="` + inputId + `_size" style="padding: 0px 2px; font-size:12px">
                                <option value="px">px</option>
                                <option value="em">em</option>
                                <option value="%">%</option>
                                <option value="rem">rem</option>
                          </select>
                            `;
        }
        return `<div class="control-common label-block">                  
                    <div class="control-content">
                      <div class="control-field">
                        <div class="control-title" data-key="slider">
                          <label class="control-title" for="input-model">`+ labelContent + `</label>
                          <div class=" input">
                            <div>
                              <div class="input-range">
                                <input name="Size" id="`+ inputRangeId + `" type="range" value="1" min="` + min + `" max="` + max + `" step="` + step + `" class=" elementModifier fontsizeModifier ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all
                                                                 sliderTransparency" data-input-value="">
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="" data-key="input">
                          <div class="input-group">
                            <input name="Size" id="`+ inputId + `" value="1" min="` + min + `" max="` + max + `" type="number" class="mt-0 form-control elementModifier fontsizeModifier" style="width: 64% !important; padding : 0px 4px;" >
                                `+ unitBlock + `
                          </div>
                        </div>                       
                      </div>
                    </div>
                  </div>`;
    }
    static getSelectBlock(LabelContent, options, selectId) {
        var optionList = "";
        for (var i = 0; i < options.length; i++) {
            optionList += ' <option value="both">' + options[i] + '</option>';
        }
        return `<div class="control-common label-inline">
                    <div class="control-common control-content">
                      <div class="control-common control-field">
                        <label for="`+ selectId + `" class="control-common control-title">` + LabelContent + `</label>
                        <div class="control-common control-input-wrapper control-unit-5">
                          <select id="`+ selectId + `" class="control-input">` + optionList + `</select>
                        </div>
                      </div>
                     </div>
                    </div>`;
    }
    static getColorBlock(LabelContent, inputTitle) {
        return `<div class="control-common label-inline">
                      <div class="control-content">
                        <div class="control-field">
                          <label class="control-title">`+ LabelContent + `</label>
                          <div class="control-input-wrapper">
                            <div title="Custom" class="control-unit-1 btn-outline-primary">
                              <i class="bi bi-globe"></i>
                            </div>
                            <div class="background_pickr elementor-control-unit-1 elementor-control-tag-area">
                              <input title="`+ inputTitle + `" name="text_color" type="color" pattern="#[a-f0-9]{6}" class="p-0" style="flex-grow: 1;width: 100%;height: 100%;cursor: pointer;">
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
               `;
    }

}

var slides_stub = [1,2,3];
class Slide {

    constructor(object) {
        this.imageSrc = "";
        this.backgroundColor = "";
        this.description = "";
        this.buttonText = "";
        this.buttonLink = "";
    }
}