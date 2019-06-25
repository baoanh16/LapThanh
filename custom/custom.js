$(document).ready(function () {
	$("body").on("click", ".subscribebutton", function () {
		$(".subscribe>div").bind("DOMSubtreeModified", function () {
			$.ajax({
				url: window.location.protocol + "//" + window.location.hostname,
				data: {
					isajax: true
				},
				success: function (res) {
					$(".Module-155").html($(res).find(".Module-155"))
				}
			})
		})
	})
})