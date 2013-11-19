<div id="principal">
	<div class="pull-left tabbable tabs-left well" id="tab-menu">
		<!--Secciones*/-->
		<ul id="myTab"class="nav nav-tabs">
			<li class=""><a href="#S1" data-toggle="tab">M&aacute;s comprados</a></li>
			<li class=""><a href="#S2" data-toggle="tab">Nuevos productos</a></li>
			<li class="active"><a href="#S3" data-toggle="tab">Marcas presentes</a></li>
		</ul>
		<!--Contenido*/-->
		<div class="tab-content">
			<div class="tab-pane" id="S1">
				<img src="img\Tab\comprados.jpg" alt="Más comprados" />
			</div>
			<div class="tab-pane" id="S2">
				<img src="img\Tab\nuevos.jpg" alt="Nuevos Productos" />
			</div>
			<div class="tab-pane active" id="S3">
				<img src="img\Tab\marcas.gif" alt="Marcas presentes" />
			</div>
		</div>
	</div>

	<div class="pull-right well" id="slideShow" >
		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>
			<!-- Carousel items -->
			<div class="carousel-inner">
				<div class="item active">
					<img style="width:300px" src="img\SlideShow\Producto1.jpg" alt="Cleanex">
					<div class="carousel-caption">
						<h4>Primer Producto</h4>
						<p>Un producto indispensable para el aseo del hogar. Incluye paño
							multiusos. </br> <strong>Precio: </strong> <em>S/. 3</em>  </p>
					</div>
				</div>
				<div class="item">
					<img style="width:300px" src="img\SlideShow\Producto2.jpg" alt="Betún Imperial">
					<div class="carousel-caption">
						<h4>Segundo Producto</h4>
						<p>Lo último en betunes para zapatos, recién ingresado al mercado.
							Incluye escobilla multiusos </br> <strong>Precio: </strong>
							<em>S/. 2</em></p>
					</div>
				</div>
				<div class="item">
					<img style="width:300px" src="img\SlideShow\Producto3.jpg" alt="Palillos Chinos">
					<div class="carousel-caption">
						<h4>Tercer Producto</h4>
						<p>Palitos chinos (Kuai Zi) hechos con madera selecta y reforestada.
							Incluye liga. <strong>Precio: </strong> <em>S/. 1</em></p>
					</div>
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
		</div>
	 </div>
</div>