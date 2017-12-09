<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/9 0009
 * Time: 下午 9:18
 */
namespace app\models;
use yii\db\ActiveQuery;

class LibraryQuery extends ActiveQuery{
    public function getAll(){
        return parent::all();
    }
}