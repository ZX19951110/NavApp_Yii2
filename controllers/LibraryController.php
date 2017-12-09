<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/12/9 0009
 * Time: 下午 8:53
 */
namespace app\controllers;
use app\models\User;
use Yii;
use yii\web\Controller;
use app\models\Library;
class LibraryController extends Controller{
    public function actionList(){
        /*todo:
        add token identify
        */
        return json_encode(Library::find()->asArray()->all());
    }
    public function actionCreate(){
        $reqArr = Yii::$app->request->post();
    }
}