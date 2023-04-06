algoritmo "hospedagemFacil.com"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Função :
// Autor :
// Data : 22/03/2023
// Seção de Declarações 
var
   resp, nomeCompleto, telefone, quarto : caractere
   quantQuartos, quantHospedes, numeroHospedagem : inteiro
   valorFinal, valorQuarto, valorHospede : real
   decisaoCliente : logico

inicio
numeroHospedagem <- 1

Escreval("---------------------------------------")
Escreval("|         HospedagemFacil.com         |")
Escreval("---------------------------------------")
Escreval("")

Escreval("Olá Visitante, Bem-vindo!!!")
repita
      // Visita
      Escreval("Deseja fazer cadastro na rede?(Sim/Nao)")
      Escreva("= ")
      leia(resp)
      Escreval("")
      Repita
         // Decisão de hospedagem
         Se(resp="Sim")ou(resp="sim")Entao
              Escreval("---------------------------------------")
              Escreval("Cadastro [",numeroHospedagem,"]")
              Escreval("")
              
              // Informações do hospede
              Escreval(" ####### Informações pessoais #######  ")
              Escreva("Nome completo: ")
              leia(nomeCompleto)
              Escreva("Telefone: ")
              leia(telefone)
              Escreval("_______________________________________")
              Escreval("")

              repita
                 // Informações da hospedagem
                 Escreval(" #### Informações para hospedagem ####")
                 Escreva("Quantidade de quartos que deseja: ")
                 leia(quantQuartos)
                 Escreva("Quantidade de pessoas para hospedagem: ")
                 leia(quantHospedes)

                 // Verificando se o valores são válidos
                 se(quantQuartos=0)Entao
                       Escreval("Valor insuficiente!")
                       Escreval("Quantidade de quartos mínimo: 1")
                       Escreval("")
                 senao
                      se(quantHospedes=0) entao
                           Escreval("Valor insuficiente!")
                           Escreval("Quantidade mínima de hóspedes: 1")
                           Escreval("")
                      fimse
                 fimse
              ate(quantQuartos>0)e(quantHospedes>0)
              Escreval("_______________________________________")
              Escreval("")

              // Calculo de preço final
              valorQuarto <- quantQuartos * 25.63
              valorHospede <- quantHospedes * 12.57
              valorFinal <- (valorQuarto + valorHospede) *2

              // Mostrar recibo de hospedagem
              Escreval(" ####### Recibo de hospedagem #######")
              Escreval("Nome do cliente: ", nomeCompleto, " | Telefone: ", Telefone)
              Escreval("Quatidade de quartos:", quantQuartos, " | Quantidade de hospedes:", quantHospedes)
              Escreval("Valor Final da hospedagem = R$",valorFinal)
              Escreval("")
              Escreval("Cadastro concluído")
              Escreval("---------------------------------------")
              Escreval("")
              

              // Nova Hospedagem
              repita
                 Escreval("Deseja fazer outra hospedagem?(Sim/Nao)")
                 Escreva("= ")
                 leia(resp)
                 Escreval("")
                 
                 se(resp="Sim") ou (resp="sim")Entao
                      numeroHospedagem <- numeroHospedagem + 1
                      decisaoCliente <- verdadeiro
                 Senao
                      se(resp="nao")ou(resp="Nao")entao
                           decisaoCliente <- falso
                      senao
                           Escreval("=======================================")
                           Escreval("Desculpe, não entendi!")
                           Escreval("=======================================")
                           Escreval("")
                      fimse
                 fimse
                 
              ate(resp="sim")ou(resp="Sim")ou(resp="nao")ou(resp="Nao")
              // fim do bloco de hospedagem
         Senao
              se(resp="nao")ou(resp="Nao")entao
                   decisaoCliente <- falso
              senao
                   Escreval("=======================================")
                   Escreval("Desculpe, não entendi!")
                   Escreval("=======================================")
                   Escreval("")
              fimse
         Fimse
         
      ate(decisaoCliente=falso)
ate(resp="sim")ou(resp="Sim")ou(resp="nao")ou(resp="Nao")
Escreval("---------------------------------------")
Escreval("|   A hospedagensFacil.com agradeçe   |")
Escreval("---------------------------------------")
fimalgoritmo
