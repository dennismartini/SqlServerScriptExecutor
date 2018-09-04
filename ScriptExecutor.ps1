$AzureSQLServerName = Read-Host "Digite o caminho de acesso ao seu banco de dados (Ex: IP, Nome do HOST, URI)"
$AzureSQLDatabaseName = Read-Host "Digite o nome do seu banco de dados"
$userid = Read-Host "Digite seu usuário"
$password= Read-Host "Digite a senha de acesso"
$script = Read-Host "Digite seu Script e pressione Enter"
write-output = $password
$connstring = "Server=tcp:$AzureSQLServerName,1433;Initial Catalog=$AzureSQLDatabaseName;Persist Security Info=False;User ID=$userid;Password=$password;"
write-output "Executando o script"
$SQLOutput = $(Invoke-Sqlcmd -Query $script -Verbose -ConnectionString $connstring )
write-output $SQLOutput