<!-- SECCION PARA DETALLE DE CURSOS -->
<section>
    <div class="container">
        
        <div class="margin_top_detalle marg_top">
            <div class="row">
                <div class="col s12">
                    <a class="btn green darken-3" href="<?php echo base_url(); ?>cPersona/insertar">
                        <i class="material-icons">add_to_photos</i> Agregar
                    </a>
                </div>
            </div>
            
            <div class="row">
                <form method="POST" class="form-horizontal" action="<?php echo base_url(); ?>cPersona">
                    <div class="col s3 m3">
                        <input class="form-control" name="nombre" type="text" placeholder="Nombre">
                    </div>
                    <div class="col s3 m3">
                        <input class="form-control" name="apellido" type="text" placeholder="Apellido">
                    </div>
                    <div class="col s3 m3">
                        <input class="form-control" name="fecha_matriculado" type="date">
                    </div>
                    <div class="col s3 m3">
                        <input class="form-control" name="fecha_finalizado" type="date">
                    </div>
                    <div class="col s3 m3">                    
                        <button type="submit" class="btn orange darken-4">
                            <i class="material-icons">search</i> Buscar
                        </button>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="row">
            <ul class="collapsible popout">
                <?php
                    foreach($listPersona as $personaTem):
                        $persona        = $personaTem["persona"];
                        $listExpediente = $personaTem["expediente"];
                ?>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">assignment_ind</i> 
                            <?= $persona['nombre']." " . $persona['primer_apellido'] ?>
                        </div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col m4">
                                    <div class="col s9">
                                        <img class="responsive-img" src="<?= base_url() . $persona['img'] ?>">
                                    </div>
                                    <div class="col s12"><b>Cédula:</b> <?= $persona['cedula']; ?></div>
                                    <div class="col s12"><b>Rol:</b> <?= $persona['nombre_es']; ?></div>
                                    <div class="col s12"><b>Pais:</b> <?= $persona['pais'] ?></div>
                                    <div class="col s12">
                                        <a class="btn grey darken-1" href="<?= base_url()."cPersona/actualizarPersona?id=".$persona['id_persona'];?>" 
                                            title="Editar">
                                            <i class="material-icons">edit</i>
                                        </a>
                                        
                                        <!-- Activa o Desactiva -->
                                        <?php if($persona['activo']){ ?>
                                            <a class="btn red eliminar" 
                                                data-estado="<?=$persona['activo']?>" 
                                                data-nombre="<?=$persona['nombre']?>" 
                                                id="<?= $persona['id_persona'] ?>" 
                                                onclick="return cambiarEstadoPersona(<?= $persona['id_persona'] ?>);" 
                                                title="Deactivar">
                                                <i class="material-icons" id="icon-<?= $persona['id_persona'] ?>">delete</i>
                                            </a>
                                        <?php }else{ ?>
                                            <a class="btn green" 
                                                data-estado="<?=$persona['activo']?>" 
                                                data-nombre="<?=$persona['nombre']?>" 
                                                id="<?= $persona['id_persona'] ?>" 
                                                onclick="return cambiarEstadoPersona(<?= $persona['id_persona'] ?>);" 
                                                title="Activar">
                                                <i class="material-icons" id="icon-<?= $persona['id_persona'] ?>">check</i>
                                            </a>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="col m8">
                                    <div class="card-panel green text-center">
                                        <h5 class="white-text"><i class="material-icons">book</i> Lista de cursos</h5>
                                    </div>

                                    <?php  if (count($listExpediente) == 0){ ?>
                                        <h6 class="text-warning">No tiene cursos registrados</h6>
                                    <?php 
                                    } else{ ?>
                                        <ul class="collection with-header"> 
                                        <?php
                                        foreach ($listExpediente as $expediente) { ?>
                                            <li class="collection-item">
                                                <b class="green-text darken-4"><i class="material-icons">assignment</i> <?= $expediente["curso"] ?></b>
                                                <p><b>Notas: </b><?= $expediente["detalle"] ?></p>
                                                <p><b>Fecha Matriculado: </b><?= $expediente["fecha_matriculado"] ?></p>
                                                <p><b>Fecha Finalizado: </b><?= $expediente["fecha_finalizado"] ?></p>
                                                <p><b>Estado: <span class="blue-text text-darken-4"><?= $expediente["estado"] ?> </span> </b></p>
                                            <?php 
                                            if($expediente["titulo"] != null && $expediente["titulo"] != ""){ ?>
                                                <a href="<?= base_url() . '/' . $expediente["titulo"]?>" class="btn light-green darken-1" 
                                                    download="titulo del curso <?= $expediente["curso"] ?>">
                                                    <i class="material-icons">archive</i> Descargar Título
                                                </a>
                                            <?php 
                                            }else{ ?>
                                                <p class="text-primary">No hay archivos disponibles para descargar</p>
                                            <?php } ?>
                                            </li>    
                                    <?php } ?>
                                    </ul>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </li>
                
                <?php endforeach; ?>
            </ul>



        </div>

        </div>
    </div>
</section>