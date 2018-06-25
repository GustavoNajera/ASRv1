<?php
/**
 * Controlador para Galería
 */
class cGallery extends CI_Controller
{
    function __construct(){
        parent::__construct();

        // Asigna mensajes para validaciones
		$this->form_validation->set_message('required', TEXT_VALIDATE_REQUIRED);
    }

    // Por defecto, vista administrativa de la galeria 
    public function index(){
        $this->gallery();
    }

    // Vista administrativa de la galeria 
    public function gallery(){
        $this->mLogin->verifica_sesion();

        $data["listImgGallery"]  = $this->mGallery->listImg();
        
        $this->load->view("vistasParciales/head.php");
        $this->load->view("vistasParciales/menuAdmin.php");
        $this->load->view("gallery/vActualizar_gallery",$data);
        $this->load->view("vistasParciales/footer.php");
    }

    // Insertar Categoria ACCION
    public function insertaImgAccion(){
        $this->mLogin->verifica_sesion();

        $this->libArchivos->configGallery();
        $result = $this->libArchivos->carga_archivo(null, "img");
        
        if($result["result"]){
            $param["img"]    = $result["nuevaRuta"];
            $this->mGallery->insertaImg($param);
            $data['result']  = SUCCESS;
        }else{
            $data["result"]  = $result["msgError"];
        }
        $data["listImgGallery"]  = $this->mGallery->listImg();
        
        $this->load->view("vistasParciales/head.php");
        $this->load->view("vistasParciales/menuAdmin.php");
        $this->load->view("gallery/vActualizar_gallery",$data);
        $this->load->view("vistasParciales/footer.php");
    }
    
    // Eliminar imagen
	function eliminaImg(){
        $this->mLogin->verifica_sesion();
        
        $id  = $this->input->get('id');
        $img = $this->input->get('img');
        $result = $this->mGallery->eliminaImg($id);
        if ($this->libArchivos->elimina_archivo($img)){
            $data["result"] = SUCCESS;
        }else{ 
            $data["result"] = "No se pudo eliminar la imagen"; 
        }

        $data["listImgGallery"]  = $this->mGallery->listImg();
        $this->load->view("vistasParciales/head.php");
        $this->load->view("vistasParciales/menuAdmin.php");
        $this->load->view("gallery/vActualizar_gallery",$data);
        $this->load->view("vistasParciales/footer.php");
	}

}
