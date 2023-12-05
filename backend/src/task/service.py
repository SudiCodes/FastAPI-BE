from typing import List,Optional
from src.task.models import Task


tasks_db = []
task_id_counter = 1


def get_task(task_id:int) -> Optional[Task]:
    for task in tasks_db:
        if task.id == task_id:
            return task
    return None


def get_tasks(skip: int = 0, limit: int = 10) -> List[Task]:
    return tasks_db[skip : skip + limit]

def create_task(task:Task)->Task:
    global task_id_counter
    task.id =task_id_counter
    task_id_counter+=1
    tasks_db.append(task)
    return task
