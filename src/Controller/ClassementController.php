<?php

namespace App\Controller;

use App\Model\ClassementManager;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

class ClassementController extends AbstractController
{
    /**
     * @throws SyntaxError
     * @throws RuntimeError
     * @throws LoaderError
     */
    public function index(): string
    {
        $classementManager = new ClassementManager();
        $videos = $classementManager->selectAll('points', 'desc');
        return $this->twig->render('Classement/index.html.twig', ['videos' => $videos]);
    }

    public function edit(int $id): string
    {
        $itemManager = new ClassementManager();
        $item = $itemManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $item = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, update and redirection
            $itemManager->update($item);
            header('Location: /items/show?id=' . $id);
        }

        return $this->twig->render('Item/edit.html.twig', [
            'item' => $item,
        ]);
    }
}
