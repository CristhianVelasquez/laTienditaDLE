$('document').ready(function(){	
	//Porción para todos los Tabs
	$('#myTab a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	
	$('#AyudaRegistro a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	
	//Slideshows
	$('.carousel').carousel({
		interval: 3000,
		pause: "hover"
	})
	
	$('#catalogoTab a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('#catalogoTab a').focus(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
		
});