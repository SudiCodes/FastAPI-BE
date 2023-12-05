# FASTBe

Learning FAST API

FAST API Migrations steps

- To kickstart

1.  install alembic: `pip install alembic`
2.  initiate alembic: `alembic init alembic`

- To migrate

1.  Setup `target_metadata` variable in env.py under alembic to model.metadata
2.  create a revison ; `alembic revision --autogenerate -m "<migration comment>"`
3.  migrate : `alembic upgrade head`
