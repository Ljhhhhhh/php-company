<?php
namespace app\admin\model;
use think\Model;
class ProductImage extends Model{
    protected $pk='img_id';
    protected $table='qxhat_products_image';
    public function add($data){
        $res=[];
        foreach ($data as $d){
            $this->db()->insert($d);
            $res[]=$this->db()->getLastInsID();
        }
        return $res;
        //把image表自增的id返回回去，用来给即将自增的产品id做关联
    }
    public function setImage($images_id,$id){
        foreach ($images_id as $image){
            $this->db()->where('img_id',$image)->update(['images_id'=>$id]);
            //更新上传的组图对应产品的ID
        }
    }
    public function del($id){
        $res=$this->db()->find($id);
        $this->db()
            ->where('img_id',$id)
            ->delete();
        return $res;
    }
}