$(function(){

	$("div#team").hide();
	$("div#email").hide();
	switchNav($("ul.about_nav > li"),"class","active");
	switchNav($("ul.contact_nav > li"),"class","active");
	switchNav($("ul.main_nav > li"),"class","active");

});

function switchNav (ulList,attrName,value) {
	ulList.click(function(){
		var tmp = $(this).attr("id");
		$.each(ulList,function(){
			if (tmp == $(this).attr("id")) {
				$(this).addClass(value);
				if ($(this).find("a").attr("href").substring(0,1) == "#") {
					$("div"+$(this).find("a").attr("href")).show();
				}
			} else {
				$(this).removeClass(value);
				if ($(this).find("a").attr("href").substring(0,1) == "#") {
					$("div"+$(this).find("a").attr("href")).hide();
				}
			}
		});

		if ($("body").outerHeight() > $(window).height()) {
			$("footer").css("position","static");
		} else {
			$("footer").css("position","fixed");
		}
	});
}

