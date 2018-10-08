
  
  <!-- Section: Slider -->
  <section class="slider">
    <ul class="slides">

     <?php foreach($listImgCarousel as $item): ?>
      
      <li>
        <img src="<?php echo base_url() . $item["ruta"] ?>">
        <!-- random image -->
        <div class="container-fluid">
          <div class="caption font_title1" style="width: 50%;">
            <h2><?= $item["titulo"]?></h2>
            <h5 class="light grey-text text-lighten-3"><?= $item["desc"]?></h5>
          </div>
        </div>
      </li>
     
      <?php endforeach; ?>
    </ul>
  </section>  

  <!-- Section: Cursos -->
  <section id="cursos" class="section section-cursos scrollspy scrollflow -pop -opacity">
    <div class="container-fluid">
      <div class="row">
        <h4 class="center title_line">
          <span class="green-text text-darken-3"><?= $listPalabras["titulo cursos"] ?></span>
        </h4>
      </div>
      <div class="row">
        <?php foreach($listCategoria as $item): ?>
        <div class="col s6 m4 l2">
          <div class="card elemento_activo">
            <div class="card-image">
              <a title="Ver más" href="<?= base_url();?>cCursos/detalle?id=<?= $item["categoria"]["id"] ?>" class="waves-effect green-text text-darken-3">
                <img class="img_categorias materialboxed" src="<?php echo base_url() . $item["categoria"]["img"] ?>" alt="">
              </a>
            </div>
            <div class="card-content center-align">
              <a title="Ver más" href="<?= base_url();?>cCursos/detalle?id=<?= $item["categoria"]["id"] ?>" class="waves-effect green-text text-darken-4">
                <h6><b><?= $item["categoria"]["nombre"]?></b></h6>
              </a>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>

  <!-- Section: Empresas asociadas -->
  <section class="section section-follow grey darken-4 white-text center">
    <div class="container">
      <div class="row scrollflow -slide-right -opacity">
        <div class="col s12">
          <h4><?= $listPalabras["titulo clientes"] ?></h4>
          <p><?= $listPalabras["desc clientes"] ?></p>
          <?php foreach($listEmpresaAsociada as $empresaAsc): ?>
              <a class="center" href="<?= $empresaAsc["enlace"] ?>" target="_blank">
                  <img width="150" src="<?php echo base_url() . $empresaAsc["img"] ?>" alt="<?= $empresaAsc["nombre"]?>">
              </a>
          <?php endforeach; ?>
        </div>
      </div>
    </div>
  </section>

  <!-- Section: Gallery -->
  <section id="gallery" class="section section-gallery scrollspy">
    <div class="container">
      <h4 class="center"><?= $listPalabras["titulo seccion galeria"] ?></h4>
      <div class="row">
        <?php foreach($listImgGallery as $imgGallery): ?>
        <div class="left">
            <img class="img_gallery materialboxed" src="<?= base_url().$imgGallery["img"] ?>">
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>

<!-- Section: Mapa -->
<section  id="mapa"  class="section section-mapa scrollspy">
    <!-- MAPA -->
    <div class="container scrollflow -slide-bottom -opacity">
      <div class="row">
      <h4 class="center green-text text-darken-3">
        <i class="material-icons">location_on</i> <?= $listPalabras["titulo mapa"] ?></h4>
        <div class='sidebar col s12 m4' style="border-bottom: 2px solid green; border-right: 2px solid green; margin-bottom:25px; ">
            <div class="scrollflow -slide-left -opacity">
              <div id='listings' class='listings'></div>
            </div>
        </div>

        <div class="col s12 m8 z-depth-3">
          <div class="scrollflow -slide-right -opacity">
            <div id='map' class='map'></div>
          </div>
        </div>
      </div>
    </div>
</section>


<script>
    var stores = {
        "type": "FeatureCollection",
        "features": [
    
    <?php
        foreach($listCursos as $curso):
    ?>

            {
                "type": "Feature",
                "geometry": {
                    "type": "Point",
                    "coordinates": [
                        <?= $curso["longitud"]; ?>,
                        <?= $curso["latitud"]; ?>
                    ]
                },
                "properties": {
                    "id" : "<?= $curso["id"]; ?>",
                    "nombre":"<?= $curso["nombre"]; ?>",
                    "categoria": "<?= $curso["categoria"]; ?>",
                    "nivel": "<?= $curso["nivel"]?>",
                    "pais": "<?= $curso["pais"]?>"
                }
            },
        <?php endforeach; ?>
        ]
    };

</script>

  <!-- Section: Contact -->
  <section id="contact" class="section section-contact scrollspy">
    <div class="container">
      <div class="row">
        <div class="col s12 m6">
          <div class="scrollflow -slide-bottom -opacity">
            <div class="card-panel green darken-3 white-text center">
              <i class="material-icons">email</i>
              <h5><?= $listPalabras["contactenos de seccion sobre nosotros"]; ?></h5>
              <p><?= $listPalabras["descripcion de seccion sobre nosotros"]; ?></p>
            </div>
            <ul class="collection with-header">
              <li class="collection-item"><i class="material-icons">email</i> <?= $empresaASR->correo; ?> </li>
              <li class="collection-item"><i class="material-icons">call</i> <?= $empresaASR->numero; ?></li>
            </ul>
          </div>
        </div>
        <div class="col s12 m6 z-depth-2">
          <!-- Carousel -->
          <div class="scrollflow -slide-top -opacity">
            <div class="carousel carousel-slider alto2">            

              
              <?php if (count($listComentario) == 0){ ?>
                <div class="carousel-item" href="#one!"></div>
              <?php }?>

              <?php foreach ($listComentario as $comentario): ?>
                <div class="carousel-item " href="#one!">
                  <h2>
                      <i class="material-icons">person</i> 
                      <?= $comentario["nombre"] . " " . $comentario["primer_apellido"]?>
                  </h2>
                  <div class="divider"></div>
                  <p><?= $comentario["comentario"] ?></p>
                </div>
              <?php endforeach; ?>

            </div>
          </div>          
      </div>

      <?php if($this->session->userdata('id') != null){ ?>
        <div class="carousel-fixed-item right marg_1">
          <a class="light-green darken-4 waves-effect waves-light btn modal-trigger" href="#modal1">
            <i class="material-icons">comment</i> Comentar
          </a>
        </div>
      <?php } ?>
    </div>

    <!-- Modal Structure -->
    <div id="modal1" class="modal">
      <form action="<?= base_url() ?>/cPrincipal/insertarComentarioAccion" method="post">
        <div class="modal-content">
          <h5 class="green-text">Ingresar comentario</h5>
          <div class="separador"></div>
          <div class="input-field">
              <textarea class="materialize-textarea" name="comentario" id="comentario" required></textarea>   
              <label for="comentario">Mi comentario</label>
          </div>
        </div>
        <div class="modal-footer">
          <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
          <button type="submit" class="orange modal-close waves-effect waves-green btn-flat">Comentar</button>
        </div>
      </form>
    </div>
    
  </section>

<!-- MAPA -->
<script src="<?php echo base_url(); ?>public/js/Mapa.js"></script>