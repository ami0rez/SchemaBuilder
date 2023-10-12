function removeAllIcon() {
    $('#wrapper').remove();
    adjustAllSectionHeight();
}


var colorPallet = `
                                    <div class='pallet colorButton' style='color: #2B394A;background-color: #2B394A'></div>
                                    <div class='pallet colorButton' style='color: #FDA5A4;background-color: #FDA5A4'></div>
                                    <div class='pallet colorButton' style='color: #C5D0DD;background-color: #C5D0DD'></div>
                                    <div class='pallet colorButton' style='color: #000000;background-color: #000000'></div>
                                    <div class='pallet colorButton' style='color: #FFFFFF;background-color: #FFFFFF'></div>
                                    <div class='pallet colorButton' style='color: #D9E3DA;background-color: #D9E3DA'></div>
                                    <div class='pallet colorButton' style='color: #A7BEA9;background-color: #A7BEA9'></div>
                                    <div class='pallet colorButton' style='color: #FC888C;background-color: #FC888C'></div>
                                    <div class='pallet colorButton' style='color: #75858F;background-color: #75858F'></div>
                                    <div class='pallet colorButton' style='color: #F3DCD4;background-color: #F3DCD4'></div>
                                    <div class='pallet colorButton' style='color: #F2A68D;background-color: #F2A68D'></div>
                                    <div class='pallet colorButton' style='color: #20C1BD;background-color: #20C1BD'></div>
                                    <div class='pallet colorButton' style='color: #3D3D3D;background-color: #3D3D3D'></div>
                                    <div class='pallet colorButton' style='color: #DF0054;background-color: #DF0054'></div>
                                    <div class='pallet colorButton' style='color: #FFD900;background-color: #FFD900'></div>
                                    <div class='pallet colorButton' style='color: #9B9A94;background-color: #9B9A94'></div>
                                    <div class='pallet colorButton' style='color: #E0CBC4;background-color: #E0CBC4' ></div>
                                    <div class='pallet colorButton' style='color: #EBE4DE;background-color: #EBE4DE' ></div>
                                    <div class='pallet colorButton' style='color: #131310;background-color: #131310' ></div>
                                    <div class='pallet colorButton' style='color: #D2AE90;background-color: #D2AE90' ></div>
                                    <div class='pallet colorButton' style='color: #DD7564;background-color: #DD7564' ></div>
                                    <div class='pallet colorButton' style='color: #1FA5A6;background-color: #1FA5A6' ></div>
                                    <div class='pallet colorButton' style='color: #B2DEDD;background-color: #B2DEDD' ></div>
                                    <div class='pallet colorButton' style='color: #F0EDE6;background-color: #F0EDE6' ></div>
                                    <div class='pallet colorButton' style='color: #323954;background-color: #323954' ></div>
                                    <div class='pallet colorButton' style='color: #EA5147;background-color: #EA5147' ></div>
                                    <div class='pallet colorButton' style='color: #EA5147;background-color: #EA5147' ></div>
                                    <div class='pallet colorButton' style='color: #323954;background-color: #6B5875' ></div>
                                    <div class='pallet colorButton' style='color: #FFE6A9;background-color: #FFE6A9' ></div>
                                    <div class='pallet colorButton' style='color: #EAE6E1;background-color: #EAE6E1' ></div>                                    
                                    <div class='pallet colorButton' style='color: #6B686D;background-color: #6B686D' ></div>   
                                    <div class='pallet colorButton' style='color: #8DE0C6;background-color: #8DE0C6' ></div>   
                                    <div class='pallet colorButton' style='color: #FF988D;background-color: #FF988D' ></div>   
                                    <div class='pallet colorButton' style='color: #E2F2D5;background-color: #E2F2D5' ></div>
                                    <div class='pallet colorButton' style='color: #f9f9f9;background-color: ' ></div>


    `;


