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
				$(this).attr(attrName,value);
				if ($(this).find("a").attr("href").substring(0,1) == "#") {
					$("div"+$(this).find("a").attr("href")).show();
				}
			} else {
				$(this).removeAttr(attrName,value);
				if ($(this).find("a").attr("href").substring(0,1) == "#") {
					$("div"+$(this).find("a").attr("href")).hide();
				}
			}
		});
	});
}

