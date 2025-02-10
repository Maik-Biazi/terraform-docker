module "Producao" {
source = "../../infrastructure"

nome = "producao" 
descricao = "Uma aplicação de produção"
max = 5
maquina = "t2.micro"
ambiente = "Ambiente-de-producao"
}