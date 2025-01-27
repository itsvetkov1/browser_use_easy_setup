# Browser-Use-Easy-Setup Service Documentation

## Prerequisites
- Python 3.11 or higher
- Git
- OpenAI API key

## Initial Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/itsvetkov/browser_use
   cd browser_use
   ```

2. **Run Setup Script**
   ```bash
   setup.bat
   ```
   This script will:
   - Create a Python virtual environment
   - Install required dependencies
   - Install Playwright browsers
   - Activate the virtual environment

3. **Create Environment File**
   Create a new file named `.env` in the project root:
   ```
   OPENAI_API_KEY=your_api_key_here
   ```
   Replace `your_api_key_here` with your actual OpenAI API key.

   **You can create your OPENAI_API_KEY here:
https://platform.openai.com/api-keys 

## Daily Usage

1. **Activate Virtual Environment** (if not already activated)
   ```bash
   venv-py311\Scripts\activate
   ```
   You'll see `(venv-py311)` in your terminal when activated.

2. **Run the Script**
   ```bash
   python testing_browser_use.py
   ```

## Example Code

```python
from langchain_openai import ChatOpenAI
from browser_use import Agent
import asyncio
from dotenv import load_dotenv
load_dotenv()

async def main():
    agent = Agent(
        task="Go to Reddit, search for 'browser-use' in the search bar, click on the first post and return the first comment.",
        llm=ChatOpenAI(model="gpt-4"),
    )
    result = await agent.run()
    print(result)

if __name__ == "__main__":
    asyncio.run(main())
```

## Troubleshooting

1. **ModuleNotFoundError**
   - Ensure the virtual environment is activated
   - Run `pip install -r requirements.txt` again

2. **Playwright Error**
   - Run `playwright install` to reinstall browsers

3. **OpenAI API Error**
   - Verify `.env` file exists and contains correct API key
   - Check API key validity

## Project Structure
```
browser_use/
├── .env                    # API keys and configuration
├── requirements.txt        # Project dependencies
├── setup.bat              # Setup script
└── testing_browser_use.py # Main script
```

## Notes
- Keep your `.env` file secure and never commit it to version control
- The virtual environment must be activated before running scripts
- Python 3.11+ is required for all functionality



 ## Please visit the original project and support its creators:
https://github.com/browser-use/browser-use 
