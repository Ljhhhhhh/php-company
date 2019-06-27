<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],
    'admin/login'=>'admin/login/index',
    'admin/logout'=>'admin/login/logout',
    'admin/index'=>'admin/index/index',
    '/'=>'index/index/index',
    'product'=>'index/product/index',
    'product_show'=>'index/product/productshow',
    'product_style'=>'index/product/style',
    'product_recommend'=>'index/product/recommend',
    'product_all'=>'index/product/all',
    'product_discount'=>'index/product/discount',
    'introduce/index'=>'index/introduce/index',
    'introduce/join'=>'index/introduce/join',
    'information'=>'index/information/index',
    'information_show'=>'index/information/show',
    'information_category'=>'index/information/category',

];
