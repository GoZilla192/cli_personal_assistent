import pickle 


def load_data(filename="addressbook.pkl"):
    try:
        with open(filename, "rb") as file:
            return pickle.load(file)
    except FileNotFoundError:
        return None
    

def save_data(data, filename="addressbook.pkl"):
    with open(filename, "wb") as file:
        pickle.dump(data, file)
