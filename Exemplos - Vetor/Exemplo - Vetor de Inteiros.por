programa
{
	
	funcao inicio()
	{
		inteiro pontos[10]
		inteiro controle
		cadeia nome_clube
		inteiro total
		escreva("CALCULADORA DO CAMPEONATO SENAC\n")
		
		escreva("Informe o nome do time")
		leia(nome_clube)

		para(controle = 0; controle <10; controle++)
		{
			escreva("Digite a pontuação da "+ controle +" partida:")
			leia(pontos[controle])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */