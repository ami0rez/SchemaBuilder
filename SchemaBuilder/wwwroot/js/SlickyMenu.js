var isPopUp = false;
var loadedPlugins = [];

function loadMenu(title, subtitle) {

    if (isPopUp) {
        $('.isPopUp').hide();
        loadPopUpMode();
    }


    if (!localStorage['sidebarStatus']) {
        localStorage['sidebarStatus'] = "open";
    }

    $("#" + title).addClass("ant-menu-submenu-active");

    if (subtitle != "" && subtitle != null) {
        $("#" + subtitle).parent().addClass("ant-menu-item-selected");
        toggleSubMenu($("#" + title).children().first('div'));
    }

    $('.ant-menu-item').click(function () {
        if (!$('.ant-menu-item').hasClass('ant-menu-inline-collapsed')) {
            toggleSubMenu(this);
        }
    });

    $('.ant-menu-item').hover(function () {
        if ($('.ant-menu-item').hasClass('ant-menu-inline-collapsed')) {
            toggleRightSubMenu(this, true);
        }
    }, function () {
        if ($('.ant-menu-item').hasClass('ant-menu-inline-collapsed')) {
            toggleRightSubMenu(this, false);
        }
    });

    $('.ant-menu-submenu-popup ul').mouseleave(function () {
        $('.ant-menu-submenu-popup ul').addClass('ant-menu-hidden');
        $('.ant-menu-submenu-popup ul').css("display", "none");
    });

    $(document).mouseup(function (e) {
        var container = $("#app-sidenav-container");
        if (!container.is(e.target) && container.has(e.target).length === 0 && $(window).width() < 767) {
            $('#ant-layout').css("opacity", "1");
            $('body').css("overflow", "visible");

            $('#ant-main-menu').css("padding-left", "unset;");
            $('#app-sidenav').addClass('ant-layout-sider-collapsed');
            $('#app-sidenav').css({ "flex": "0 0 240px", "max-width": "0", "min-width": "0", "width": "0" });
            $('.ant-menu-submenu ').removeClass('ant-menu-submenu-inline');
            $('.btn-upgrade').css({ "width": "0" });
            $('.btn-upgrade').css({ "display": "none" });
        }
    });

    if ($(window).width() > 767) {
        if (localStorage['sidebarStatus'] == "open") {
            $('#menu-fold').addClass('d-md-inline-block');
            $('#app-sidenav').css({ "flex": "0 0 240px", "max-width": "240px", "min-width": "240px", "width": "240px" });
            $('.btn-upgrade').css({ "width": "240px" });
            $('li.ant-menu-item').removeClass('ant-menu-inline-collapsed');
            $('li.ant-menu-item span').show();
            $('.sidenav-header').css({ "padding": "0 0 0 19px;" });
        } else {
            $('#menu-unfold').addClass('d-none d-md-inline-block');
            $('#ant-main-menu .ant-menu-inline').addClass('ant-menu-hidden');
            $('#ant-main-menu .ant-menu-inline').css("display", "none");
            $('#ant-main-menu').addClass('ant-menu-inline-collapsed ant-menu-vertical');
            $('#ant-main-menu').removeClass('ant-menu-inline');
            $('#ant-main-menu').css("padding-left", "unset;");
            $('li.ant-menu-item').addClass('ant-menu-inline-collapsed');
            $('li.ant-menu-item span').hide();
            $('.nav-text').css("opacity", "0");
            $('#upgrade-gradient-box_id').removeClass("upgrade-gradient-box");
            $('#help_icon_id').css("margin-left", "12px");
            $('#app-sidenav').addClass('ant-layout-sider-collapsed');
            $('#app-sidenav').css({ "flex": "0 0 80px", "max-width": "80px", "min-width": "80px", "width": "80px" });
            $('.btn-upgrade').css({ "width": "80px" });
            $('.app-footer').css({ "width": "calc(100% - 80px)" });
            $('.smallLogo').parents('section').first().css("text-align", "center");
            $('.smallLogo').parents('section').first().css("padding", "0");
            $('.smallLogo').show();
            $('.largeLogo').hide();
        }

    }

}

const defaultAvatar = 'https://rentblobdev.blob.core.windows.net/rentcontainer/6356c6b3-2000-4bfe-9a73-8b08248d4d3a.png';
function loadHeader() {
    if (cookieUser != null) {
        if (cookieUser.clientStatus == clientStatus.expired && !window.location.pathname.toLowerCase().includes('dashboard')) {
            goToDashboard();
            return;
        }

        $('#header_screenName').html(cookieUser.screenName);
        $('#header_roleName').html(cookieUser.roleName);
        if (cookieUser.pic == null || cookieUser.pic == '')
            $('#header_pic').attr('src', defaultAvatar);
        else
            $('#header_pic').attr('src', cookieUser.pic);
    }
}

