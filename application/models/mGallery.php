
<?php
/**
* Modelo de Galería
*/
class mGallery extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	// Listado de imágenes para la seccion de galeria
	public function listImg(){
		$this->db->select('id, img');
		$this->db->from('t_gallery');
		return $this->db->get()->result_array();
	}
	
	// Inserta una imagen
	public function insertaImg($param){
		$campos = array(
			'img' => $param["img"]
	    );
		$this->db->insert('t_gallery', $campos);
        $id = $this->db->insert_id();
		return true;
	}
	
	// Elimina una imagen
	public function eliminaImg($id){
		$this->db->trans_start ();
		$this->db->delete('t_gallery', array('id' => $id));
		$this->db->trans_complete ();
		$this->db->trans_status();
		return true;
	}
}