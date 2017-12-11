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
use yii\db\Exception;
use yii\db\IntegrityException;
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
        $name = $reqArr['name']?$reqArr['name']:'blank';
        $codice_biblioteca = $reqArr['codice_biblioteca']?$reqArr['codice_biblioteca']:'blank';
        $email = $reqArr['email']?$reqArr['email']:'blank';
        $address = $reqArr['address']?$reqArr['address']:'blank';
        $ia_id = $reqArr['ia_id']?$reqArr['ia_id']:'blank';
        $id = $reqArr['id']?$reqArr['id']:'blank';
        $latitude = $reqArr['latitude']?(float)$reqArr['latitude']:0.00;
        $longitude = $reqArr['longitude']?(float)$reqArr['longitude']:0.00;
        $telephone = $reqArr['telephone']?$reqArr['telephone']:'blank';
        $library = new Library();
        $library->name = $name;
        $library->codice_biblioteca = $codice_biblioteca;
        $library->email = $email;
        $library->id = $id;
        $library->latitude = $latitude;
        $library->longitude = $longitude;
        $library->telephone = $telephone;
        $library->ia_id = $ia_id;
        $library->address = $address;
        //$sql = "insert into library values ($ia_id,$id,$latitude,$longitude,$name,$telephone,$email,$codice_biblioteca,$address)";
        /*if ($library->save()){
            return json_encode(['status'=>0,'message'=>'create success']);
        }*/
        try{
            $library->save();
            return json_encode(['status'=>0,'message'=>'create success']);
        }catch (IntegrityException $exception){
            return json_encode(['status'=>1,'message'=>'Duplicate Primary Key']);
        }catch (Exception $exception){
            return json_encode(['status'=>1,'message'=>'database connect error!']);
        }

    }
    public function actionSearch(){
        $name = Yii::$app->request->get('name');
        $target = Library::find()->where(['name'=>$name])->asArray()->all();
        return json_encode($target);
    }
}