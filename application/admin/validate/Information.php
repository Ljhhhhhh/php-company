<?php
namespace app\admin\validate;
use think\Validate;
class Information extends Validate{
    protected $rule=[
        ['title','require|max:10','请输入文章标题|标题不能超过10个字符'],
        ['category_id','require','请选择文章分类'],
        ['content','require','文章内容不能为空'],
    ];
    /*场景设置*/
//    protected $scene=[
//        'add'=>['name','parent_id','id'],
//        'listorder'=>['id','listorder'],
//        'status'=>['id','status'],
//    ];
}