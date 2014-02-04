(function() {

    $.getJSON(document.location + ".json", function (data) {
        if (data.details.need_id && parseInt(data.details.need_id) > 100000) {
            window.location = "https://maslow.production.alphagov.co.uk/needs/" + data.details.need_id;
        }
        else {
          alert("No need can be found for this GOV.UK page");
        }
    });

})();
