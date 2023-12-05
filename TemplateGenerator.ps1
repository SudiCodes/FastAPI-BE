
# Create the fastapi-project folder
New-Item -ItemType Directory -Path .\backend

# Change the current directory to fastapi-project
Set-Location .\backend

# Create the subfolders and files under fastapi-project
New-Item -ItemType Directory -Path .\alembic
New-Item -ItemType Directory -Path .\src
New-Item -ItemType Directory -Path .\tests
New-Item -ItemType Directory -Path .\templates
New-Item -ItemType Directory -Path .\requirements
New-Item -ItemType File -Path .\.env
New-Item -ItemType File -Path .\.gitignore
New-Item -ItemType File -Path .\logging.ini
New-Item -ItemType File -Path .\alembic.ini

# Change the current directory to src
Set-Location .\src

# Create the subfolders and files under src
New-Item -ItemType Directory -Path .\auth
New-Item -ItemType Directory -Path .\aws
New-Item -ItemType Directory -Path .\posts
New-Item -ItemType File -Path .\config.py
New-Item -ItemType File -Path .\models.py
New-Item -ItemType File -Path .\exceptions.py
New-Item -ItemType File -Path .\pagination.py
New-Item -ItemType File -Path .\database.py
New-Item -ItemType File -Path .\main.py

# Change the current directory to auth
Set-Location .\auth

# Create the files under auth
New-Item -ItemType File -Path .\router.py
New-Item -ItemType File -Path .\schemas.py
New-Item -ItemType File -Path .\models.py
New-Item -ItemType File -Path .\dependencies.py
New-Item -ItemType File -Path .\config.py
New-Item -ItemType File -Path .\constants.py
New-Item -ItemType File -Path .\exceptions.py
New-Item -ItemType File -Path .\service.py
New-Item -ItemType File -Path .\utils.py

# Change the current directory to src
Set-Location ..

# Change the current directory to posts
Set-Location .\posts

# Create the files under posts
New-Item -ItemType File -Path .\router.py
New-Item -ItemType File -Path .\schemas.py
New-Item -ItemType File -Path .\models.py
New-Item -ItemType File -Path .\dependencies.py
New-Item -ItemType File -Path .\constants.py
New-Item -ItemType File -Path .\exceptions.py
New-Item -ItemType File -Path .\service.py
New-Item -ItemType File -Path .\utils.py

# Change the current directory to fastapi-project
Set-Location ..\..

# Change the current directory to tests
Set-Location .\tests

# Create the subfolders under tests
New-Item -ItemType Directory -Path .\auth
New-Item -ItemType Directory -Path .\aws
New-Item -ItemType Directory -Path .\posts

# Change the current directory to templates
Set-Location ..\templates

# Create the file under templates
New-Item -ItemType File -Path .\index.html

# Change the current directory to requirements
Set-Location ..\requirements

# Create the files under requirements
New-Item -ItemType File -Path .\base.txt
New-Item -ItemType File -Path .\dev.txt
New-Item -ItemType File -Path .\prod.txt
