module "Homologacao" {
source = "../../infrastructure"

nome = "Homologacao" 
descricao = "Uma aplicação de produção"
max = 2
maquina = "t2.micro"
ambiente = "Ambiente-de-homologacao"
}