<?php
namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\ModelDataPost;
use CodeIgniter\I18n\Time;

class DataPost extends Controller
{
    public function index()
    {
        $modelData = new ModelDataPost();
        $t=time();
        $myTime = date("d h:i:s",$t);
        $tahun = date("Y",$t);
        $bulan = date("m",$t);
        $minggu = date("w",$t);
        $hari = date("d",$t);
        $data = [
            'id_alat' => $this->request->getVar('id_alat'),
            'Nox_Konsentrasi' => $this->request->getVar('Nox_Konsentrasi'),
            'Cox_Konsentrasi' => $this->request->getVar('Cox_Konsentrasi'),
            'Mox_Konsentrasi' => $this->request->getVar('Mox_Konsentrasi'),
            'time' => $myTime,
            'tahun' => $tahun,
            'bulan' => $bulan,
            'minggu' => $minggu,
            'hari' => $hari
        ];
        $simpan = $modelData ->simpan($data);
        if($simpan){
            $response = [
                'status'   => 201,
                'error'    => null,
                'messages' => [
                    'success' => 'Data post successfully'
                ]
            ];
        }else{
            $response = [
                'status'   => 500,
                'error'    => null,
                'messages' => [
                    'error' => 'Column cannot be null'
                ]
            ];
        }
        
    }
}