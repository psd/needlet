(function() {

    $.getJSON(document.location + ".json", function (data) {
        if (data.details.need_id) {
            window.location = "https://maslow.production.alphagov.co.uk/needs/" + data.details.need_id;
        }
    });

})();
