programa
{
	
	funcao inicio()
	{
		real nota1, nota2, total
		
		escreva("Digite a primeira nota: ")
		leia(nota1)
		
		
		escreva("Digite a segunda nota: ")
		leia(nota2)

		total = nota1 + nota2

		se(total >= 60)
		{
			escreva("NOTA FINAL = " + total)  
		}
		senao
		{
			escreva("NOTA FINAL = " + total + "\n")  
			escreva("REPROVADO")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 345; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
