<?php
  class Product{
  // database connection and table name
    private $conn;
    private $table_name = "products";

    // object properties
    public $id;
    public $name;
    public $descriptione;
    public $price;
    public $category_id;
    public $category_name;
    public $created;

    // constructor with $db as database connection
    public function __construct($db){
      $this->conn = $db;
    
    }

    public function read()
    {
      $sql = "SELECT
      c.name as category_name, p.id, p.name, p.description, p.price, p.category_id, p.created
      FROM
      " . $this->table_name . " p
      LEFT JOIN
      categories c
      ON p.category_id = c.id
      ORDER BY
      p.created DESC";

      $result = $this->conn->query($sql);

      return $result;
    }

    public function create()
    {
      
      $sql = "INSERT INTO $this->table_name (name, description, price,category_id,created)
      VALUES ('$this->name', '$this->description', '$this->price','$this->category_id','$this->created')";

      $result = $this->conn->query($sql);

      return $result;
    }

  }
?>