function toggleSubMenu(menu) {
    var parent = $(menu).parent('li');
    var elm = $('#ant-main-menu').find('.ant-menu-submenu-open');
    if ($(parent).find('ul').first().hasClass('ant-menu-hidden')) {

        $(parent).find('ul').first().animate({ height: "toggle" });
        $(parent).find('ul').first().removeClass('ant-menu-hidden');
        $(parent).addClass('ant-menu-submenu-open');

        $(elm).find('ul').animate({ height: "toggle" });
        $(elm).find('ul').first().addClass('ant-menu-hidden');
        $(elm).removeClass('ant-menu-submenu-open');
    }
    else {

        $(parent).find('ul').animate({ height: "toggle" });
        $(parent).find('ul').first().addClass('ant-menu-hidden');
        $(parent).removeClass('ant-menu-submenu-open');
    }
}

function toggleMenu(me) {

    $(me).addClass('d-md-none');
    $(me).removeClass('d-none d-md-inline-block');
    $(me).next('a,.d-md-none').addClass('d-none d-md-inline-block');
    $(me).next('a,.d-md-none').removeClass('d-md-none');
    $(me).prev('a,.d-md-none').addClass('d-none d-md-inline-block');
    $(me).prev('a,.d-md-none').removeClass('d-md-none');
    if ($(window).width() < 768) {
        $('.smallLogo').parents('section').first().css("text-align", "center");
        $('.smallLogo').parents('section').first().css("padding", "0");
        $('.smallLogo').show();
        $('.largeLogo').hide();
        $('#ant-main-menu').addClass('ant-menu-inline');
        $('#app-sidenav').css({ "flex": "0 0 240px", "max-width": "240px", "min-width": "240px", "width": "240px" });
        $('#app-sidenav-container').css({ "position": "absolute", "z-index": "10" });
        $('#ant-layout').css("opacity", "0.5");
        $('body').css("overflow", "hidden");
        $('#app-sidenav').css("height", "100vh");
        $('.btn-upgrade').css({ "width": "240px" });
        $('.btn-upgrade').css({ "display": "block" });
        $('.btn-upgrade').css({ "position": "sticky" });

    }
    else if ($('#ant-main-menu').hasClass('ant-menu-inline-collapsed') || $('#app-sidenav').hasClass('ant-layout-sider-collapsed')) {
        localStorage['sidebarStatus'] = "open";
        $('.smallLogo').hide();
        $('.largeLogo').show();
        $('.smallLogo').parents('section').first().css("text-align", "unset");
        $('.smallLogo').parents('section').first().css("padding-left", "15px");
        $('li.ant-menu-item').removeClass('ant-menu-inline-collapsed');
        $('li.ant-menu-item span').show();
        $('.ant-menu-submenu-open').find('ul').first().removeClass('ant-menu-hidden');
        $('.ant-menu-submenu-open').find('ul').first().css("display", "block");
        $('#app-sidenav').removeClass('ant-layout-sider-collapsed');
        $('#app-sidenav').css({ "flex": "0 0 240px", "max-width": "240px", "min-width": "240px", "width": "240px" });
        $('.btn-upgrade').css({ "width": "240px" });
        $('.app-footer').css({ "width": "calc(100% - 240px)" });
        $('.ant-menu-submenu ').removeClass('ant-menu-submenu-vertical');
        $('.nav-text').css("opacity", "1");
        $('#upgrade-gradient-box_id').addClass("upgrade-gradient-box");
        $('#help_icon_id').css("margin-left", "");
    }
    else {
        localStorage['sidebarStatus'] = "closed";
        $('.smallLogo').show();
        $('.smallLogo').parents('section').first().css("text-align", "center");
        $('.smallLogo').parents('section').first().css("padding", "0");
        $('.largeLogo').hide();
        var subMenuOpen = $('#ant-menu-item').find('.ant-menu-submenu-open');
        $(subMenuOpen).find('ul').first().addClass('ant-menu-hidden');
        $(subMenuOpen).find('ul').first().css("display", "none");
        $('li.ant-menu-item').addClass('ant-menu-inline-collapsed');
        $('li.ant-menu-item span').hide();
        $('#app-sidenav').addClass('ant-layout-sider-collapsed');
        $('#app-sidenav').css({ "flex": "0 0 80px", "max-width": "50px", "min-width": "80px", "width": "80px" });
        $('.btn-upgrade').css({ "width": "80px" });
        $('.app-footer').css({ "width": "calc(100% - 80px)" });
        $('.nav-text').css("opacity", "0");
        $('#upgrade-gradient-box_id').removeClass("upgrade-gradient-box");
        $('#help_icon_id').css("margin-left", "12px");
    }
}

