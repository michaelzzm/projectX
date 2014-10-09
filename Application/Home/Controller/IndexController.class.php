<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index()
    {
        //$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;font-size:24px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p><br/>[ 您现在访问的是Home模块的Index控制器 ]</div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
        $name = '旅心';
        $slogan = '给你一次有意义的旅行';
        $this->assign('name',$name);
        $this->assign('slogan',$slogan);
        $this->display();
    }

    public function search()
    {
        $post = I('post.');
        $type = I('travel_type');
        dump($post);
    }

    public function login()
    {
        $data = I('post.');
        $user = M('User', '', 'DB_CONFIG');

        $result = $user->where("username='%s' and password='%s'", $data[username], $data[password])->find();
        if($result)
        {
            $this->ajaxReturn(0);
        }
        else
        {
            $user_exist = $user->where("username='%s'", $data[username])->find();
            if($user_exist)
            {
                $this->ajaxReturn(1);
            }
            else
            {
                $this->ajaxReturn(2);
            }
        }
    }

    public function register()
    {
        $data = I('post.');

        // check user input
        if(empty($data[username]) || empty($data[email]) || empty($data[password]))
        {
            $this->ajaxReturn(1);
        }
        else if($data[password] !== $data[passwordAgain])
        {
            $this->ajaxReturn(2);
        }
        else
        {
            $user = M('User', '', 'DB_CONFIG');

            $duplicate_user = $user->where("email='%s'", $data[email])->find();
            if($duplicate_user)
            {
                $this->ajaxReturn(3);
            }
            else
            {
                $tuple['user_id'] = $user->count();
                $tuple['username'] = $data[username];
                $tuple['email'] = $data[email];
                $tuple['password'] = $data[password];

                // TODO: exception handling
                $user->add($tuple);
                
                $this->ajaxReturn(0);
            }
        }
    }
}
?>