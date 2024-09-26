programa
{
	const inteiro UNDERLINE = 100
	const inteiro PONTOS = 150
	
	funcao inicio()
	{
		inteiro opcao_escolhida
		escreva("CALCULADORA \n")
		escreve_underline()
		escreva("\n")		
		escreva("1 - Adição \n")
		escreve_ponto()
		escreva("2 - Subtração \n")
		escreve_ponto()
		escreva("3 - Multiplicação \n")
		escreve_ponto()
		escreva("4 - Divisão \n")
		escreve_underline()
		
		leia(opcao_escolhida)
		
		escolha(opcao_escolhida)
		{
			caso 1 :
			{
				programa_adicao()
				pare
			}
			caso 2:
			{
				programa_subtracao()
				pare
			}
			caso 3:
			{
				programa_multiplicacao()
				pare
			}
			caso 4:
			{
				programa_divisao()
				pare
			}
		}
	}

	funcao escreve_underline()
	{
		inteiro i = 0
		para(i = 1; i <= UNDERLINE; i++)
		{
			escreva("_")
		}
		escreva("\n")
	}

	funcao escreve_ponto()
	{
		inteiro i = 0
		para(i = 1; i <= PONTOS; i++)
		{
			escreva(".")
		}
		escreva("\n")
	}

	funcao programa_adicao()
	{
		real valor1, valor2, total
		caracter controle
		faca
		{			
			escreva("Programa de Adição \n")
			escreva("Digite o 1 valor")
			leia(valor1)
			escreva("Digite o 2 valor")
			leia(valor2)
			total = valor1 + valor2
			escreva("TOTAL = " + total)
			escreva("Deseja voltar ao menu? (s) ou (n)")
			leia(controle)
		}
		enquanto(controle == 'n' ou controle == 'N')
		
				
	}

	funcao programa_subtracao()
	{
		escreva("Programa de Subtração")
	}
	
	funcao programa_multiplicacao()
	{
		escreva("Programa de Multiplicação")
	}

	funcao programa_divisao()
	{
		escreva("Programa de Divisão")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1246; 
 * @DOBRAMENTO-CODIGO = [47, 57, 88, 93, 98];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */