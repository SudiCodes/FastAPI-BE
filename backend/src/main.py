import uvicorn
from fastapi import FastAPI
from fastapi_sqlalchemy import DBSessionMiddleware, db

from src.task.schemas import Todo as SchemaTodo
from src.task.models import Todo as ModelTodo

import os
from dotenv import load_dotenv

load_dotenv('.env')

app = FastAPI()

DATABASE_URL = "postgresql://postgres:admin@localhost:5433/fastbe"
app.add_middleware(DBSessionMiddleware, db_url=DATABASE_URL)


@app.get("/")
async def root():
    return {"message": "hello world"}


# Use SchemaTodo as the response model
@app.post('/todos/', response_model=SchemaTodo)
async def create_todo(todo: SchemaTodo):
    db_todo = ModelTodo(title=todo.title, description=todo.description)
    db.session.add(db_todo)
    db.session.commit()
    return todo  # Return the Pydantic model, not the SQLAlchemy model


# Use list[SchemaTodo] as the response model
@app.get('/todos/', response_model=list[SchemaTodo])
async def get_todos():
    todos = db.session.query(ModelTodo).all()
    return todos
