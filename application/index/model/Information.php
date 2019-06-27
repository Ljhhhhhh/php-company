<?php
namespace app\index\model;
use think\Model;
class Information extends Model{
    protected $pk='id';
    protected $table='qxhat_information';
    public function getInformation(){
        $res=$this->db()->order('update_time desc')->select();
        return $res;
    }
    public function index(){
        $res=$this
            ->db()
            ->alias('a')
            ->join('qxhat_information_category b','a.category_id=b.category_id')
            ->where('status','<>','0')
            ->order('sort','update_time desc')
            ->paginate(6);
        return $res;
    }
    public function category($id){
        $res=$this
            ->db()
            ->where('category_id',$id)
            ->where('status','<>','0')
            ->order('update_time')
            ->paginate(6);
        return $res;
    }
}