<?php
namespace app\index\model;
use think\Model;
class Product extends Model{
    protected $pk='id';
    protected $table='qxhat_products';
    public function getRecommend(){
        return $this
            ->db()
            ->where('status',2)
            ->order('update_time desc')
            ->limit(6)
            ->select();
        //获取推荐的产品，放到通用页
    }
    public function getShowProduct($style){
        $ids=Model('ProductStyle')->getShowId();
        $new_ids=[];
        foreach ($ids as $id){
            $new_ids[]=$id['product_style_id'];
        }
        $products=$this->db()->where('status','<>',0)->select();
        foreach ($products as $product){
            if(in_array($product['product_style_id'],$new_ids)){
                $ps[]=$product;
            }
        }
        $new_style=[];
        foreach($style as $s=>$k){
            $k['products']=[];
            $pp=[];
            foreach ($ps as $p){
                if($p['product_style_id']==$k['product_style_id'] && sizeof($pp)<4){//控制分类下的条数 sizeof
                    $pp[]=$p;
                }
            }
            $k['products']=$pp;
            $new_style[]=$k;
        }
        return $new_style;
    }
    public function getDiscount(){
        $res=$this
            ->db()
            ->where('discount','lt','1')
            ->where('status','<>',0)
            ->order('update_time desc')
            ->limit(6)
            ->select();
        return $res;
    }
    public function getProductById($id){
        $images=model('ProductImage')->db()->where('product_id',$id)->select();
        $res=$this
            ->db()
            ->alias('a')
            // ->join('qxhat_products_brand b','a.brand_id=b.brand_id')
            // ->join('qxhat_products_style c','a.product_style_id=c.product_style_id')
            ->find($id);
        $res['images']=$images?$images:[['src'=>$res['picture']]];
        return $res;
    }
}