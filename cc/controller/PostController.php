<?php

require_once "./model/Post.php";


class PostController
{

    private PDO $conn;

    public function __construct($db)
    {

        $this->conn = $db;
    }


    public function getAll()
    {
        try {
            $q = "SELECT * from `post`";
            $stmt = $this->conn->prepare($q);

            if (!$stmt->execute()) {
                $response[STATUS] = "error";
                $response[MESSAGE] = "query error";
                echo json_encode($response);
                return;
            }

            $posts = array();

            while ($user = $stmt->fetchObject()) {
                array_push($posts, $user);
            }

            http_response_code(200);
            $response[STATUS] = "success";
            $response[MESSAGE] = $posts;

            echo json_encode($response);
        } catch (PDOException $e) {
            $response[STATUS] = "error";
            $response[MESSAGE] = $e->getMessage();
            echo json_encode($response);
        }
    }

    public function get($id)
    {

        try {
            $q = "SELECT * from `post` where id = :id";
            $stmt = $this->conn->prepare($q);
            $stmt->bindParam(":id", $id);

            if (!$stmt->execute()) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                return;
            }

            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if (count($row) == 0) {
                $response[STATUS] = "succes";
                $response[MESSAGE] = "post n'est pas exist";
                echo json_encode($response);
                return false;
            } else {
                $response[STATUS] = "success";
                $response[MESSAGE] = $row[0];
                http_response_code(302);
                echo json_encode($response);
                return true;
            }
        } catch (PDOException $e) {
            $response[STATUS] = "error";
            $response[MESSAGE] = $e->getMessage();
            echo json_encode($response);
        }
    }
    public function update(Post $post)
    {
        try {
            $q = "UPDATE  `post` SET title = :title, description = :description where id = :id";
            $stmt = $this->conn->prepare($q);
            if (!$stmt->execute([
                ":title" => $post->getTitle(),
                ":description" => $post->getDescription(),
                ":id" => $post->getId()
            ])) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                echo json_encode($response);
                return;
            }

            if ($stmt->rowCount() == 0) {
                $response[STATUS] = "false";
                $response[MESSAGE] = "post n'est pas exist";
                http_response_code(404);
                echo json_encode($response);
                return;
            }

            $response[STATUS] = "success";
            $response[MESSAGE] = "post est modifier avec success";
            echo json_encode($response);
        } catch (PDOException $e) {
            $response[STATUS] = "error";
            $response[MESSAGE] = $e->getMessage();
            http_response_code(500);
            echo json_encode($response);
        }
    }
    public function delete($id)
    {
        try {
            $q = "DELETE from `post` where id = :id";
            $stmt = $this->conn->prepare($q);
            $stmt->bindParam(":id", $id);

            if (!$stmt->execute()) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                return;
            }

            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if ($stmt->rowCount() == 0) {
                $response[STATUS] = "false";
                $response[MESSAGE] = "post n'est pas exist";
                http_response_code(404);
                echo json_encode($response);
                return false;
            } else {
                $response[STATUS] = "success";
                $response[MESSAGE] = "post a ete supprimer avec success";
                http_response_code(202);
                echo json_encode($response);
                return true;
            }
        } catch (PDOException $e) {
            $response[STATUS] = "error";
            $response[MESSAGE] = $e->getMessage();
            http_response_code(500);
            echo json_encode($response);
        }
    }

    public function add(Post $post)
    {
        try {
            $q = "INSERT INTO `post` (title, description,userId) VALUES (?, ?, ?)";
            $stmt = $this->conn->prepare($q);

            if (!$stmt->execute([
                $post->getTitle(),
                $post->getDescription(),
                $post->getUserId()
            ])) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                return;
            }

            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if ($stmt->rowCount() == 0) {
                $response[STATUS] = "false";
                $response[MESSAGE] = "post n'est pas ajouter";

                echo json_encode($response);
                return false;
            } else {
                $response[STATUS] = "success";
                $response[MESSAGE] = "post a ete ajouter avec success";
                http_response_code(201);
                echo json_encode($response);
                return true;
            }
        } catch (PDOException $e) {
            $response[STATUS] = "error";
            $response[MESSAGE] = $e->getMessage();
            http_response_code(500);
            echo json_encode($response);
        }
    }
}
