<?php
namespace app\admin\model;
use think\Model;
class ProductBrand extends Model{
    protected $autoWriteTimestamp = false;
    protected $pk='brand_id';
    protected $table='qxhat_products_brand';
    public function getCount(){
        $count=$this->db()->count();
        return $count;
    }
    public function getBrandList(){
        $res=$this->db()->paginate(10);
        return $res;
    }
    public function getBrandById($id){
        $res=$this->db()->find($id);
        return $res;
    }
    public function doEdit($data,$savename){
        if($savename){
            $data['brand_logo']=$savename;
        }
        $res=$this
            ->db()
            ->where($data['brand_id'])
            ->update($data);
        return $res;
    }
    public function doAdd($data,$savename){
        $data['brand_logo']=$savename;
        $res=$this->save($data);
        return $res;
    }
}