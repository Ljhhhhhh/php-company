<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;
class Index extends Common{
    public function index(){
        return $this->fetch();
    }
}