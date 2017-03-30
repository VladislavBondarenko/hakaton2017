<?php


class TaskController
{

    /**
     * Action для страницы просмотра
     */
    public function actionIndex($id)
    {

        // Получаем идентификатор пользователя из сессии
        $userId = User::checkLogged();

        // Получаем информацию о пользователе из БД
        $user = User::getUserById($userId);
        if (!empty($user)) {
            $task = Task::getTasksById($id);
        } else {
            header("Location: /");
        }

        // Подключаем вид
        require_once(ROOT . '/views/task/index.php');
        return true;
    }


    /**
     * Action для страницы "Редактировать"
     */
    public function actionUpdate($id)
    {
        // Проверка доступа
        //   self::checkAdmin();
        User::checkTeamlead();


        $task = Task::getTasksById($id);

        // Обработка формы
        if (isset($_POST['submit'])) {
            // Если форма отправлена
            // Получаем данные из формы редактирования. При необходимости можно валидировать значения
            $options['task_name'] = $_POST['task_name'];
            $options['description'] = $_POST['description'];
            $options['deadline'] = $_POST['deadline'];


            // Сохраняем изменения
            Task::updateTaskById($id, $options);


            // Перенаправляем пользователя
            header("Location: /cabinet");
        }

        // Подключаем вид
        require_once(ROOT . '/views/task/update.php');
        return true;
    }

    public function actionUpdatetask()
    {
        // Проверка доступа
        User::checkLogged();


        // Обработка формы
        if (isset($_POST['id'])) {
            // Если форма отправлена
            // Получаем данные из формы редактирования. При необходимости можно валидировать значения
            $complete = $_POST['complete'];
            $id = $_POST['id'];

            // Сохраняем изменения
            Task::updateTaskByIdComplete($id, $complete);


            // Перенаправляем пользователя
            header("Location: /cabinet");
        }

    return true;
}

    public function actionUpdatedev()
    {
        // Проверка доступа
        User::checkLogged();

        // Обработка формы
        if (isset($_POST['id']) && isset($_POST['id_task'])) {
            // Если форма отправлена
            // Получаем данные из формы редактирования. При необходимости можно валидировать значения
            $id = $_POST['id'];
            $id_task = $_POST['id_task'];

            // Сохраняем изменения
            Task::updateTaskByIdDev($id, $id_task);


            // Перенаправляем пользователя
            header("Location: /cabinet");
        }

        return true;
    }
    /**
     * Action для страницы "Удалить"
     */
    public function actionDelete($id)
    {
        // Проверка доступа
        User::checkTeamlead();

        // Обработка формы
        if (isset($_POST['submit'])) {
            // Если форма отправлена
            // Удаляем
            Task::deleteTaskById($id);

            // Перенаправляем пользователя
            header("Location: /cabinet");
        }

        // Подключаем вид
        require_once(ROOT . '/views/task/delete.php');
        return true;
    }

}