function switchQuickView(me) {
    if ($(me).hasClass('quickview-open-customizer'))
        $(me).removeClass('quickview-open-customizer');
    else
        $(me).addClass('quickview-open-customizer');
}

function toggleQuickView(me) {
    if ($(me).hasClass('quickview-open-customizer')) {

        $(me).removeClass('quickview-open-customizer');
    }
    else {
        $(me).addClass('quickview-open-customizer');
    }
}

function toggleRightSubMenu(menu, show) {
    var parent = $(menu);
    if (show) {
        $('.ant-menu-submenu-popup').find('ul').hide(200, function () {
            $('.ant-menu-submenu-popup').find('ul').first().addClass('ant-menu-hidden');
        });
        $('#' + parent.attr('id') + '-submenu').parent().offset({ top: parent.offset().top, left: 80 });
        $('#' + parent.attr('id') + '-submenu').show(200, function () {
            $('#' + parent.attr('id') + '-submenu').removeClass('ant-menu-hidden');
        });
    } else {
        if ($('#' + parent.attr('id') + '-submenu:hover').length == 0) {
            $('.ant-menu-submenu-popup').find('ul').hide(300, function () {
                $('.ant-menu-submenu-popup').find('ul').first().addClass('ant-menu-hidden');
            });
        }

    }
}



function hideSectionByRole(user) {
    if (user.roleName != null && user.roleroleType == RoleType.custom) {
        hideSectionByPolicy();
    }
}


function hideSectionByPolicy() {
    // var policies = MyUser.role.policies;
    //var policies =  @Html.Raw(Newtonsoft.Json.JsonConvert.SerializeObject(user.role.policies, Newtonsoft.Json.Formatting.Indented));

    for (var i = 0; i < policies.length; i++) {
        if (!policies[i].isRead) {
            $('.' + PolicyType[policies[i].type] + '_read').hide();
            $('.' + PolicyType[policies[i].type] + '_read_data').html("-");
            $('.' + PolicyType[policies[i].type] + '_read_link').hide();
        }
        if (!policies[i].isWrite) {
            $('.' + PolicyType[policies[i].type] + '_write').hide();
            $('.' + PolicyType[policies[i].type] + '_write_data').html("-");
            $('.' + PolicyType[policies[i].type] + '_write_link').hide();
        }
        if (!policies[i].isExecute) {
            $('.' + PolicyType[policies[i].type] + '_execute').hide();
            $('.' + PolicyType[policies[i].type] + '_execute_data').html("-");
            $('.' + PolicyType[policies[i].type] + '_execute_link').hide();
            $('.' + PolicyType[policies[i].type] + '_execute_button').hide();
            $('.' + PolicyType[policies[i].type] + '_execute_button').prop('disabled', true);
        }
    }
}

function restrictAccessByPlugin() {

    $('#store').hide();


    loadedPlugins = getCookie('loadedPlugins');

    if (loadedPlugins == '')
        return;

    loadedPlugins = JSON.parse(loadedPlugins);
   
    let plugin = loadedPlugins.find(x => x.groupkey == "STORE");
    if (plugin != null)
        $('#store').show();

    plugin = loadedPlugins.find(x => x.groupkey == "SUBSCRIPTION");
    if (plugin != null)
        $('#store_subscription').parent().show();
    else
        $('#store_subscription').parent().hide();

    plugin = loadedPlugins.find(x => x.groupkey == "DONATION");
    if (plugin != null)
        $('#store_donation').parent().show();
    else
        $('#store_donation').parent().hide();
  

    plugin = loadedPlugins.find(x => x.groupkey == "CALENDAR");
    if (plugin != null) {
        $('#store_service').parent().show();
        $('#store_serviceagent').parent().show();
    }
    else {
        $('#store_service').parent().hide();
        $('#store_serviceagent').parent().hide();
        plugin = loadedPlugins.find(x => x.groupkey == "SERVICE");
        if (plugin != null)
            $('#store_service').parent().show();
        else
            $('#store_service').parent().hide();
    }

    


}


async function loadPlugins() {
}
