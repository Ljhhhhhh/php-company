<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:75:"E:\xampp\htdocs\qxhat\public/../application/index\view\introduce\index.html";i:1508568474;s:66:"E:\xampp\htdocs\qxhat\public/../application/index\view\common.html";i:1508572201;}*/ ?>
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
            <a class="navbar-brand" href="<?php echo url('/'); ?>">
                <img alt="Brand" src="/static/images/logo.png">
            </a>
            <a class="brand_name" href="<?php echo url('/'); ?>">虔信草帽厂</a>
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

<div class="container-fluid intro_banner">
    <div class="row">
        <div class="col-xs-12">
            <img src="/static/images/banner6.jpg" alt="">
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-9 col-xs-12">
            
<div class="row">
    <div class="col-xs-12 intro_content">
        <?php echo $intro['content']; ?>
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


</html>
<!--首页（产品）、资讯、代理、公司介绍、-->