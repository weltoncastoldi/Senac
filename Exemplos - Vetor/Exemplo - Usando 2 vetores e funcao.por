programa
{
	cadeia nome[100]
	inteiro idade[100], posicao = 0, i=0
	caracter tem_clientes_fila = 'n'
	
	funcao inicio()
	{
		escreva_separador('*', 80)
		escreva("BEM VINDO AO CINEMA")
		escreva_separador('*', 80)

		faca
		{
			escreva("\n Nome do cliente: ")
			leia(nome[posicao])

			escreva("\n Idade do cliente: ")
			leia(idade[posicao])

			escreva("\n Tem clientes na fila? (s) ou (n)")
			leia(tem_clientes_fila)

			posicao++
		}
		enquanto(tem_clientes_fila == 's')

		escreva("RELATÓRIO DE ENTRADA DE CLIENTES \n")
		escreva_separador('=', 80)
		escreva("IDADE -> NOME")
		
		para(i = 0; i <= posicao; i++)
		{
			escreva(idade[i] + " -> " + nome[i])
		}

	}

	funcao escreva_separador(caracter simbolo, inteiro repeticao)
	{
		enquanto(repeticao <= 0)
		{
			escreva(simbolo)
			repeticao--	
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 592; 
 * @DOBRAMENTO-CODIGO = [38];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */