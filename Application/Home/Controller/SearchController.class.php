<?php
namespace Home\Controller;
use Think\Controller;
class SearchController extends Controller {

    public function index()
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
        $name = '旅心';
        $slogan = '给你一次有意义的旅行';
        $this->assign('name',$name);
        $this->assign('slogan',$slogan);
        $this->display('');
    }
}
?>