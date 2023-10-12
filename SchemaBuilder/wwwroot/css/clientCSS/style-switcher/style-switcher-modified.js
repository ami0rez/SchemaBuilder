var styleSwitcher = $('.u-ss'),
    prefix = styleSwitcher.data('cookies-prefix'),
    preDefStyle = $.cookie(prefix + '.preDefStyle') ? $.cookie(prefix + '.preDefStyle') : 'default';

if (typeof localStorage !== 'undefined') {
    if (localStorage.getItem(prefix + '.skin.css') !== null) {
        var css = localStorage.getItem(prefix + '.skin.css'),
            head = document.head || document.getElementsByTagName('head')[0],
            style = document.createElement('style');

        style.type = 'text/css';
        style.setAttribute('id', 'preDefStyle');
        if (style.styleSheet) {
            style.styleSheet.cssText = css;
        } else {
            style.appendChild(document.createTextNode(css));
        }

        head.appendChild(style);
    }
}

var contentFont = "Open Sans, Helvetica, Arial, sans-serif";
var customColor = "#72c02c";
var headingFont = "Open Sans, Helvetica, Arial, sans-serif";
var outerSpaces = "0px";


if (preDefStyle != 'default') {
    $('<link class="u-predefined-style" href="' + preDefStyle + '" rel="stylesheet"></link>').insertBefore('#preDefStyle');
}



var deff = $.Deferred();

function createLESS() {
    //$('head').append($('<link rel="stylesheet/less">').attr('href', window.location.protocol + '//' + window.location.host + '/' + window.location.pathname.split('/')[1] + '/unify-v2.6/assets/include/less/themes/custom.less'));
    $('head').append($('<link rel="stylesheet/less">').attr('href', '../../assets2/include/less/themes/custom.less'));
}

function createLESSJS() {
    var script = document.createElement('script');
    //script.src = window.location.protocol + '//' + window.location.host + '/' + window.location.pathname.split('/')[1] + '/unify-v2.6/assets/style-switcher/vendor/lessjs/less.min.js';
    script.src = '../../assets2/style-switcher/vendor/lessjs/less.min.js';
    var before = document.getElementsByTagName('script')[0];
    before.parentNode.insertBefore(script, before);
}

// Switcher toggle


function initializeColor(XcustomColor) {
   
      deff.done(function () {
            less = {
                async: !0,
                env: 'development',
                relativeUrls: true,
                modifyVars: {
                    '@customColor': XcustomColor,
                    '@contentFont': contentFont,
                    '@headingFont': headingFont,
                    '@outerSpaces': outerSpaces
                }
            }
        });

        deff.resolve(createLESS(), createLESSJS());

        var windW = $(window).width();

        if (windW <= 1400) {
            $.HSCore.components.HSModalWindow.init('#semiboxed');
        }

        $.HSCore.components.HSScrollBar.init($('.js-ss-scrollbar'));
        $.HSCore.components.HSSelect.init('.js-ss-select');
        $.HSCore.components.HSMarkupCopy.init('.js-ss-copy');
        $.HSCore.components.HSModalWindow.init('#getCSSSkin', {
            onOpen: function () {
                

                var target = $(this[0].offsetParent.ownerDocument.activeElement).data('content-target');

                $('.custombox-content .modal-demo')
                    .append('<pre id="prism"><code class="language-css"><div></div></code></pre>')
                    .find('#prism code > div')
                    .text($(target).html());

                Prism.highlightAll();

                $.HSCore.components.HSScrollBar.init($('.custombox-content .modal-demo'));
            },
            onClose: function () {
                $('#copyModal').mCustomScrollbar('destroy');
                $('#prism').remove();
            }
        });

      
    
}

 function changeColor(myCustomColor) {
    $('head').append($('<style>').text(cssCol));

        less.modifyVars({
            '@customColor': '#' + myCustomColor,
            '@contentFont': contentFont,
            '@headingFont': headingFont,
            '@outerSpaces': outerSpaces
        });

        customColor = '#' + myCustomColor;
        cssCol = $('[id^="less:"]').text();

     $.cookie(prefix + '.customColor', customColor);
     localStorage.setItem(prefix + '.skin.css', $('[id^="less:"]').text());
  
}