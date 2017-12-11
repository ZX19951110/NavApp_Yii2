<?php

namespace app\models;
use yii\db\ActiveRecord;
class Library extends ActiveRecord {
    public function rules()
    {
        return [
            [['address',  'codice_biblioteca','email','ia_id','id','name','telephone'], 'required'],
        ];
    }
    public static function find(){
        return new LibraryQuery(get_called_class());
    }
}