var contentEditorImage = `
     <div class='row webpages_write'>
                        <div class="col-md-12 editor_section_title">Image </div>

                        <div class="col-md-6 editor_section backgroundEditor">Fit</div>
                        <div class="col-md-6 backgroundEditor" style='text-align:right'>
                            <div style="padding-bottom:20px;">
                                <input type="checkbox" id="buttonCoverBackground" class="checkbox" />
                                <label for="buttonCoverBackground" class="switch"></label>
                            </div>
                        </div>
                        <div class="col-md-6 editor_section backgroundEditor">Contain</div>
                        <div class="col-md-6 backgroundEditor" style='text-align:right'>
                            <div style="padding-bottom:20px;">
                                <input type="checkbox" id="buttonContainBackground" class="checkbox" />
                                <label for="buttonContainBackground" class="switch"></label>
                            </div>
                        </div>
                        <div class="col-md-6">Size Manually</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="4" id="slider"></div>



                    </div>

    `;

var settingPanel = `
                                <div class='setting-menu1-content'>
                                   

                                 </div>
    `;


var detailPanel = `
                           <div class="setting-panel webpages_write" id='section_detail_SECTIONID'>

                                  <div class=row>
                                      <div class=col-md-8>
                                             Overwrite Translations
                                      </div>
                                      <div class=col-md-4>
                                             <div>
                                                <input type="checkbox" id="sectionSECTIONID_override" class="checkbox" onClick="var v= $('#sectionSECTIONID_override').prop('checked');overrideLanguage(SECTIONID,v);" />
                                                <label for="sectionSECTIONID_override" class="switch"></label>
                                            </div>

                                     </div>
                                    </div>
                                   <div class=row>
                                    <div class=col-md-12>Languages</div>
                                  </div>
                                    <div class=row>
                                        <div class="col-md-12">
                                             <label class="radio-inline radio-styled">
                                                     <input type="radio" name="sectionSECTIONID_Language" value="en" checked onClick="showEnglish(SECTIONID)"><span>English</span>
                                             </label>
                                         </div>
                                                <!-- LANGUAGE LATER HERE -->

                                    </div>
                            </div>
    `;
var divBlock = `<div class='dotted-border-miniblock' STYLE>

            <div  class='child-miniblock'  draggable="true" ondragstart="drag(event)" >
                    <img src='IMAGE' id='BLOCKID'  />
                    <div id='div_BLOCKDIV' masterfeatures='MASTER_FEATURES' blocktype='BLOCK_TYPE'> </div>
            </div>
    </div>
`;


var movePanel = `
                           <div class='setting-menu1-content webpages_write' id='section_move_SECTIONID'>
                                <div class="row no-gutters">
                                    <div class=col-md-6><button type="button" class="ant-btn  btn-primary" onClick="MoveToTop(SECTIONID);return false;"><i class="fas fa-angle-double-up" style='padding-right:10px;'></i><span>Top</span></button></div>
                                    <div class=col-md-6><button type="button" class="ant-btn  btn-primary" onClick="MoveToBottom(SECTIONID);return false;"><i class="fas fa-angle-double-down" style='padding-right:10px;'></i><span>Bottom</span></button></div>
                                </div>
                                <div class="row no-gutters">
                                    <div class=col-md-6><button type="button" class="ant-btn btn-primary" onClick="MoveUp(SECTIONID);return false;"><i class="fas fa-arrow-up" style='padding-right:10px;'></i><span>Up</span></button></div>
                                    <div class=col-md-6><button type="button" class="ant-btn btn-primary" onClick="MoveDown(SECTIONID);return false;"><i class="fas fa-arrow-down" style='padding-right:10px;'></i><span>Down</span></button></div>
                                </div>
                            </div>
    `;

