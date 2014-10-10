<div class="modal fade" id="SignupModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
        <h4 class="modal-title"><strong>登 录</strong></h4>
      </div>
      <div class="modal-body">
        <div class="row">
            <div class="col-sm-12">
            <form id="loginform" action="{:U('Home/Index/login')}" role="form" method="post">
               <label class="labelinmodal">使用本站账户登录：</label>
               <div class="form-group">  
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" class="form-control" placeholder="用户名或邮箱" id="username" name="username">
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input type="password" class="form-control" placeholder="密码" id="password" name="password">
                    </div>
                    <div class="checkbox">
                    <label>
                    <input id="inputRememberme" name="inputRememberme" type="checkbox" value="1"> 记住登录 </label>
                    <a class="pull-right" href="#">忘记密码？</a>
                    </div>
                </div>
                <div class="form-group">
                    <button id="loginbtn" type="button" class="btn btn-info"><strong>登录</strong></button>
                </div>
                <div id="loginnotice" style="display:none" class="alert" role="alert"></div> 
            </form>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <div class="container-fluid">
            <div class="row">
                <p>
                    <label class="pull-left labelinmodal">使用合作网站登录：</label>
                    <a class="pull-right" href="#">
                        <i class="partner_login_weibo"></i>
                    </a>
                    <a class="pull-right" href="#">
                        <i class="partner_login_qq"></i>
                    </a>
                </p>
            </div>
        </div>
      </div>
    </div><!-- /.SignupModal-content -->
  </div><!-- /.SignupModal-dialog -->
</div><!-- /.SignupModal -->
<div class="modal fade" id="RegisterModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
        <h4 class="modal-title"><strong>注 册</strong></h4>
      </div>
      <div class="modal-body">
        <div class="row">
            <div class="col-sm-12">
            <form id="registerform" action="{:U('Home/Index/register')}" role="form" method="post">
                <label class="labelinmodal">立刻注册，让身体和心灵旅行起来：</label>
                <div class="form-group">    
                    <div class="input-group mb10">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <input id="registerUsername" name="registerUsername" type="text" class="form-control" placeholder="用户名">
                    </div>
                    <div class="input-group mb10">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                        <input id="registerEmail" name="registerEmail" type="text" class="form-control" placeholder="邮箱">
                    </div>
                    <div class="input-group mb10">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input id="registerPwd" name="registerPwd" type="password" class="form-control" placeholder="密码">
                    </div>
                    <div class="input-group mb10">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input id="registerPwdConfirm" name="registerPwdConfirm" type="password" class="form-control" placeholder="确认密码">
                    </div>
                </div>
                <div class="form-group">
                    <button id="registerbtn" type="button" class="btn btn-info"><strong>开始旅心</strong></button>
                </div>
                <div id="registernotice" style="display:none" class="alert" role="alert"></div> 
            </form>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <div class="container-fluid">
            <div class="row">
                <p>
                    <label class="pull-left labelinmodal">使用合作网站登录：</label>
                    <a class="pull-right" href="#">
                        <i class="partner_login_weibo"></i>
                    </a>
                    <a class="pull-right" href="#">
                        <i class="partner_login_qq"></i>
                    </a>
                </p>
            </div>
        </div>
      </div>
    </div><!-- /.SignupModal-content -->
  </div><!-- /.SignupModal-dialog -->
