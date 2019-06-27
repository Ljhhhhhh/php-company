<?php
namespace app\admin\controller;
use think\Request;

class ProductStyle extends Common{
    protected $db;
    protected function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->db=new \app\admin\model\ProductStyle();
    }

    public function index(){
        $count=$this->db->getCount();
        $styleList=$this->db->getStyle();
        return $this->fetch('',[
            'count'=>$count,
            'styleList'=>$styleList
        ]);
    }
    public function status(Request $request){
        $id=intval(input('get.id'));
        $res=$this->db->setStatus($id);
        if($res){
            $this->success('更新成功');
        }else{
            $this->error('更新失败，请重新更新');
        }
    }
    public function edit(Request $request){
        $id=intval(input('get.id'));
        $style=$this->db->edit($id);
        return $this->fetch('',[
            'style'=>$style
        ]);
    }
    public function doEdit(Request $request){
        $res=$this->db->doEdit(input('post.'));
        if($res){
            $this->success('更新成功','productStyle/index.html');
        }else{
            $this->error('更新失败，请重新修改');
        }
    }
    public function add(Request $request){
        if($request->isPost()){
            $res=$this->db->add(input('post.'));
            if($res){
                return true;
            }else{
                return false;
            }
        }
    }
}