$.fn.underline = function () {
    $(this).css("text-decoration", "underline");
    return $(this);
}
$.fn.bgcolor = function (value) {
    $(this).css("background-color", value);
}
$.fn.toCaps = function () {
    $(this).css("text-transform", "uppercase");
    //$(this).html($(this).html().toUpperCase());
}
$.fn.bold = function () {
    $(this).css("font-weight", "bold");
    return $(this);
}