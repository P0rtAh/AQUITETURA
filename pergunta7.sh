#script_03.sh

O comando [ -w "example_file.txt" ] verifica se o eample_file.txt existe e tambem tem permissao de escrita

-w serve para verificar se o arquivo pode ser guardado/gravado pelo usuário que está a executar o script

se ele for "gravável" então irá subscrever o conteudo do arquivo com a string "Conteudo adicional"

se ele não for "gravável" nada acontece porque o then não será executado

