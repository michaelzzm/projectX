<header id="header">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">旅心1</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="acAtive"><a href="#">Link</a></li>
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
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
</header>

<section class="minihero-unit">
<DIV STYLE="position:absolute; top:50%; left:30%; ">
<CENTER><FONT SIZE="+2" COLOR="FFFFFF">来一次意义非凡的旅行，让身体和心灵都在路上。</FONT></CENTER>
</DIV>
</section>

<section class="rest-unit-others">
    <div class="container">
		<div class="row featured">
		<div class="col-sm-4">
            <div class="thumbnail program">
                <div class="caption">
                    <p>国家：

    	                <select name="type" size="1" id="type">
    	              		<option></option>   
                       		<option>中国</option>
                       		<option>尼泊尔</option>
                       		<option>全部　　　　　　　　　 </option>
                        	<foreach name='cate' item='v'>
                            <option value="{$v['ca_id']}">{$v.ca_name}
                            </option>
                        	</foreach>
                    	</select>
                    </p>
                    <p>城市：												<!--aJax 			-->
                    	<select name="lable" size="1" id="lables">
                    	</select>
                    </p>
                    <p>类型：
                    	<select name="lable" size="1" id="lables">
                    	</select>
                    </p>
                    <p>项目周期：
                    	<select name="lable" size="1" id="lables">
                    	</select>
                    </p>                    
                    <p>评分：
                    	<select name="lable" size="1" id="lables">
                    	</select>
                    </p>
                    <p>费用：
                    	<select name="lable" size="1" id="lables">
                    	</select>
                    </p>
            		<button type="submit" class="btn btn-default">Submit</button>
            			

				</div>
            </div>
        </div>
        
        <div class="col-sm-8">
            <div class="thumbnail programlist">
                <table>
                <tr>	
				<td>
                <div class="programtitle">
                The House of Joy - Baan Unrak
                </div>
                Bangkok, Thailand
                </td>
                <td>

                <div class="star-ctr pull-right" data-steps="2">
                  <ul>
                    <li><a href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                  </ul>
                </div>


                <a class="pull-right client" href="#">
                <img src="__PUBLIC__/images/baanunrak logo.jpg" title="Pathways" alt="Pathways" class="img-circle client-img">
                </a>                 
                </td>
                </tr>
                <tr>
                <td rowspan="2">
                <div class="programlist-img"><img src="__PUBLIC__/images/thehouseofjoy.jpg" alt="..."></div>
                </td>
                <td>
                The biggest part of our mission, Baan Unrak Children's Home provides a safe, loving and healthy home for 150 needy children from Thailand, Burma including the neighboring Mon and Karen States . We also offer education, medical, psychological and spiritual care in a warm and loving atmosphere.   




                </td>

                </tr>
                <tr>
                <td>
                <p><a href="#" class="btn btn-primary pull-right" role="button">申请</a></p>
                </td>
                </tr>
                <tr>
                <td COLSPAN="2">
                <hr>
                </td>
                <tr>
                    <td>
                    
                    项目周期：
                    </td>
                    <td>
                    1 week
                    </td>
                <tr>
                <td>收费：</td>
                <td>$150</td>
                    
                </tr>
                <tr>
                    <td>语言要求：</td>
                    <td>英语</td>
                </tr>
                <tr>
                    <td>
                        项目内容：
                    </td>
                    <td>
                    Teaching支教项目：<br>
                    志愿者会在Baan Unrak的中小学校进行支教活动。在Didi,Melek等老师的带领和指导下，根据自己的兴趣和专长，进行语言，文化及其他课程的教学。该项目不需要志愿者有教学背景，主要目的在于通过教学，给孩子们一个了解世界的平台，也让志愿者理解NGO如何帮助儿童实现上学的梦想。<br>
                    Baan Unrak Primary school<br>
                    Home School<br>
                    Nursery School<br>
                    </td>
                </tr>    

 
                    </td>
                </tr>
                </tr>
                <tr>
                <td COLSPAN="2">
                <hr>
                组织方简介：           
                <br>
                Baan Unrak
                <br>
                    We are a non-government, non-religious, non-political community development project aimed at providing humanitarian aid to the neediest in our community. 
                    The Neo-Humanist philosophy is the guiding principle of our project. Simply stated, we believe that we should love and care for all beings in the universe.                     
                </td>
                </tr>
                <tr>
                <td>
                    Website: <link>http://www.baanunrak.org
                </td>
                </tr>
                </table>

            </div>          
        </div>

	</div>
</div>
    <div class="container footer">

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