@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Python is not installed. Installing Python...
    winget install -e --id Python.Python.3
    if %ERRORLEVEL% neq 0 (
        echo Failed to install Python. Exiting.
        exit /b 1
    )
)

:: Check if pip is installed
pip --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Pip is not installed. Installing Pip...
    python -m ensurepip --upgrade
    if %ERRORLEVEL% neq 0 (
        echo Failed to install Pip. Exiting.
        exit /b 1
    )
)

:: Install Ansible if not already installed
pip show ansible >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Ansible is not installed. Installing Ansible...
    pip install ansible
    if %ERRORLEVEL% neq 0 (
        echo Failed to install Ansible. Exiting.
        exit /b 1
    )
)

:: Ensure the playbook file exists
SET PLAYBOOK_FILE=setup.yml
IF NOT EXIST %PLAYBOOK_FILE% (
    echo Playbook file %PLAYBOOK_FILE% not found. Exiting.
    exit /b 1
)

:: Run the Ansible playbook
ansible-playbook %PLAYBOOK_FILE%
if %ERRORLEVEL% neq 0 (
    echo Failed to execute the Ansible playbook. Exiting.
    exit /b 1
)

echo Ansible playbook executed successfully.
pause
