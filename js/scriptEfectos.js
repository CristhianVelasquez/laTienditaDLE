$('document').ready(function(){	
	//Porción para todos los Tabs
	$('#myTab a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('#temasAyuda li').click(function(e){
		
		$("li").removeClass("active");
		$(this).addClass("active");
		//e.preventDefault();
	});
	
});