<!-- SECCION PARA ACTUALIZAR LAS EMPRESAS ASOCIADAS -->
<section>
    <div class="container">        

        <!-- FORMULARIO PARA REGISTRAR NUEVO ELEMENTO -->
        <div class="row">
            <div class="col s12 margin_top_detalle">            
                <div class="text-center">
                    <h1>Ingresar una imagen</h1>
                </div>
            </div>
        </div>

        <!-- Validaciones -->
        <?php include_once('application/views/vistasParciales/validaciones.php');?>

        <div class="row">
            <form enctype="multipart/form-data" action="<?php echo base_url(); ?>cGallery/insertaImgAccion" method="post">

                <div class="row">
                    <div class="input-field col m6">
                        <div class="file-field input-field">
                            <div class="btn light-green darken-1">
                                <span>Imagen</span>
                                <input type="file" accept="application/, .jpg, .png, .jpeg, .gif" name="img" required>
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>
                    </div>

                    <div class="input-field col m6">
                        <button type="submit" class="btn btn-success green">Ingresar</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- FIN DE FORMULARIO PARA REGISTRAR NUEVO ELEMENTO -->

    </div>
</section>

<!-- Eliminar imagenes -->
<section class="black">
    <div class="container">
        <div class="col m12 margin_top_detalle">            
            <div class="text-center">
                <h1 class="white-text">Eliminar imágenes</h1>
                <p class="white-text">A continuación se muestran las imágenes registradas en el sistema</p>
            </div>
        </div>

        <div class="row">
            <?php if(count($listImgGallery) == 0){ ?>
                <h6 class="white-text" style="margin-bottom:120px;">No hay imágenes registradas en el sistema</h6>
            <?php
                }
                foreach($listImgGallery as $imgGallery): 
            ?>
            <div class="input-field col s6 m4 l3 alto2">
                <img class="col s12" src="<?= base_url().$imgGallery["img"] ?>">
                <div class="col s12">
                    <a class="btn btn_interior black" href="<?php echo base_url()."cGallery/eliminaImg?id=".$imgGallery["id"] . "&img=" . $imgGallery['img'] ?>" 
                        title="Eliminar"><i class="material-icons">delete</i></a>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>