<?php

    class Database{
      private $hostname = "localhost";
      private $username = "piyush";
      private $password= "piyush";
      private $db = "api_db";
      private $conn;

      // get the database connection
      public function getConnection(){
        $this->conn = null;

        try {
          $this->conn = new mysqli($this->hostname, $this->username, $this->password,$this->db);
          if ($this->conn->connect_error) {
            echo "Connection error: "  . $this->conn->connect_error;
          }
        } catch (Exception $e) {
          echo "Connection error: " . $e->getMessage();
        }
        return $this->conn;
      }

    }
?>