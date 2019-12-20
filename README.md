# Tasks distribution application 

Category: Web

Team: TODO_win

Application for the distribution of tasks in the team. The director uploads tasks to the site (via file or form). Timlid distributes tasks among ordinary workers. Workers celebrate completed tasks.

### Features

* Registration / login of a team member (two fields: Name and Password)
* 3 categories of registered members (chief, team leader, worker);
* Creating, checking and uploading a new file with tasks, which then the boss can add to the database
* An alternative to adding tasks using the regular form
* Distribution of tasks between team members
* View your own tasks
* The ability to mark the task as "Done"
* the ability to view completed tasks

The rights of team members:

| Team member | View tasks | Mark as done | Distribute tasks | Download file |
| ---         | ---        | ---          | ---              | ---           |
| Team leader | +          | +            | +                | -             |
| Chief       | +          | +            | -                | +             |
| Worker      | +          | +            | -                | -             |


### Installation

DB setting: `/config/db_params.php`

DB file: `/hakaton.sql`

You need to create a new db with name `hakaton` and import tabs from file.

Txt file for testing app `task_exepmle.txt`
