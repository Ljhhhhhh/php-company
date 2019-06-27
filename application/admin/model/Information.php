<?php
namespace app\admin\model;
use think\Model;
class Information extends Model{
    protected $autoWriteTimestamp = true;
    protected $id='id';
    protected $table='qxhat_information';
    public function informationList(){
        return $information_list=$this->db()
            ->alias('a')
            ->join('qxhat_information_category c','a.category_id=c.category_id')
            ->order('update_time desc')
            ->paginate(10);
    }
    public function add($data,$savename){
        $data['thumb']=$savename;
        $res=$this->save($data);
        return $res;
    }
    public function del($id){
        $information=$this->db()->find($id);
        $status=$information['status'];
        if($status){
            $update=['status'=>0];
        }else{
            $update=['status'=>1];
        }
        $res=$this->db()->where('id',$id)->update($update);
        return $res;
    }
    public function edit($data){
        $res=$this->db()
            ->where('id',intval($data['id']))
            ->update($data);
        return $res;
    }
}