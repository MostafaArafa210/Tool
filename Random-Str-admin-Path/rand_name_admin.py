import string, random


# string_: str = string.ascii_letters
# string_num: str = string.digits
# string_letters: str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"


def Generate_word_List():
    """_
    Generate Word List Random String With Admin Path

    """
    string_letters: str = (
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    )
    admin_: str = "/admin_"
    administrator_: str = "/administrator_"

    for _ in range(10000):
        length = random.randint(1, 10)  # Random length between 1 and 10
        random_choices: list[str] = random.choices(string_letters, k=length)
        with open(
            r"E:\MyWordList\admin.txt",
            "a+",
        ) as f:
            pathes = admin_ + "".join(random_choices).strip()
            pathes1 = administrator_ + "".join(random_choices).strip()
            f.writelines(f"{pathes}" + "\n")
            f.writelines(f"{pathes1}" + "\n")
            f.close()
            print("End-OF-Loop")


Generate_word_List()
