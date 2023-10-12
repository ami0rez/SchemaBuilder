
var elements;
var useNewCC = true;
var style = {
    base: {
        color: "#32325d",
        fontFamily: 'Arial, sans-serif',
        fontSmoothing: "antialiased",
        fontSize: "16px",
        "::placeholder": {
            color: "#32325d"
        }
    },
    invalid: {
        fontFamily: 'Arial, sans-serif',
        color: "#fa755a",
        iconColor: "#fa755a"
    }
};

var card ;


function loadCard() {
    elements = stripe.elements();
    card = elements.create("card", { style: style });
    // Stripe injects an iframe into the DOM
    card.mount("#card-element");
}
// Create a token or display an error when the form is submitted.

function getToken() {
    $('#card-errors').hide();
    if (useNewCC) {
        stripe.createToken(card).then(function (result) {
            if (result.error) {
                console.log("I have an error");
                spinnerEvent = true;
                unloadSpinnerEffect();
                // Inform the customer that there was an error.
                $('#card-errors').show();
                var errorElement = document.getElementById('card-errors');
                errorElement.textContent = result.error.message;
                toastr.error(result.error.message);
            } else {

                stripeTokenHandler(result.token);
            }
        });
    }
    else
        saveStripeOrder();
}


function stripeTokenHandler(token) {
    // Insert the token ID into the form so it gets submitted to the server
    $('#stripeToken').val(token.id);
    saveStripeOrder();




}
