<?php

require_once "./controller/UserController.php";
require_once "./controller/PostController.php";
require_once "./model/User.php";


class Route
{
    private $method;
    private $path;
    private $db;



    public function __construct($path, $method, $db)
    {
        $this->method = $method;
        $this->path = $path;
        $this->db = $db;
    }



    public function main()
    {
        $userController = new UserController($this->db);
        $postController = new PostController($this->db);
        try {
            switch ($this->path) {
                case "/user":
                    switch ($this->method) {
                        case "GET":
                            if (!isset($_GET['id'])) {
                                $userController->getAll();
                            } else {
                                $userController->get($_GET['id']);
                            }
                            break;
                        case "POST":
                            if (!(isset($_POST['username']) && isset($_POST['email']))) {
                                throw new Exception();
                            }
                            $userController->add(
                                new User($_POST['username'], $_POST['email'])
                            );
                            break;
                        case "PUT":
                            $json = file_get_contents('php://input');
                            $data = json_decode($json, true);
                            if (!isset($data['id'])) {
                                throw new Exception();
                            }
                            $userController->update(
                                new User($data['username'], $data['email'], $data['id'])
                            );

                            break;
                        case "DELETE":
                            $id = $_GET['id'];
                            $userController->delete($id);
                            break;
                    }
                    break;
                case "/post":
                    switch ($this->method) {
                        case "GET":
                            if (!isset($_GET['id'])) {
                                $postController->getAll();
                            } else {
                                $postController->get($_GET['id']);
                            }
                            break;
                        case "POST":
                            if (!(isset($_POST['title']) && isset($_POST['description']) && isset($_POST['userId']))) {
                                throw new Exception();
                            }
                            $postController->add(
                                new Post(null, $_POST['title'], $_POST['description'], $_POST['userId'])
                            );
                            break;
                        case "PUT":
                            $json = file_get_contents('php://input');
                            $data = json_decode($json, true);
                            if (!isset($data['id'])) {

                                throw new Exception();
                            }
                            $postController->update(
                                new Post($data['id'], $data['title'], $data['description'], null)
                            );

                            break;
                        case "DELETE":
                            $id = $_GET['id'];
                            $postController->delete($id);
                            break;
                    }
            }
        } catch (Exception $e) {
            http_response_code(400);
            echo json_encode([
                STATUS => "error",
                MESSAGE => "les parametre n'est pas correct"
            ]);
        }
    }
}