</div><!-- /.SignupModal -->
<header id="header">
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">展开导航栏</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="__PUBLIC__/images/logo.png" alt="..."></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <!--<ul class="nav navbar-nav">
            <li class="active"><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>-->
          <ul class="nav navbar-nav navbar-right nav-pills">
            <?php
                if(is_null($_SESSION['authId'])) {
            ?>
            <li><a class="register btn btn-info btn-sm navbar-btn" href="#" data-toggle="modal" data-target="#SignupModal">登 录</a></li>
            <li><a class="signup btn btn-success btn-sm navbar-btn" href="#"  data-toggle="modal" data-target="#RegisterModal">注 册</a></li>
            <?php
                }
            ?>
            <!--<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>-->
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
</header>
<section class="hero-unit">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-sm-12 col-sm-offset-0 searchForm">
                <h1>身体 <small>和</small> 心灵</h1>
                <h2>同时在路上。</h2>
                <form action="{:U('Home/Index/testbyliuqixin')}" role="search" method="post">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-3 col-sm-3">
                                <select class="form-control input-lg input-bigger" name="travel_location" id="travel_location">
                                    <option value="SHANGHAI">中国，上海</option>
                                    <option value="NEW YORK">美国，纽约</option>
                                    <option value="SYDNEY">澳大利亚，悉尼</option>
                                </select>
                                <!--<input type="text" placeholder="目的地" class="form-control input-lg input-bigger" name="mail" id="mail" value="" autofocus="">-->
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <!--<input type="text" placeholder="类型" class="form-control input-lg input-bigger" name="mail" id="mail" value="" autofocus="">-->
                                <select class="form-control input-lg input-bigger" name="travel_type" id="travel_type">
                                    <option value="VOLUNTEER">志愿者</option>
                                    <option value="STUDY">学  习</option>
                                    <option value="TEACH">教  学</option>
                                    <option value="INTERN">实  习</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <input type="text" placeholder="时间" class="form-control input-lg input-bigger" name="travel_date" id="travel_date" value="2014-10-25">
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <button type="submit" id="validation" class="btn btn-lg btn-block btn-success btn-uppercase btn-bigger"><strong>查找属于你的旅心</strong></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<section class="rest-unit">
    <div class="container">
        <h2 class="text-center featured-title">特别推荐项目</h2>
        <div class="row featured">
            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/standard_thumbnail.jpg" alt="..."></div>
                    <div class="reviews text-center"><a href=""><span class="glyphicon glyphicon-comment"></span><br>评论(10)</a></div>
                    <!--<p class="reviews">
                        <span class="glyphicon glyphicon-user"></span><a href="#">评论 <span class="badge">3</span></a>
                    </p>-->
                    <div class="caption">
                        <h3 class="text-left">国际交流项目1</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <div class="media">
                            <div class="client">
                                <a class="pull-right" href="#">
                                  <img src="__PUBLIC__/images/program_logo_1.png" title="Pathways" alt="Pathways" class="img-circle media-object">
                                </a>
                            </div>
                            <div class="media-body">
                                <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/townhouse_thumbnail.jpg" alt="..."></div>
                    <div class="reviews text-center"><a href=""><span class="glyphicon glyphicon-comment"></span><br>评论(12)</a></div>
                    <div class="caption">
                        <h3>国际交流项目2</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <div class="media">
                            <div class="client">
                                <a class="pull-right" href="#">
                                  <img src="__PUBLIC__/images/program_logo_2.png" title="Pathways" alt="Pathways" class="img-circle media-object">
                                </a>
                            </div>
                            <div class="media-body">
                                <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/thesetai_thumbnail.jpg" alt="..."></div>
                    <div class="reviews text-center"><a href=""><span class="glyphicon glyphicon-comment"></span><br>评论(0)</a></div>
                    <div class="caption">
                        <h3>国际交流项目3</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <div class="media">
                            <div class="client">
                                <a class="pull-right" href="#">
                                  <img src="__PUBLIC__/images/program_logo_3.png" title="Pathways" alt="Pathways" class="img-circle media-object">
                                </a>
                            </div>
                            <div class="media-body">
                                <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/standard_thumbnail.jpg" alt="..."></div>
                    <div class="caption">
                        <h3 class="text-left">国际交流项目1</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/townhouse_thumbnail.jpg" alt="..."></div>
                    <div class="caption">
                        <h3>国际交流项目2</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail program">
                    <img class="verification" src="https://www.boutiquehotels.com/images/luxe.svg">
                    <div class="program-img"><img src="__PUBLIC__/images/thesetai_thumbnail.jpg" alt="..."></div>
                    <div class="caption">
                        <h3>国际交流项目3</h3>
                        <h6 class="text-left">纽约，美国</h6>
                        <p>想与来自英国、美国、德国的国际团队一起工作吗？ 想参与全中国最大型、参与国家数最多的国际文化交流活动吗？欢迎与 ...</p>
                        <hr>
                        <p><a href="#" class="btn btn-primary" role="button">申请</a> <a href="#" class="btn btn-default" role="button">查看</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container footer">
        <div class="row">
            sdfaf
        </div>
        <footer id="footer">
            <div class="container">
                <div class="row">
                </div>
                <div class="row copyright">
                    <div class="col-md-4 col-sm-5">
                        Copyright 2014 旅心. All rights reserved.
                    </div>
                </div>
            </div>
        </footer>
    </div>
</section>
 
<?php
echo T('Home/index');

    $Ip = new Org\Net\IpLocation('UTFWry.dat'); // 实例化类 参数表示IP地址库文件
    $area = $Ip->getlocation('203.34.5.66'); // 获取某个IP地址所在的位置
    $ip = get_client_ip();
    dump($ip);
?>

<script src="__PUBLIC__/js/jquery.min.1.11.1.js"></script>
<script>

$(function(){

    $('#loginbtn').click(function() {
        var $action = $('#loginform').attr('action');
        $.post($action, {username:$('#username').val(), password:$('#password').val()}, function(data) {
            if(1 != data['status'])
            {
                $('#loginnotice').removeClass('alert-success').addClass('alert-danger');
                $('#loginnotice').html(data['info']);
                $('#loginnotice').show();
            }
            else
            {
                $('#loginnotice').removeClass('alert-danger').addClass('alert-success');
                $('#loginnotice').html(data['info']);
                $('#loginnotice').show();
                
                location.href = data['url'];
            }
        });
    });

    $('#SignupModal').on('hidden.bs.modal', function(e) {
        $('#loginnotice').hide();
    });


    $('#registerbtn').click(function() {
        var $action = $('#registerform').attr('action');
        $.post($action, {username:$('#registerUsername').val(), email:$('#registerEmail').val(), password:$('#registerPwd').val(), passwordAgain:$('#registerPwdConfirm').val()}, function(data) {
            if(1 != data['status'])
            {
                $('#registernotice').removeClass('alert-success').addClass('alert-danger');
                $('#registernotice').html(data['info']);
                $('#registernotice').show();
            }
            else
            {
                $('#registernotice').removeClass('alert-danger').addClass('alert-success');
                $('#registernotice').html(data['info']);
                $('#registernotice').show();

                location.href = data['url'];
            }
        });
    });

    $('#RegisterModal').on('hidden.bs.modal', function(e) {
        $('#registernotice').hide();
    });
});
</script>