<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:79:"E:\xampp\htdocs\qxhat\public/../application/index\view\product\productshow.html";i:1508482513;s:66:"E:\xampp\htdocs\qxhat\public/../application/index\view\common.html";i:1508569030;}*/ ?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/common.css">
    

    <title>虔信草帽厂</title>
</head>
<body>
<!--nav-->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="Brand" src="/static/images/logo.png">
            </a>
            <a class="brand_name" href="">虔信草帽厂</a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">首页</a></li>
                <li><a href="<?php echo url('/product'); ?>">产品中心</a></li>
                <li><a href="<?php echo url('/introduce/index'); ?>">公司介绍</a></li>
                <li><a href="<?php echo url('/information'); ?>">资讯中心</a></li>
                <li><a href="<?php echo url('/introduce/join'); ?>">代理加盟</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--nav-->


<div class="container">
    <div class="row">
        <div class="col-sm-9 col-xs-12">
            
<div class="row">
    <div class="col-xs-12">
        <ol class="breadcrumb">
            <li><a href="/">首页</a></li>
            <li><a href="javascript:''" onclick="history.go(-1)">产品页</a></li>
            <li class="active"><?php echo mb_substr($product['product_name'],0,7,'utf-8'); ?></li>
        </ol>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <h1 class="ps_title"><?php echo $product['product_name']; ?></h1>
    </div>
</div>
<div class="row" id="ps-big_img">
    <div class="col-xs-12 col-md-8" >
        <img src="/uploads/<?php echo $product['images'][0]['src']; ?>" alt="" class="ps_big">
        <div id="small_img">
            <img class="control left_control" src="/static/images/left.png" data-val="-1">
            <ul>
                <?php if(is_array($product["images"]) || $product["images"] instanceof \think\Collection): $i = 0; $__LIST__ = $product["images"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li><img src="/uploads/<?php echo $vo['src']; ?>" alt=""></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <img src="/static/images/right.png" class="control right_control" data-val="1">
        </div>
    </div>
    <div class="col-xs-12 col-md-4">
            <h4 class="text-primary">
                <?php if($product['discount'] < 1): ?><s><?php endif; ?>
                价格：￥<?php echo $product['price']; if($product['discount'] < 1): ?></s><?php endif; ?>
            </h4>
                <?php if($product['discount'] < 1): ?>
                <h3 class="text-danger">限时抢购：￥<?php echo $product['price']*$product['discount']; ?></h3>
                <?php endif; ?>
        <hr>
        <table class="table table-condensed table-striped table-condensed table-bordered">
            <tr><th scope="row">产品货号</th><td><?php echo $product['no']; ?></td></tr>
            <tr><th>品牌</th><td><?php echo $product['brand_name']; ?></td></tr>
            <tr><th>风格</th><td><?php echo $product['product_style_name']; ?></td></tr>
            <tr><th>季节</th><td><?php echo $product['season']; ?></td></tr>
            <tr><th>适用群体</th><td><?php echo $product['target']; ?></td></tr>
            <tr><th>颜色</th><td><?php echo $product['color']; ?></td></tr>
            <tr><th>主材</th><td><?php echo $product['materials']; ?></td></tr>
            <tr><th>款式</th><td><?php echo $product['design']; ?></td></tr>
        </table>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 capion">
        <h4 class="bg-info"><span></span>通知：本平台暂未开通线上支付，如有需要，您可联系我们进行交易！</h4>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 ps_content">
        <?php echo $product['content']; ?>
    </div>
</div>

        </div>
        <div class="col-sm-3 col-xs-12 main_left">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">联系方式</h3>
                </div>
                <div class="panel-body">
                    <p>手机：<a href="tel:15858937747">15858937747</a></p>
                    <p>微信：</p>
                    <div class="col-xs-6 col-sm-12">
                            <img src="/static/images/erweima.jpg" alt="" class="wechat_ewm">
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">公司地址：</h3>
                </div>
                <div class="panel-body">
                    <p>浙江省慈溪市长河镇云海村四塘横路853号</p>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">申请代理：</h3>
                </div>
                <div class="panel-body">
                    <form method="post" id="agent">
                        <div class="form-group">
                            <label for="c_name"><span class="text-danger">*</span>姓名：</label>
                            <input type="text" class="form-control" id="c_name" placeholder="姓名" name="name">
                        </div>
                        <div class="form-group">
                            <label for="c_mobile"><span class="text-danger">*</span>手机：</label>
                            <input type="number" class="form-control" id="c_mobile" placeholder="手机号码" name="mobile">
                        </div>
                        <div class="form-group">
                            <label for="c_email">邮箱：</label>
                            <input type="email" class="form-control" id="c_email" placeholder="邮箱" name="email">
                        </div>
                        <button type="submit" class="btn btn-primary" id="agent_btn">提交申请</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
<!--footer-->
<hr>
<div class="container text-center footer">
    <div class="row">
        <ul class="col-sm-12 hidden-xs">
            <li class="col-sm-offset-1 col-xs-6 col-sm-2"><a class="btn btn-default" href="/">首页</a></li>
            <li class="col-xs-6 col-sm-2"><a class="btn btn-default" href="<?php echo url('/product'); ?>">产品中心</a></li>
            <li class="col-xs-6 col-sm-2"><a class="btn btn-default" href="<?php echo url('/introduce/index'); ?>">公司介绍</a></li>
            <li class="col-xs-6 col-sm-2"><a class="btn btn-default" href="<?php echo url('/information'); ?>">资讯中心</a></li>
            <li class="col-xs-6 col-sm-2"><a class="btn btn-default" href="<?php echo url('/introduce/join'); ?>">代理加盟</a></li>
        </ul>
    </div>
    <hr class="hidden-xs">
    <div class="row hidden-xs">
        <p class="col-xs-12">版权所有 2000-2012深圳市佳帝科技有限公司 粤ICP备16097292号-1</p>
    </div>
</div>
<!--footer-->
<!-- Small modal -->
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" id="mymodel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">提醒</h4>
            </div>
            <div class="modal-body"></div>
        </div>
    </div>
</div>
</body>
<script src="/static/js/jquery.js"></script>
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/js/jquery.lazyload.min.js"></script>
<script src="/static/js/common.js"></script>
<script>
    $(function () {
        $("img").lazyload({effect: "show"});//图片懒加载 图片不添加src属性，添加data-original属性为src的值即可。
        $("#agent_btn").click(function (e) {
            e.preventDefault();
            var modal_content=$('#mymodel').find('.modal-content').find('.modal-body');
            new serviceForm({
                obj:'#agent',
                url:"<?php echo url('index/agentAdd'); ?>",
                name:'name',
                name_verify:true,
                mobile:'mobile',
                hint:function (mes) {
                    modal_content.html(mes);
                    $('#mymodel').modal();
                },
                success:function () {
                    modal_content.html("申请已成功，工作人员将会尽快与您取得联系！");
                    $('#mymodel').modal();
                }
            })
        })
    });
</script>

<script src="/static/js/productshow.js"></script>

</html>
<!--首页（产品）、资讯、代理、公司介绍、-->