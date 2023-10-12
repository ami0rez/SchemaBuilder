/*
 * This file manages on boarding memberships
 */

var badPlugins = [];
var extraPlugins = [];
var includedPlugins = [];

var extraCleanedPlugins = [];
var includedCleanedPlugins = [];

var paymentAmount = 0;

var MemberShipBox = `
    <div class="plan-content select-plan CLASS_NAME plan_PLAN_ID" onClick="makeSelected('PLAN_ID')" price_month="PLAN_PRICE_MONTH" price_year="PLAN_PRICE_YEAR"  >
        <div class="plan-header">
            <div class="plan-title">PLAN_NAME</div>
            <div class="plan-price">PLAN_PRICE_MONTH</div>
            <div class="planperiod">/Mo</div>
        </div>
        <div class="plan-description">
            <p>PLAN_DESCRIPTION</p>
        </div>
    </div>
    `;


/*
 * List memberships
 */
function listMemberships() {
    if (user.billingFrequency == 0)
        user.billingFrequency = billingFrequencies.yearly;

    memberships.sort((a, b) => (a.KEY > b.KEY) ? 1 : -1);

    var flag = 0;
    for (var i = 0; i < memberships.length; i++) {
        if (!memberships[i].free) {
            flag = 0;

            var line = MemberShipBox.replace(/PLAN_NAME/g, (memberships[i].name ?? ''));

            line = line.replace(/PLAN_PRICE_MONTH/g, '$' + toMoney(memberships[i].monthlyCost));
            line = line.replace(/PLAN_PRICE_YEAR/g, '$' + toMoney(memberships[i].yearlyCost / 12));
            line = line.replace(/PLAN_ID/g, memberships[i].id);


            line = line.replace(/PLAN_DESCRIPTION/g, (memberships[i].details ?? ''));
            if (memberships[i].isDefault) {
                flag = 1;
                paymentAmount = toMoney(memberships[i].monthlyCost);
            }
            if (memberships[i].hide != null && memberships[i].hide)
                line = line.replace(/CLASS_NAME/g, "DONTSHOW");
            else
                line = line.replace(/CLASS_NAME/g, "");

            $('.plans').append(line);
            if (flag == 1) {
                makeSelected(memberships[i].id);
            }
        }
    }
    var freePlan = memberships.find(x => x.free);
    if (freePlan != null)
        $('.plans').append(`<div class='freePlan'><a href='#' class="" onCLick="makeSelected('` + freePlan.id + `')"> Or Just Get the Free Plan *</a></div>`);

    $('#Period').prop('checked', true);

    if (user.billingFrequency == billingFrequencies.monthly) {
        showPeriod('month');
        $('#Period').prop('checked', false);
    }

    var m = memberships.find(x => x.isDefault == true);
    user.tempMembershipId = m.id;
    loadFeatures(m);

}

function loadLabels(membershipSelected) {

    var extraPluginsPrice = getExtraPrices();
    var membership = memberships.find(x => x.id == membershipSelected);
    $('.plantitle').html(membership.name);
    if (membership.isFree) {
        $('.SelectPlans').hide();
        $('.freemium').show();
        $('.NOTfreemium').hide();
        $('#period').html('');
        $('#startNow').html('Start Your Free Plan <i class="fas fa-angle-right"></i>')
        $('.plan-finalprice').html('$0.00');
        return;
    }

    if (user.billingFrequency == billingFrequencies.monthly) {

        $('.planprice').html('$' + toMoney(membership.monthlyCost + extraPluginsPrice));
        $('.plan-finalprice').html('$' + toMoney(membership.monthlyCost));
        $('#period').html('Monthly');
        $('.SelectPlans').html("");
    }
    else {
        $('.planprice').html('$' + toMoney(membership.yearlyCost + (extraPluginsPrice * 12)));
        $('.plan-finalprice').html('$' + toMoney(membership.yearlyCost / 12));
        $('.SelectPlans').html("Billed annually");
        $('#period').html('Annually')
    }

    $('#startNow').html('Verify Me <i class="fas fa-angle-right"></i>')
    $('.planperiod').html('/Mo');
    $('.freemium').hide();
}

/*
 * Make plan selected
 */
function makePlanSelected(id) {

    user.tempMembershipId = id;
    loadLabels(id);

}

/*
 * Load membership features
 */
function loadFeatures(selectedMembership) {

    if (user.billingFrequency != billingFrequencies.monthly)
        showPeriod('year');

    features = selectedMembership.features;
    listFeatures();
}

/*
 * List features
 */
