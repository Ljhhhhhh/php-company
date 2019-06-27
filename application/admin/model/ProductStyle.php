<?php
namespace app\admin\model;
use think\Model;
class ProductStyle extends Model{
    protected $autoWriteTimestamp=false;
    protected $pk='product_style_id';
    protected $table='qxhat_products_style';
    public function getStyle(){
        $res=$this->db()->paginate();
        return $res;
    }
    public function getCount(){
        $res=$this->db()->count();
        return $res;
    }
    public function setStatus($id){
        $status=$this
            ->db()
            ->where('product_style_id',$id)
            ->find();
        if($status['product_style_status']){
            $update=['product_style_status'=>0];
        }else{
            $update=['product_style_status'=>1];
        }
        $res=$this->db()->where('product_style_id',$id)->update($update);
        return $res;
    }
    public function edit($id){
        $res=$this
            ->db()
            ->find($id);
        return $res;
    }
    public function doEdit($data){
        $res=$this->update($data);
        return $res;
    }
    public function add($data){
        $res=$this->save($data);
        return $res;
    }
}