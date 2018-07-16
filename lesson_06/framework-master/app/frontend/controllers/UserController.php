<?php

namespace app\frontend\controllers;

use system\components\Controller;
use app\frontend\models\User;

class UserController extends Controller
{


    public function actionLogin()
    {
        $login = strip_tags(htmlspecialchars(trim($_POST['login'])));
        $password = md5(trim($_POST['password']));
        $user = User::findOne(['user_login' => $login]);
//echo $login . '<br>';
//echo $password . '<br>';
echo $user->{'user_password'} . '<br>';
//var_dump($user);
die();
//        if (!empty($user)) {
////            $_SESSION['user_id'] = $login;
//            header("Location: /page");
//        } else {
//            header("Location: /");
//        }
    }

//    public static function getUser($login, $password) {
//
////        echo 'user_password';
//        echo $login . '<br>';
//        echo $password . '<br>';
//        var_dump($user);
//        die();
//    }
}
