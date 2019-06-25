$(document).ready(function () {

    $("#btnSearchJob").click(function (e) {
        e.preventDefault();
        var keyword = $("#txtKeyword").val();
        var place = $("#txtPlace").val();
        var currentlink = window.location.protocol + '//' + window.location.hostname  + window.location.pathname;
        debugger
        currentlink = currentlink + "?keyword=" + keyword + "&place=" + place;
        $.ajax({
            url: currentlink,
            data: { isajax: true },
            success: function (data) {
                $('.ajaxresponse').html(data);
                $('.newspager').remove();
                $(data).find('.newspager').insertAfter($('.ajaxresponse'));
            }
        });

    });
});