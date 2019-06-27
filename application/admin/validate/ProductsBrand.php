<?php
namespace app\admin\validate;
use think\Validate;
class ProductsBrand extends Validate{
    protected $rule=[
        ['brand_name','require|max:10','请输入品牌名称|标题不能超过10个字符'],
        ['brand_describe','require','品牌描述不能为空'],
    ];
    /*场景设置*/
    protected $scene=[
        'edit'=>['brand_name','brand_describe'],
    ];
}