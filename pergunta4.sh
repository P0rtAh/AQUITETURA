#DELETAR DIRETÓRIOS
import os
import shutil
import sys

def deletar_diretorios(base_folder, apenas_vazios):
    """
    Deleta os diretórios da pasta base de acordo com o argumento booleano.
    - Se apenas_vazios for True, remove apenas os diretórios vazios.
    - Se apenas_vazios for False, remove diretórios que têm conteúdo
    """
    
    if not os.path.exists(base_folder):
        print(f"Pasta '{base_folder}' não foi encontrado")
        return

    subfolders = [f for f in os.listdir(base_folder) if os.path.isdir(os.path.join(base_folder, f))]

    for folder in subfolders:
        folder_path = os.path.join(base_folder, folder)

        is_empty = len(os.listdir(folder_path)) == 0

        if apenas_vazios and is_empty:
            shutil.rmtree(folder_path)
            print(f"Diretório vazio deletado: {folder_path}")
        elif not apenas_vazios and not is_empty:
            shutil.rmtree(folder_path)
            print(f"Diretório com conteúdo deletado: {folder_path}")

if __name__ = "__main__":
    base_folder = "script_sample_folder"

    if len(sys.argv) > 1:
        try:
            apenas_vazios = sys.argv[1].lower() == "true"
        except ValueError:
            print("Uso: python script.py [True|False]")
            sys.exit(1)

    else: 
    apenas_vazios = False 

    deletar_diretorios(base_folder, apenas_vazios)
        