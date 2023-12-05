from sqlalchemy import Column,DateTime,Integer,String,Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.sql import func

Base = declarative_base()

class Todo(Base):
    __tablename__ = "todo"

    id = Column(Integer,primary_key=True, index=True)
    title = Column(String)
    description = Column(String)
    created_at = Column(DateTime(timezone=True), server_default=func.now())

