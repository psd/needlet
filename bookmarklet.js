(function() {

    $.getJSON(document.location + ".json")
        .done(function (data) {
            if (data.details && data.details.need_id && parseInt(data.details.need_id) > 100000) {
                window.location = "https://maslow.production.alphagov.co.uk/needs/" + data.details.need_id;
            }
            else {
              alert("A need has not yet been defined for this page");
            }
        })
        .fail(function (data) {
          alert("No information could be found about this page");
        });

})();
