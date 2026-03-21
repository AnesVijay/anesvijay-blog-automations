import os
from dotenv import load_dotenv

def main():
    load_dotenv()
    obsidian_path = os.getenv("OBSIDIAN_VAULT")
    hugo_path = os.getenv("HUGO_CONTENT")

    # run ansible passing those vars there via flags

if __name__ == "__main__":
    main()