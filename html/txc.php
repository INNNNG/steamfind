<?
	

	require_once('pysql.php');
	  $webhook = "https://oapi.dingtalk.com/robot/send?access_token=05fb81148c3c34d35387e22157921418c79389816ef05604df6be0f22d559d24"; //测试
			$ly_title="网证离线";
			$message="网证激活失败请顾客APP投诉!";
			$data = array('msgtype' => 'actionCard','actionCard' => array('btnOrientation' => '1','hideAvatar' => '1','title' => $ly_title,'text' => $message));
			$data_string = json_encode($data);
			$result = request_by_curl($webhook, $data_string);
			
$event = json_decode(file_get_contents("php://input")); // 接受请求参数

// 对异步通知做处理
if (!isset($event->type)) {
    header($_SERVER['SERVER_PROTOCOL'] . ' 400 Bad Request');
    exit("fail");
}
switch ($event->type) {
    case "post.created":
        // 业务代码
        header($_SERVER['SERVER_PROTOCOL'] . ' 200 OK');
        break;
    case "post.updated":
        // 业务代码
        header($_SERVER['SERVER_PROTOCOL'] . ' 200 OK');
        break;
    case "reply.created":
        // 业务代码
        header($_SERVER['SERVER_PROTOCOL'] . ' 200 OK');
        break;
    case "reply.updated":
        // 业务代码
        header($_SERVER['SERVER_PROTOCOL'] . ' 200 OK');
        break;
    default:
        header($_SERVER['SERVER_PROTOCOL'] . ' 400 Bad Request');
        break;
}
