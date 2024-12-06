#CRIAR TXT
#Comando "os" para garantir que o script funciona de maneira confiável em diferentes sistemas operacionais
import os 

base_folder = "script_sample_folder"

if not os.path.exists(base_folder):
    print(f"A pasta '{base_folder}' não encontrada")

else:
    subfolders = [f for f in os.listdir(base_folder) if os.pathisdir(os.path.join(base_folder, f))]

    for folder in subfolders:
    folder_path = os.path.join(base_folder, folder)
    file_name = f"script_sample_folder-{folder}.txt"
    file_path = os.path.join(folder_path, file_name)

    with open(file_path, "W") as file:
        file.write(f"Este arquivo é da pasta {folder}")

    print(f"Arquivo feito: {file_path}")