var settingMenu = `<div class='setting-menu webpages_write'  id='menu_SECTIONID'>
                                <div class='setting-menu1'>
                                    <div>
                                        <i class="far fa-save" title ="save section" onClick='saveSection("SECTIONID"); return false;' onMouseOver="addAnimation(this,'spin');"  onMouseOut="removeAnimation(this,'spin');"  style='cursor:pointer'></i>
                                    </div>
                                    <div>
                                       <a><i class="fas fa-tools" title ="section settings" onClick='return showToolBoxForBlock("SECTIONID");' style='cursor:pointer' onMouseOver="addAnimation(this,'wrench');"  onMouseOut="removeAnimation(this,'wrench');"></i></a>
                                    </div>
                                    <div>
                                       <a><i class="fas fa-globe-americas" title ="show languages" onClick='return showLanguageForBlock("SECTIONID");' style='cursor:pointer' onMouseOver="addAnimation(this,'pulse');"  onMouseOut="removeAnimation(this,'pulse');"></i></a>
                                    </div>
                                    <div><i class="fas fa-file-code" title ="source code" onClick='showCSSSection("SECTIONID")' style='cursor:pointer' onMouseOver="addAnimation(this,'pulse');"  onMouseOut="removeAnimation(this,'pulse');"></i></div>
                                    <div><i class="fas fa-trash" title ="delete section" onClick='deleteSection("SECTIONID",true)' style='cursor:pointer' onMouseOver="addAnimation(this,'shake');"  onMouseOut="removeAnimation(this,'shake');"></i></div>
                                    
                               </div>
                           </div>
    `;

var options = {
    masterSettingMenu:`<div class='master-setting-menu webpages_write'  id='masterMenu_SECTIONID'>
                                <div class='setting-menu1'>
                                    <div>
                                       <a class='dropdown-toggle' data-toggle='dropdown' aria-expanded="true" ><i class="fas fa-arrows-alt" title ="move section" style='cursor:pointer' onMouseOver="addAnimation(this,'vertical');"  onMouseOut="removeAnimation(this,'vertical');"></i></a>
                                        <div class="dropdown-menu" id="dropdown_menu_SECTIONID"> ` + movePanel + ` </div>
                                    </div>                                                                       
                               </div>
                           </div>`
            }
;
var contentEditorTEXT = `
                    <div class="row webpages_write">
                        <div class="col-md-12 editor_section_title">Color </div>
                        <div class="col-md-6 editor_section">Text Color</div>
                        <div class="col-md-6" style='text-align:right;'>
                            <a class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="true">
                                <span class="dot selected" id='gradiant'></span>
                            </a>
                            <div class="dropdown-menu animation-zoom" style="right:0;left:unset">
                               <div class='colorPallet'> ` + colorPallet + `
                                    <div class=row>
                                        <div class='col-md-1'></div>
                                        <div class='col-md-10'><button type="button" id='noColor' class="ant-btn btn-cta btn-default-dark">None</button></div>
                                        <div class='col-md-1'></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6 editor_section">Background Color</div>
                            <div class="col-md-6" style='text-align:right;'>
                            <a class="dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="true">
                                <span class="dot selected" id='backgroundGradiant'></span>
                            </a>
                            <div class="dropdown-menu animation-zoom" style="right:0;left:unset">
                                <div class='colorPallet'> ` + colorPallet.replace(/objectPallet/g, 'backgroundPallet') + `
                                    <div class=row>
                                        <div class='col-md-1'></div>
                                        <div class='col-md-10'><button type="button" id='noColorBackground' onClick="$('#backgroundGradiant').css('background-color', 'unset');" class="ant-btn btn-cta btn-default-dark">None</button></div>
                                        <div class='col-md-1'></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class=" col-md-12  divider my-4 divider-solid"></div>
                    <div class="col-md-12 editor_section_title">Fonts </div>
                        <div class="col-md-6 editor_section">Font Family</div>
                        <div class="col-md-6">
                            <select id='fontSelector' style="width:100%">
                                <option></option>
                                <option>Acme</option>
                                <option>Roboto</option>
                                <option>Times</option>
                                <option>Courier</option>
                                <option>Verdana</option>
                                <option>Candara</option>
                                <option>Arial Black</option>
                            </select>
                        </div>
                        <div class="col-md-6 editor_section">Font Size</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="4" id="slider"></div>

                    </div> 
                    <div class="divider my-4 divider-solid"></div>
                    <div class='row' style='width:80%;padding-bottom:10px;'>
                        <div class="col-md-12 editor_section_title">Options </div>
                        <div class="col-md-3"></div>
                        <div class="col-md-2  fontButton" id=BOLD><i class="fas fa-bold"></i></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-2 fontButton" id=UNDERLINE><i class="fas fa-underline"></i></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-2 fontButton" id=ITALIC><i class="fas fa-italic"></i></div>
                        
                    </div>
                    <div class='row'  style='width:80%'>
                        <div class="col-md-3"></div>
                        <div class="col-md-2 fontButton" id=JUSTIFY_LEFT><i class="fas fa-outdent"></i></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-2 fontButton" id=JUSTIFY><i class="fas fa-align-justify"></i></div>
                        <div class="col-md-1"></div>
                        <div class="col-md-2 fontButton" id=JUSTIFY_RIGHT><i class="fas fa-indent"></i></div>
                        
                    </div>


                    <div class='row'>
                        <div class="col-md-12 editor_section_title">Spacing </div>
                        <div class="col-md-6 editor_section">Top</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="0" id="sliderTop"></div>
                        <div class="col-md-6 editor_section">Bottom</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="0" id="sliderBottom"></div>
                        <div class="col-md-6 editor_section">Right</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="0" id="sliderRight"></div>
                        <div class="col-md-6 editor_section">Left</div>
                        <div class="col-md-6" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="1" max="8" value="0" id="sliderLeft"></div>
                    </div>

    `;


