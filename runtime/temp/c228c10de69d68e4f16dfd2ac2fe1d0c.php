<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:103:"/Users/macbookpro/Documents/www/learn/company/public/../application/admin/view/product_style/index.html";i:1508518240;s:90:"/Users/macbookpro/Documents/www/learn/company/public/../application/admin/view/header.html";i:1561536900;s:88:"/Users/macbookpro/Documents/www/learn/company/public/../application/admin/view/menu.html";i:1508518240;s:90:"/Users/macbookpro/Documents/www/learn/company/public/../application/admin/view/footer.html";i:1508518240;}*/ ?>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="Bookmark" href="favicon.ico">
    <link rel="Shortcut Icon" href="favicon.ico"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/lib/html5.js"></script>
    <script type="text/javascript" src="/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="/static/h-ui.admin/css/style.css"/>

    <!--<link href="/lib/fileinput/css/bootstrap.min.css" rel="stylesheet">-->
    <link href="/lib/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>圣诚软管厂后台管理系统</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl"><a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">圣诚软管厂后台管理系统</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">圣诚软管厂后台管理系统</a>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>

            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li></li>
                    <li class="dropDown dropDown_hover"><a href="#" class="dropDown_A"><?php echo session('username'); ?> <i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="<?php echo url('/admin/logout'); ?>">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
                            <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!--/_header 作为公共模版分离出去--><!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">
    <div class="menu_dropdown bk_2">
        <dl>
            <dt><i class="Hui-iconfont">&#xe720;</i> 关于我们<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<?php echo url('About/index'); ?>" title="关于我们">关于我们</a></li>
                    <li><a href="<?php echo url('About/join'); ?>" title="关于我们">代理加盟</a></li>

                </ul>
            </dd>
        </dl>
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 资讯管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<?php echo url('information/index'); ?>" title="资讯管理">资讯管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 产品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<?php echo url('productBrand/index'); ?>" title="品牌管理">品牌管理</a></li>
                    <li><a href="<?php echo url('productStyle/index'); ?>" title="分类管理">分类管理</a></li>
                    <li><a href="<?php echo url('product/index'); ?>" title="产品管理">产品管理</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
        风格管理
        <span class="c-gray en">&gt;</span>
        风格列表
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
    </nav>
    <div class="Hui-article">
        <article class="cl pd-20">

            <div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
				<!--<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>-->
				<a class="btn btn-primary radius" data-title="添加资讯" id="add"><i class="Hui-iconfont">&#xe600;</i> 添加风格</a>
				</span>
                <span class="r">共有风格：<strong><?php echo $count; ?></strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <!--<th width="25"><input type="checkbox" name="" value=""></th>-->
                        <th width="80">ID</th>
                        <th width="120">风格</th>
                        <th width="80">首页展示</th>
                        <th width="80">修改</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if(is_array($styleList) || $styleList instanceof \think\Collection): $i = 0; $__LIST__ = $styleList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <tr class="text-c">
                        <td><?php echo $vo['product_style_id']; ?></td>
                        <td class="text-l"><u style="cursor:pointer" class="text-primary" title="查看"><?php echo $vo['product_style_name']; ?></u></td>
                        <td class="td-status"><a href="<?php echo url('productStyle/status',['id'=>$vo['product_style_id']]); ?>">
                            <?php echo styleStatus($vo['product_style_status']); ?></a></td>
                        <td class="f-14 td-manage">
                            <a href="<?php echo url('productStyle/edit',['id'=>$vo['product_style_id']]); ?>" style="text-decoration:none" class="ml-5" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a></td>
                    </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    </tbody>
                </table>
            </div>
        </article>
        <?php echo $styleList->render(); ?>
    </div>
</section>
<div id="modal-demo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content radius">
            <div class="modal-header">
                <h3 class="modal-title">添加风格</h3>
                <a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
            </div>
            <div class="modal-body">
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>风格：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder="" name="product_style_name">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-4"><span class="c-red">*</span>首页展示：</label>
                    <div class="formControls col-xs-8 col-sm-8">
                        <div class="radio-box">
                            <input type="radio" id="radio-1" name="product_style_status" value=1>
                            <label for="radio-1">是</label>
                        </div>
                        <div class="radio-box">
                            <input type="radio" id="radio-2" name="product_style_status" checked value=0>
                            <label for="radio-2">否</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" id="add_btn">添加</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
            </div>
        </div>
    </div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->
</body>
</html>
<script>
    $("#add").click(function (e) {
        e.preventDefault();
        $("#modal-demo").modal("show");
    })
    $("#add_btn").click(function (e) {
        e.preventDefault();
        var product_style_name=$("#modal-demo").find("input[name='product_style_name']").val();
        var product_style_status=$("#modal-demo").find("input:radio:checked").val();
        var data= {
            'product_style_name': product_style_name,
            'product_style_status': product_style_status
        }
        $.ajax({
            type:"post",
            url:"<?php echo url('productStyle/add'); ?>",
            data:data,
            dataType:'json',
            success:function (e) {
                if(e){
                    $("#modal-demo").modal("hide");
                    window.location.reload();
                }else {
                    $("#modal-demo").modal("hide");
                    alert('添加失败，请重新添加');
                }
            }
        })
    });
</script>