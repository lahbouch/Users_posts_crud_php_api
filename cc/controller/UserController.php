<?php




class UserController
{

    private PDO $conn;

    public function __construct($db)
    {

        $this->conn = $db;
    }


    public function getAll()
    {
        try {
            $q = "SELECT * from `user`";
            $stmt = $this->conn->prepare($q);

            if (!$stmt->execute()) {
                $response[STATUS] = "error";
                $response[MESSAGE] = "query error";
                echo json_encode($response);
                return;
            }

            $users = array();

            while ($user = $stmt->fetchObject()) {
                array_push($users, $user);
            }

            http_response_code(200);
            $response[STATUS] = "success";
            $response[MESSAGE] = $users;

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
            $q = "SELECT * from `user` where id = :id";
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
                $response[STATUS] = "succes";
                $response[MESSAGE] = "user n'est pas exist";
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
    public function update(User $user)
    {
        try {
            $q = "UPDATE  `user` SET username = :username, email = :email where id = :id";
            $stmt = $this->conn->prepare($q);
            if (!$stmt->execute([
                ":username" => $user->getUsername(),
                ":email" => $user->getEmail(),
                ":id" => $user->getId()
            ])) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                echo json_encode($response);
                return;
            }

            if ($stmt->rowCount() == 0) {
                $response[STATUS] = "success";
                $response[MESSAGE] = "user n'est pas exist";
                echo json_encode($response);
                return;
            }

            $response[STATUS] = "success";
            $response[MESSAGE] = "user est modifier avec success";
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
            $q = "DELETE from `user` where id = :id";
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
                $response[MESSAGE] = "user n'est pas exist";
                echo json_encode($response);
                return false;
            } else {
                $response[STATUS] = "success";
                $response[MESSAGE] = "user a ete supprimer avec success";
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

    public function add(User $user)
    {
        try {
            $q = "INSERT INTO `user` (username, email) VALUES (?, ?)";
            $stmt = $this->conn->prepare($q);

            if (!$stmt->execute([
                $user->getUsername(),
                $user->getEmail()
            ])) {
                http_response_code(500);
                $response[STATUS] = "false";
                $response[MESSAGE] = $stmt->errorInfo();
                return;
            }

            $row = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if ($stmt->rowCount() == 0) {
                $response[STATUS] = "false";
                $response[MESSAGE] = "user n'est pas ajouter";
                echo json_encode($response);
                return false;
            } else {
                $response[STATUS] = "success";
                $response[MESSAGE] = "user a ete ajouter avec success";
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
