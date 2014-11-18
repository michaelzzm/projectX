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
        $data = I('post.');

        // dump($data);

        // $destination = M('Destination', '', 'DB_CONFIG');
        // $destination_id = $destination->where("city = '%s'", $data[travel_location])->getField('destination_id');

        // $category = M('ProjectCategory', '', 'DB_CONFIG');
        // $category_id = $category->where("type = '%s'", $data[travel_type])->getField('category_id');

        // $project = M('ProjectSearch', '', 'DB_CONFIG');
        // $project_id = $project->where("destination_id = '%s' and category_id = '%s'", $destination_id, $category_id)->getField('project_id');
        // if(isset($project_id))
        // {
        //     $project_details = M('ProjectDetails', '', 'DB_CONFIG');
        //     $result = $project_details->where("project_id = '%s'", $project_id)->select();
        //     dump($result);
        // }

        $this->display();
    }

    public function login()
    {
        $data = I('post.');
        $user = M('User', '', 'DB_CONFIG');

        // check user input
        if(empty($data[username]) || empty($data[password]))
        {
            $this->error('必填项不能为空');
        }

        $result = $user->where("username='%s'", $data[username])->find();
        if($result)
        {   
            if($result[password] == $data[password])
            {
                // save context
                $_SESSION['authId'] = $result['user_id'];
                $_SESSION['account'] = $result['username'];

                $this->success('登录成功', __APP__);
            }
            else
            {
                $this->error('密码错误，请重新输入');
            }
        }
        else
        {
            $this->error('用户名不存在');
        }
    }

    public function register()
    {
        $data = I('post.');

        // check user input
        if(empty($data[username]) || empty($data[email]) || empty($data[password]))
        {
            $this->error('必填项不能为空');
        }
        else if($data[password] !== $data[passwordAgain])
        {
            $this->error('输入密码不一致');
        }
        
        $user = M('User', '', 'DB_CONFIG');

        $duplicate_user = $user->where("email='%s'", $data[email])->find();
        if($duplicate_user)
        {
            $this->error('该邮箱已被注册');
        }
        else
        {
            $tuple['user_id'] = $user->count();
            $tuple['username'] = $data[username];
            $tuple['email'] = $data[email];
            $tuple['password'] = $data[password];

            // TODO: exception handling
            $user->add($tuple);

            // save context
            $_SESSION['authId'] = $tuple['user_id'];
            $_SESSION['account'] = $tuple['username'];

            $this->success('注册成功', __APP__);
        }
    }
}
?>