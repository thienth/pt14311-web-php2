<?php
/**
 * Created by PhpStorm.
 * User: ginv2
 * Date: 2/23/20
 * Time: 13:12
 */

namespace Models;
use Illuminate\Database\Eloquent\Model;
class User extends Model
{
    protected $table = 'users';
    public $timestamps = false;

}