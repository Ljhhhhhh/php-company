<?php
namespace app\admin\model;
use think\Model;
class About extends Model{
    protected $pk='id';
    protected $table='qxhat_about';
    public function index(){
        $res=$this->db()->find(1);
        return $res;
    }
    public function edit($data){
        $res=$this->db()->where('id',1)->update($data);
        return $res;
    }
    public function joinedit($data){
        $res=$this->db()->where('id',2)->update($data);
        return $res;
    }
}