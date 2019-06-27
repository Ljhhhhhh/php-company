<?php
namespace app\admin\controller;
use think\Request;

class Information extends Common{
    protected $db;
    protected function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->db=new \app\admin\model\Information();
    }
    public function index(){
        $information_list=$this->db->informationList();
        $count=$this->db->count();
        $this->assign('count',$count);
        $this->assign('information_list',$information_list);
        return $this->fetch();
    }
    public function add(Request $request){
        if($request->isPost()){
            $thumb=$request->file('thumb');
            if(!$thumb){
                $this->error('请添加缩略图','information/add');
            }
            $info = $thumb->validate(['size'=>204800,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public/uploads');
            if($info){
                $savename=$info->getSaveName();
            }else{
                // 上传失败获取错误信息
                $this->error($thumb->getError(),'information/add');
            }
            $validate = validate('Information');
            if (!$validate->scene('status')->check(input('post.'))) {
                $this->error($validate->getError());
            }
            $res=$this->db->add(input('post.'),$savename);
            if($res){
                $this->success('文章添加成功','information/index');
            }else{
                $this->error('文章添加失败,请重新添加','information/add');
            }
        }
        $category=model('informationCategory')->getCategory();
        $this->assign('category',$category);
        return $this->fetch();
    }
    public function del(Request $request){
        $id=intval(input('get.id'));
        $res=$this->db->del($id);
        if($res){
            $this->success('文章更新状态成功','information/index');
        }else{
            $this->error('文章更新状态失败,请尝试重新更新！','information/index');
        }
    }
    public function edit(Request $request){
        if($request->isPost()){
            $data=input(('post.'));
            $thumb=$request->file('thumb');
//            if(!$thumb){
//                $this->error('请添加缩略图','information/add');
//            }
            if($thumb){
                $info = $thumb->validate(['size'=>204800,'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public/uploads');
                if($info){
                    $savename=$info->getSaveName();
                    $data['thumb']=$savename;
                }else{
                    // 上传失败获取错误信息
                    $this->error($thumb->getError(),'information/edit');
                }
            }
            $res=$this->db->edit($data);
            if($res){
                $this->success('文章更新成功','information/index');
            }else{
                $this->error('文章更新失败,请重新更新！','information/index');
            }
        }
        $id=intval(input('get.id'));
        $information=model('information')->db()->where('id',$id)->find();
        $this->assign('thumb',$information['thumb']);
        $this->assign('information',$information);
        $category=model('informationCategory')->getCategory();
        $this->assign('category',$category);
        return $this->fetch();
    }
    public function test(Request $request){
        $data=input('post.');
        return $data;
    }
}