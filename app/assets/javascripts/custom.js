$(function(){

	$("div#team").hide();
	$("div#email").hide();
	switchNav($("ul.about_nav > li"),"class","active");
	switchNav($("ul.contact_nav > li"),"class","active");
	switchNav($("ul.main_nav > li"),"class","active");

	//alert($("body").outerHeight());
	//alert($(window).height());

	$("body").load(function(){
		
		alert($(this).height());
		alert($(window).height());
		if ($(this).height() > $(window).height()) {
			$("footer").css("position","static");
		} else {
			$("footer").css("position","fixed");
		}
	});
	// $("footer").css("position",function(index, currentPosition){
	// 	var totalHeight = this.height() + $("div.wrap").height();
	// 	alert(totalHeight);
	// 	alert($(window).height());
	// 	if (totalHeight > $(window).height()) {
	// 		return "static";
	// 	} else {
	// 		return "fixed";
	// 	}
	// });
	
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

		//alert($("body").outerHeight());
		if ($("body").outerHeight() > $(window).height()) {
			alert($("body").outerHeight());
			$("footer").css("position","static");
		} else {
			$("footer").css("position","fixed");
		}
	});
}

