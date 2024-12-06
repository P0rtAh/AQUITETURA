#RENOMEAR PASTAS
import os 
import sys

def renomar_pastas(base_folder, prefixo):
    if not os.path.exists(base_folder):
        print(f"Pasta '{base_folder}' não foi encontrada")

    subfolders = [f for f in os.listdir(base_folder) if os.pathisdir(os.path.join(base_folder, f))]

    for folder in subfolders:
        old_path = os.path.join(base_folder, folder)
        new_name = f"{prefixo}-{folder}"
        new_path = os.path.join(base_folder, new_name)

if __name__ == "__main__":
    if len(sys.argv) < 2:
    print("Uso: python script.py <prefixo>")
    sys.exit(1)

    prefixo = sys.argv[1]

    base_folder = "script_sample_folder"

    renomear_pastas(base_folder, prefixo)