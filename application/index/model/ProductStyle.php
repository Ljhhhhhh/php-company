<?php
namespace app\index\model;
use think\Model;
class ProductStyle extends Model{
    protected $pk='product_style_id';
    protected $table='qxhat_products_style';
    public function getShowIndex(){
        $res=$this
            ->db()
            ->where('product_style_status',1)
            ->select();
        return $res;
    }
    public function getShowId(){
        $res=$this
            ->db()
            ->where('product_style_status',1)
            ->field('product_style_id')
            ->select();
        return $res;
    }
}