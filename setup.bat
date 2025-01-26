@echo off
cd %~dp0
python -V || echo Please install Python 3.11 first!
python -m venv venv-py311
call venv-py311\Scripts\activate.bat
pip install -r requirements.txt
playwright install
echo Setup complete! Virtual environment is activated.
echo "Next step: Create a .env file with 'OPENAI_API_KEY=your_key_here'"
pause