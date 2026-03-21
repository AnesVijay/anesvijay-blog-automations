import functions as f

def main():
    f.check_local_venv_exists()

    f.prepare_ansible()

    f.push()


if __name__ == "__main__":
    main()