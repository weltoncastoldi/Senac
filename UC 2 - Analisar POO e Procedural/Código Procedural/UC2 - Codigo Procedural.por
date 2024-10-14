programa
{
	const inteiro LIMITE = 30
	// Vetores para armazenar dados de categorias, fornecedores e produtos
	
	cadeia categorias[LIMITE]
	cadeia fornecedores[LIMITE]
	cadeia produtos[LIMITE]
	inteiro produto_categoria[LIMITE]
	inteiro produto_fornecedor[LIMITE]
	inteiro contador_categoria = 0
	inteiro contador_fornecedor = 0
	inteiro contador_produto = 0
	
	funcao inicio()
	{
		inteiro opcao
		popular_banco_dados()
		
		faca {
			escreva("BEM VINDO AO MEU ERP DE VENDAS DE CELULARES \n")
			separador('=', 100)
			escreva("CADASTRO GERAL DO SISTEMA \n")
			escreva("(1) - Cadastro de Categorias \n")
			escreva("(2) - Cadastro de Fornecedores \n")
			escreva("(3) - Cadastro de Produtos \n")
			escreva("(4) - Listar Categorias \n")
			escreva("(5) - Listar Fornecedores \n")
			escreva("(6) - Listar Produtos \n")
			escreva("(0) - Sair \n")
			separador('-', 100)
			escreva("Digite sua opção: ")
			leia(opcao)
			
			escolha(opcao)
			{
				caso 1:
					modulo_categoria()
					pare
				caso 2:
					modulo_fornecedor()
					pare
				caso 3:
					modulo_produto()
					pare
				caso 4:
					listar_categorias()
					pare
				caso 5:
					listar_fornecedores()
					pare
				caso 6:
					listar_produtos()
					pare
				caso 0:
					escreva("Saindo do sistema...\n")
					pare
				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
					pare
			}
		}
		enquanto(opcao != 0)
	}

	funcao separador(caracter simbolo, inteiro quantidade)
	{
		inteiro i
		para(i = 0; i <= quantidade; i++)
		{
			escreva(simbolo)
		}
		escreva("\n")
	}

	// Função para cadastrar categorias de produtos
	funcao modulo_categoria()
	{
		se(contador_categoria < 10)
		{
			escreva("Digite o nome da nova categoria (ex: Smartphones, Acessórios, etc.): ")
			leia(categorias[contador_categoria])
			contador_categoria++
			escreva("Categoria cadastrada com sucesso!\n")
		}
		senao
		{
			escreva("Limite de categorias atingido!\n")
		}
	}

	// Função para cadastrar fornecedores
	funcao modulo_fornecedor()
	{
		se(contador_fornecedor < 10)
		{
			escreva("Digite o nome do fornecedor (ex: Samsung, Apple, Xiaomi): ")
			leia(fornecedores[contador_fornecedor])
			contador_fornecedor++
			escreva("Fornecedor cadastrado com sucesso!\n")
		}
		senao
		{
			escreva("Limite de fornecedores atingido!\n")
		}
	}

	// Função para cadastrar produtos com categoria e fornecedor associados
	funcao modulo_produto()
	{
		inteiro categoria_escolhida, fornecedor_escolhido

		se(contador_produto < 10)
		{
			escreva("Digite o nome do produto (ex: iPhone 13, Galaxy S21): ")
			leia(produtos[contador_produto])
			
			// Escolher categoria do produto
			escreva("Escolha uma categoria para o produto: \n")
			listar_categorias()
			escreva("Digite o número da categoria: ")
			leia(categoria_escolhida)
			produto_categoria[contador_produto] = categoria_escolhida - 1

			// Escolher fornecedor do produto
			escreva("Escolha um fornecedor para o produto: \n")
			listar_fornecedores()
			escreva("Digite o número do fornecedor: ")
			leia(fornecedor_escolhido)
			produto_fornecedor[contador_produto] = fornecedor_escolhido - 1
			
			contador_produto++
			escreva("Produto cadastrado com sucesso!\n")
		}
		senao
		{
			escreva("Limite de produtos atingido!\n")
		}
	}

	// Função para listar categorias cadastradas
	funcao listar_categorias()
	{
		inteiro i
		se(contador_categoria > 0)
		{
			escreva("CATEGORIAS CADASTRADAS: \n")
			para(i = 0; i < contador_categoria; i++)
			{
				escreva(i + 1, ". ", categorias[i], "\n")
			}
		}
		senao
		{
			escreva("Nenhuma categoria cadastrada.\n")
		}
	}

	// Função para listar fornecedores cadastrados
	funcao listar_fornecedores()
	{
		inteiro i
		se(contador_fornecedor > 0)
		{
			escreva("FORNECEDORES CADASTRADOS: \n")
			para(i = 0; i < contador_fornecedor; i++)
			{
				escreva(i + 1, ". ", fornecedores[i], "\n")
			}
		}
		senao
		{
			escreva("Nenhum fornecedor cadastrado.\n")
		}
	}

	// Função para listar produtos cadastrados com suas categorias e fornecedores
	funcao listar_produtos()
	{
		inteiro i
		se(contador_produto > 0)
		{
			escreva("PRODUTOS CADASTRADOS: \n")
			para(i = 0; i < contador_produto; i++)
			{
				escreva(i + 1, ". Produto: ", produtos[i], ", Categoria: ", categorias[produto_categoria[i]], ", Fornecedor: ", fornecedores[produto_fornecedor[i]], "\n")
			}
		}
		senao
		{
			escreva("Nenhum produto cadastrado.\n")
		}
	}

	// Função para cadastrar 5 categorias, 5 fornecedores e 5 produtos automaticamente
	funcao popular_banco_dados()
	{
		cadeia categorias_lote[5] = {"Smartphones", "Acessórios", "Carregadores", "Capinhas", "Fones de ouvido"}
		cadeia fornecedores_lote[5] = {"Samsung", "Apple", "Xiaomi", "Motorola", "LG"}
		cadeia produtos_lote[5] = {"Galaxy S21", "iPhone 13", "Redmi Note 10", "Moto G100", "LG Velvet"}
		
		inteiro i

		// Cadastrar categorias em lote
		para(i = 0; i < 5; i++)
		{
			se(contador_categoria < 10)
			{
				categorias[contador_categoria] = categorias_lote[i]
				contador_categoria++
			}
		}

		// Cadastrar fornecedores em lote
		para(i = 0; i < 5; i++)
		{
			se(contador_fornecedor < 10)
			{
				fornecedores[contador_fornecedor] = fornecedores_lote[i]
				contador_fornecedor++
			}
		}

		// Cadastrar produtos em lote com suas respectivas categorias e fornecedores
		para(i = 0; i < 5; i++)
		{
			se(contador_produto < 10)
			{
				produtos[contador_produto] = produtos_lote[i]
				produto_categoria[contador_produto] = i  // Cada produto recebe a categoria correspondente
				produto_fornecedor[contador_produto] = i  // Cada produto recebe o fornecedor correspondente
				contador_produto++
			}
		}

		escreva("Banco de dados inicializado com sucesso!\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 919; 
 * @DOBRAMENTO-CODIGO = [34];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */