<?php
class BaseModel{
    function __construct()
    {
        $host = "127.0.0.1";
        $dbname = "pt14311-web";
        $dbusername = "root";
        $dbpass = "123456"; // ở máy các bạn sử dụng xampp thì $dbpass = ""; nhé
        $this->connect = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", 
                                    $dbusername, $dbpass);
    }

    public static function getAll(){
        $model = new static();
        $sql = "select * from " . $model->table;
        $stmt = $model->connect->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_CLASS, get_class($model));
        return $data;
    }

    public static function customQuery($sql){
        $model = new static();
        $stmt = $model->connect->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_CLASS, get_class($model));
        return $data;
    }

    public static function findOne($id){
        $model = new static();
        $sql = "select * from " . $model->table . " where id = $id";
        $stmt = $model->connect->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_CLASS, get_class($model));
        if(count($data) > 0){
            return $data[0];
        }

        return false;
    }

    public static function destroy($id){
        try{
            $model = new static();
            $sql = "delete from " . $model->table . " where id = $id";
            $stmt = $model->connect->prepare($sql);
            $stmt->execute();
            return true;
        }catch (Exception $ex){
            var_dump($ex->getMessage());
            return false;
        }
    }


}

?>