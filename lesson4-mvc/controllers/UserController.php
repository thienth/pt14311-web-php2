<?php
/**
 * Created by PhpStorm.
 * User: ginv2
 * Date: 2/23/20
 * Time: 13:29
 */

namespace Controllers;

use Models\User;
class UserController extends BaseController
{
    public function index(){
        // User::all() => lấy hết ra ngoài
//        $users = User::find(6);
//        $users->name = 'Nguyen Thu Ha';
//        $users->save();

//        $user = new User();
//        $user->name = "ngo van long";
//        $user->email = "longnv@gmail.com";
//        $user->password = password_hash('123123', PASSWORD_DEFAULT);
//        $user->avatar = "public/images/5d8dc86d9b38e-79bee3bdfa512da82062c3f4de40c0a4.jpeg";
//        $user->save();
        echo "done";
    }
}