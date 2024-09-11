algoritmo "barbearia thigas"
var
    cabelo, pagamento, preco: real
inicio
    repita
        escreval("Escolha o serviço desejado, digitando o número correspondente")
        escreval("1 - Cabelo: R$45")
        escreval("2 - Barba: R$35")
        escreval("3 - Barba e Cabelo: R$70")
        escreval("0 - Sair")
        leia(cabelo)

        se cabelo = 1 entao
            escreval("Você escolheu um corte de cabelo de R$45")
            preco <- 45
        senao
            se cabelo = 2 entao
                escreval("Você escolheu um corte de barba de R$35")
                preco <- 35
            senao
                se cabelo = 3 entao
                    escreval("Você escolheu um corte de barba e cabelo de R$70")
                    preco <- 70
                senao
                    se cabelo <> 0 entao
                        escreval("Serviço inválido.")
                    fimse
                fimse
            fimse
        fimse

        se cabelo <> 0 então
            escreval("Digite o valor em amostra em R$:")
            leia(preco)
            escreval("Escolha método de pagamento")
            escreval("1 - Cartão (valor completo)")
            escreval("2 - Dinheiro (10% de desconto)")
            escreval("3 - Pix (20% de desconto)")
            leia(pagamento)

            escolha pagamento
            caso 1
                pagamento <- preco
            caso 2
                pagamento <- preco * (10/100)
            caso 3
                pagamento <- preco * (20/100)
            fimescolha

            escreval("Você escolheu um corte de preço: R$", preco, " e teve um desconto de R$", pagamento, " resultando em um valor total de R$", preco - pagamento)
        fimse

    ate cabelo = 0

    escreval("Obrigado por utilizar nossos serviços!, volte sempre!")
fimalgoritmo