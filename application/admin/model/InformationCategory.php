<?php
namespace app\admin\model;
use think\Model;
class InformationCategory extends Model{
    protected $db='category_id';
    protected $table='qxhat_information_category';
    public function getCategory(){
        $res=$this->db()->select();
        return $res;
    }
}