function listFeatures() {

    $('.features').html('');
    var Mainline = `<div class="feature-item">
                        <span class="img-check"><img src="/img/icon-check.png"></span>
                            TEXT
                    </div>`;

    for (var i = 0; i < features.length; i++) {
        var line = Mainline.replace(/TEXT/g, (features[i].text ?? ''));
        $('.features').append(line);
    }
    if (includedCleanedPlugins != '') {
        includedCleanedPlugins.split(',').forEach(y => {
            var plugin = plugins.find(x => x.id == y);
            if (plugin != null) {
                var line = Mainline.replace(/TEXT/g, ('Includes ' + plugin.name));
                $('.features').append(line);
            }
        });
    }
    if (extraCleanedPlugins != '') {
        extraCleanedPlugins.split(',').forEach(y => {
            var plugin = plugins.find(x => x.id == y);
            if (plugin != null) {

                var price = getExtraPluginPrice(plugin);
                var line = Mainline.replace(/TEXT/g, '<b>' + (plugin.name + ' not included, addt $' + toMoney(price) + '/Mo') + '</b>');
                if(price>0)
                    $('.features').append(line);
            }
        });
    }
    //checkSelectedWithPluginsSelected(user.tempMembershipId);
}

function getExtraPrices() {
    if (extraCleanedPlugins != '') {
        var price = 0;
        extraCleanedPlugins.split(',').forEach(y => {
            var plugin = plugins.find(x => x.id == y);
            if (plugin != null) {
                price += getExtraPluginPrice(plugin);
            }
        });
        return price;
    }

    return 0;
}

function updateExtraPlugins(planId) {

    var selectedPlugins = plugins.filter(x => x.includedMemberships?.includes(planId));

    extraPlugins = user.selectedPlugins;
    extraCleanedPlugins = '';
    selectedPlugins.forEach(x => {
        if (extraPlugins.includes(x.id)) {
            extraPlugins = extraPlugins.replace(x.id + ',', "");
            extraPlugins = extraPlugins.replace(x.id, "");
        }
        const myLevel = x.level;
        const lowerplugins = plugins.filter(y => y.level < myLevel && y.groupkey == x.groupkey);
        lowerplugins.forEach(y => {
            if (extraPlugins.includes(y.id)) {
                extraPlugins = extraPlugins.replace(y.id + ',', "");
                extraPlugins = extraPlugins.replace(y.id, "");
            }
        });
    });
    

    extraCleanedPlugins = cleanExtras(extraPlugins);
}

function getExtraPluginPrice(plugin) {


    var matchingPluginGroup = loadedPlugins.find(x => x.groupkey == plugin.groupkey);

    if (matchingPluginGroup != null && matchingPluginGroup != '') {
        if (matchingPluginGroup.level == plugin.level)
            return 0;
        
        else {
            if (matchingPluginGroup.level > plugin.level)
                return 0;
            else
                if (user.billingFrequency == billingFrequencies.monthly)
                    return (plugin.pricePerMonth - matchingPluginGroup.pricePerMonth);
                else
                    return (plugin.pricePerYear - matchingPluginGroup.pricePerYear)/12;
        }
    }
    else 
        if (user.billingFrequency == billingFrequencies.monthly)
            return (plugin.pricePerMonth);
        else
            return (plugin.pricePerYear/12);
    
}

function cleanExtras(fields) {
    // Filter plugins by included fields
    const myplugins = plugins.filter((x) => fields.includes(x.id));

    // Create object with one plugin per group key with the highest level
    const highestPerGroup = myplugins.reduce((acc, plugin) => {
        if (!acc[plugin.groupkey] || acc[plugin.groupkey].level < plugin.level) {
            acc[plugin.groupkey] = plugin;
        }
        return acc;
    }, {});

    // Extract IDs of highest-level plugins
    const myfields = Object.values(highestPerGroup).map((plugin) => plugin.id);

    return myfields.join(',');
}

function updateIncludedPlugins(planId) {
    var selectedPlugins = plugins.filter(x => x.includedMemberships?.includes(planId));

    includedPlugins = '';
    selectedPlugins.forEach(x => {
        includedPlugins += x.id + ',';
    });

    includedCleanedPlugins = cleanExtras(includedPlugins);
}

function checkSelectedWithPluginsSelected(selectedId) {

    badPlugins = [];

    var Mainline = `
        <div class="feature-item">
                TEXT
        </div>`;

    var membership = memberships.find(x => x.id == selectedId);
    var selectedPlugins = plugins.filter(x => user.selectedPlugins.includes(x.id));
    if (selectedPlugins != null && selectedPlugins.length > 0) {

        selectedPlugins = selectedPlugins.filter(x => x.requiredMemberships != '' && x.requiredMemberships != null);
        console.log('selectedPlugins.length :' + selectedPlugins.length);
        for (var i = 0; i < selectedPlugins.length; i++) {

            if (!selectedPlugins[i].requiredMemberships.includes(selectedId)) {
                badPlugins.push(selectedPlugins[i].id);
                var line = Mainline.replace(/TEXT/g, '<i style="font-size:16px;color:#F9EAEC" class="fas fa-exclamation-triangle img-check"></i><B> The plugin " ' + selectedPlugins[i].name + ' " is not compatible with the selected membership plan.</b> ');
                line += '<i style="font-size:16px;color:#F9EAEC" class="fas fa-exclamation-triangle img-check"></i><B> If you continue with this plan, the plugin will be unselected.</b> ';
                $('.features').append(line);
            }
        }
    }
}

/*
 * Make selected
 */
