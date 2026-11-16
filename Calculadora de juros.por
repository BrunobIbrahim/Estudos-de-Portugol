programa {
   inclua biblioteca Matematica --> mat

  funcao inicio() {

    
    real valor
    real juros= 0.025
    real parcelas
    real prestacao
    real arredondado
    real montante
    real i
    real saldo
    real jurosParcela
    real amortizacao
  



    escreva("Simulador de emprestimos bancario\n\n")

    escreva("Informe o valor a ser pego:")
    leia(valor)

    escreva("informe em quantas parcelas deseja efetuar o pagamento:")
    leia(parcelas)

    i = mat.potencia(1 + juros, parcelas)

    prestacao = valor * (juros * i) / (i - 1)

    montante = prestacao * parcelas

    

    arredondado = mat.arredondar(prestacao,2)
    montante = mat.arredondar(montante,2)

    escreva("\nCom um esprestimo de "+ valor +" em "+ parcelas +"X suas prestações serão de "+ arredondado + " e o valor total a ser pago será de: "+ montante)


    escreva("\n\n\nTabela de parcelamento\n")

    saldo = valor

    para (inteiro contador = 01;contador <= parcelas; contador++) {

    jurosParcela = saldo * juros

    amortizacao = prestacao - jurosParcela

    saldo = saldo - amortizacao

    prestacao = mat.arredondar(prestacao,2)
    jurosParcela = mat.arredondar(jurosParcela,2)
    amortizacao = mat.arredondar(amortizacao,2)
    saldo = mat.arredondar(saldo,2)

    escreva(contador + " | " + prestacao + " | " + jurosParcela + " | " + amortizacao + " | " + saldo + "\n")

  }

    
  }
}
