<?php
namespace app\admin\model;
use think\Model;
class Login extends Model{
    protected $pk='id';
    protected $table='qxhat_admin';
    public function login($data){
        $admin=$this
            ->db()
            ->where('account',$data['account'])
            ->where('password',$data['password'])
            ->find();
        session('username',$admin['username']);
        session('admin_id',$admin['id']);
        return $admin;
    }
}