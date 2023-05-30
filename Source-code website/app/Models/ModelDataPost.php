<?php
namespace App\Models;
use CodeIgniter\Model;

class ModelDataPost extends Model{
    function __construct(){
        $this->db = db_connect();
    }
    function simpan($data){
        return $this->db->table("data_uji")->insert($data);
    }
}