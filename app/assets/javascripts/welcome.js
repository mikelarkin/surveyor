// Toggler
// Shows an element when a select is changed to the specified value
$.toggler = function (select, value, element) {

    $(select).change(function () {
        if ($(select).val() == value) {
            $(element).removeClass("hide");
            $(element).animate({ opacity:1, height:'100%' }, 200);
        } else {
            $(element).addClass("hide")
            $(element).animate({ opacity:0, height:0 }, 200);
        }

    });

};

$(document).ready(function () {
    $.toggler('select.toggler', "School Health Coordinator", "#extra_questions");
    $('select.toggler').change();
});