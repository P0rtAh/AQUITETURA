#DELETAR CONTEÚDO
import os
import sys
import shutil

def deletar_conteudo(base_folder, caractere):
    if not os.path.exists(base_folder):
        print(f"Pasta '{base_folder}' não foi encontrada")
        return 
    
    subfolders =[f for f in os.listdir(base_folder) if os.path.isdir(os.path.join(base_folder, f))]

    for folder in subfolders:
        if caractere in folder:
            folder_path = os.path.join(base_folder, folder)

            for item in os.listdir(folder_path):
                item_path = os.path.join(folder_path, item)
                if os.path.isdir(item_path):
                    shutil.rmtree(item_path)
                else:
                    os.remove(item_path)

            print(f"Conteúdo apagado do diretório: {folder_path}")

if  __name__ = "__main__":
    if len(sys.argv) < 2:
        print("Uso: python script.py <caractere>")
        sys.argv(1)

    caractere = sys.argv[1]

    base_folder = "script_sample_folder"

    deletar_conteudo(base_folder, caractere)