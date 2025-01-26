@echo off
python -m venv venv-py311
call venv-py311\Scripts\activate
pip install -r requirements.txt
playwright install
echo "Next step: Create a .env file with 'OPENAI_API_KEY=your_key_here'"