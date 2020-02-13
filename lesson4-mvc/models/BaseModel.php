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
}

?>