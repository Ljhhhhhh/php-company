<?php
namespace app\admin\model;
use think\Model;
class Product extends Model{
    protected $pk='id';
    protected $table='qxhat_products';
    public function index(){
        $product_list=$this
            ->db()
            ->alias('a')
            // ->join('qxhat_products_brand b','a.brand_id=b.brand_id')
            // ->join('qxhat_products_style c','a.product_style_id=c.product_style_id')
            ->order('update_time desc')
            ->paginate(10);
        return $product_list;
    }
    public function getCount(){
        $count=$this->db()->count();
        return $count;
    }
    public function doAdd($data){
        $this->save($data);
        $res=$this->db()->getLastInsID();
        return $res;
    }
    public function updateStatus($id,$status){
        $this->db()
            ->where('id',$id)
            ->update(['status'=>$status]);
    }
}