function makeSelected(planId) {
    user.tempMembershipId = planId;
    updateExtraPlugins(planId);
    updateIncludedPlugins(planId);
    makePlanSelected(planId);
    $('.btnNext').attr('disabled', false);
    if ($('.plan_' + planId).hasClass("cannotbeselected"))
        return;
    $('.select-plan').removeClass('plan-content-primary');
    $('.plan_' + planId).addClass('plan-content-primary');

    var m = memberships.find(x => x.id == planId);
    loadFeatures(m);
}



/*
 * Show period
 */
function showPeriod(period) {

    if (period == "month") {
        user.billingFrequency = billingFrequencies.monthly;
        $('.plan-price').each(function () {
            $(this).html($(this).parents('.select-plan').attr('price_month'));
        });
        $('.SelectPlans').html("");
    }
    else {
        user.billingFrequency = billingFrequencies.yearly;
        $('.plan-price').each(function () {
            $(this).html($(this).parents('.select-plan').attr('price_year'));
        });
        $('.SelectPlans').html("Billed annually");
    }
    listFeatures();
}

/*
 * Start no auth
 */
function startNoAuth() {
    var paymentAmount = 0;
    var monthlyExtra = getExtraPrices();
    var membership = memberships.find(x => x.id == user.tempMembershipId);

    if (user.billingFrequency == billingFrequencies.monthly)
        paymentAmount = membership.monthlyCost + monthlyExtra;
    else
        paymentAmount = (membership.yearlyCost) + (monthlyExtra * 12);

    slickyOrder.saveProfile = false;
    slickyOrder.token = "";
    slickyOrder.id = e7();

    slickyOrder.userEmail = user.email;
    slickyOrder.type = slickyOrderTypes.free;
    slickyOrder.membershipId = user.tempMembershipId;
    slickyOrder.total = paymentAmount;
    slickyOrder.subtotal = paymentAmount;
    slickyOrder.tax = 0;
    slickyOrder.status = orderStatuses.ordered;
    slickyOrder.billingFrequency = user.billingFrequency;
    slickyOrder.userId = user.id;
    slickyOrder.clientId = user.clientId;
    slickyOrder.plugins = extraPlugins;

    user.selectedPlugins = includedPlugins + extraPlugins;

    ajaxCall("POST", slickyOrder, 'SlickyOrder', "Free Trial Started Successfully", "Free Trial", data => {
        var startDate = moment().add(14, 'days');
        saveMultiPatch("Client", user.clientId, ["billingFrequency", "tempMembershipId", "step", "paymentStartDate", "selectedPlugins"],
            [user.billingFrequency, user.tempMembershipId, boardingSteps.final, startDate, user.selectedPlugins], data => {
                user.clientStep = boardingSteps.final;
                user.clientStatus = clientStatus.good;
                updateUserFromCookie(user);
                OrderSuccess();
        });
        
    }, OrderFailed);

}

/*
 * Execute payment step
 */
function paymentStep() {
    var freePlan = memberships.find(x => x.free);
    if (freePlan != null && freePlan.id == user.tempMembershipId) {
        var paymentAmount = 0;
        var membership = memberships.find(x => x.id == user.tempMembershipId);

        if (user.billingFrequency == billingFrequencies.monthly)
            paymentAmount = membership.monthlyCost;
        else
            paymentAmount = membership.yearlyCost;

        slickyOrder.saveProfile = false;
        slickyOrder.token = "";
        slickyOrder.id = e7();

        slickyOrder.userEmail = user.email;
        slickyOrder.type = slickyOrderTypes.purchase;
        slickyOrder.membershipId = user.tempMembershipId;
        slickyOrder.total = 0;
        slickyOrder.status = orderStatuses.approved;
        slickyOrder.billingFrequency = user.billingFrequency;
        slickyOrder.userId = user.id;
        slickyOrder.clientId = user.clientId;

        ajaxCall("POST", slickyOrder, 'SlickyOrder', "Freemium Started Successfully", "Order", data => {
            var startDate = moment();
            saveMultiPatch("Client", user.clientId, ["tempMembershipId", "billingFrequency", "membershipId", "step", "paymentStartDate"],
                [null, user.billingFrequency, user.tempMembershipId, boardingSteps.final, startDate], data => {
                    user.clientStep = boardingSteps.final;
                    user.clientStatus = clientStatus.good;
                    user.membershipId = user.tempMembershipId;
                    user.tempMembershipId = null;
                    updateUserFromCookie(user);
                });
        }, OrderFailed);

    }
    else {
        getToken();
    }

}

/*
 * On order success
 */
function OrderSuccess() {


    $('#paymentSuccess').show();
    $('#paymentFailed').hide();
    $('#paymentContent').hide();
    $('.title').css('visibility', 'hidden');
    $('.background-components').css('display', 'block');
}

/*
 * On order failed
 */
function OrderFailed() {
    $('#paymentSuccess').hide();
    $('#paymentFailed').show();
    $('#paymentContent').hide();
    $('.title').css('visibility', 'hidden');
    $('.background-components').css('display', 'none');
    $("#ccButton").html("Try Again...");
}