var margin = `
<div class='row webpages_write' id="margin-setting" style=padding-top:10px;>
                        <div class="col-md-4 editor_section">Top</div>
                        <div class="col-md-8" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="0" max="100" value="0" id="slider%%Top"></div>
                        <div class='col-md-12' id='slider%%TopText' style='padding-bottom:15px;'></div>

                        <div class="col-md-4 editor_section">Bottom</div>
                        <div class="col-md-8" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="0" max="100" value="0" id="slider%%Bottom"></div>
                        <div class='col-md-12' id='slider%%BottomText' style='padding-bottom:15px;'></div>

                        <div class="col-md-4 editor_section">Right</div>
                        <div class="col-md-8" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="0" max="100" value="0" id="slider%%Right"></div>
                        <div class='col-md-12' id='slider%%RightText' style='padding-bottom:15px;'></div>

                        <div class="col-md-4 editor_section">Left</div>
                        <div class="col-md-8" style="padding-top: 10px;"><input class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" type="range" min="0" max="100" value="0" id="slider%%Left"></div>
                        <div class='col-md-12' id='slider%%LeftText' style='padding-bottom:15px;'></div>
</div>
`;

var ArrowLeftClasses="fa fa-angle-left g-left-0";
var ArrowRightClasses = "fa fa-angle-right g-right-0";
var PagiClasses = "u-carousel-indicators-v1 g-absolute-centered--x g-bottom-0";


var mySliderArrowsClasses = ` data-arrow-left-classes="` + ArrowLeftClasses + `" data-arrow-right-classes="` + ArrowRightClasses +`"`;
var mySliderPagiClasses = `data-pagi-classes="` + PagiClasses + `"`;

var videoButton = `<a class="js-fancybox-media rounded-circle g-absolute-centered  u-icon-v2 g-font-size-20 g-color-white g-bg-primary g-brd-black g-bg-primary--hover g-brd-primary--hover g-text-underline--none--hover g-my-20" href="javascript:;" data-src="//vimeo.com/119228609" data-animate-in="flipInY" data-animate-out="flipOutY" data-speed="1000" tabindex="0" style="z-index: 3;"><i class="fa fa-play"></i></a>`