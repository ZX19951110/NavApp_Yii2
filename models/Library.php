<?php

namespace app\models;
use yii\db\ActiveRecord;
class Library extends ActiveRecord {
    public $address;
    public $codice_biblioteca;
    public $email;
    public $ia_id;
    public $id;
    public $latitude;
    public $longitude;
    public $name;
    public $telephone;
    public static function find(){
        return new LibraryQuery(get_called_class());
    }
}