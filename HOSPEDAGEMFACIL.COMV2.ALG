algoritmo "hospedagemFacil.comV2"
var
   resp, nomeCompleto, telefone, quarto : caractere
   quantQuartos, quantHospedes, numeroHospedagem : inteiro
   valorFinal, valorQuarto, valorHospede : real
   decisaoCliente : logico
   
// Procedimentos
procedimento capa()
inicio
   Escreval("---------------------------------------")
   Escreval("|         HospedagemFacil.com         |")
   Escreval("---------------------------------------")
   Escreval("")
fimprocedimento
procedimento hospedar()
var
cont : inteiro
inicio

   capa()
   numeroHospedagem <- numeroHospedagem + 1

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
   
   Escreval("Aguarde...")
   timer 1000
   timer 0
   limpatela
   capa()

   timer 1000
   // Mostrar recibo de hospedagem
   Escreval(" ####### Recibo de hospedagem #######")
   Escreval("Nome do cliente: ":20, nomeCompleto)
   Escreval("Telefone: ":20, Telefone)
   Escreval("Quantidade de quartos:":26, quantQuartos)
   Escreval("Quantidade de hospedes:":26, quantHospedes)
   Escreval("Valor Final da hospedagem = R$",valorFinal:5:2)
   Escreval("")
   Escreval("Cadastro concluído")
   timer 0
   Escreval("---------------------------------------")
   Escreval("")

fimprocedimento
// Inicio do programa
inicio
numeroHospedagem <- 0
capa()

Escreval("Olá Visitante, Bem-vindo!!!")
repita
      // Visita
      Escreval("Deseja fazer cadastro na rede?(Sim/Nao)")
      Escreva("= ")
      leia(resp)
      Escreval("")
      limpatela
      
      Repita
         // Decisão de hospedagem
         Se(resp="Sim")ou(resp="sim")Entao
              hospedar()
              
              // Nova Hospedagem
              repita
                 Escreval("Deseja fazer outra hospedagem?(Sim/Nao)")
                 Escreva("= ")
                 leia(resp)
                 Escreval("")

                 se(resp="Sim") ou (resp="sim")Entao
                      decisaoCliente <- verdadeiro
                      limpatela
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