namespace ConsoleApp2
{

    internal class Erp
    {
        List<Categoria> categorias = new List<Categoria>();
        List<Fornecedor> fornecedores = new List<Fornecedor>();
        List<Produto> produtos = new List<Produto>();

        public Erp()
        {
            IniciarDados();
        }

        public void Menu()
        {
            int opcao;
            do
            {
                Console.WriteLine("BEM VINDO AO MEU ERP DE VENDAS DE CELULARES");
                Utilidades.Separador('=', 100);
                Console.WriteLine("1 - Cadastro de Categorias");
                Console.WriteLine("2 - Cadastro de Fornecedores");
                Console.WriteLine("3 - Cadastro de Produtos");
                Console.WriteLine("4 - Listar Categorias");
                Console.WriteLine("5 - Listar Fornecedores");
                Console.WriteLine("6 - Listar Produtos");
                Console.WriteLine("0 - Sair");
                Utilidades.Separador('=', 100);
                Console.Write("Digite sua opção: ");
                opcao = int.Parse(Console.ReadLine());

                switch (opcao)
                {
                    case 1:
                        CadastrarCategoria();
                        break;
                    case 2:
                        CadastrarFornecedor();
                        break;
                    case 3:
                        CadastrarProduto();
                        break;
                    case 4:
                        ListarCategorias();
                        break;
                    case 5:
                        ListarFornecedores();
                        break;
                    case 6:
                        ListarProdutos();
                        break;
                    case 0:
                        Console.WriteLine("Saindo do sistema...");
                        break;
                    default:
                        Console.WriteLine("Opção inválida! Tente novamente.");
                        break;
                }
            } while (opcao != 0);
        }

        public void IniciarDados()
        {
            // Inicializando Categorias
            categorias.Add(new Categoria("Smartphones"));
            categorias.Add(new Categoria("Tablets"));
            categorias.Add(new Categoria("Acessórios"));
            categorias.Add(new Categoria("Wearables"));
            categorias.Add(new Categoria("Fones de Ouvido"));

            // Inicializando Fornecedores
            fornecedores.Add(new Fornecedor("Samsung"));
            fornecedores.Add(new Fornecedor("Apple"));
            fornecedores.Add(new Fornecedor("Xiaomi"));
            fornecedores.Add(new Fornecedor("Motorola"));
            fornecedores.Add(new Fornecedor("Sony"));

            // Inicializando Produtos
            produtos.Add(new Produto("Galaxy S21", categorias[0], fornecedores[0])); // Smartphone da Samsung
            produtos.Add(new Produto("iPad Pro", categorias[1], fornecedores[1])); // Tablet da Apple
            produtos.Add(new Produto("Fone Bluetooth", categorias[4], fornecedores[2])); // Fone da Xiaomi
            produtos.Add(new Produto("Moto 360", categorias[3], fornecedores[3])); // Wearable da Motorola
            produtos.Add(new Produto("Capa Protetora", categorias[2], fornecedores[4])); // Acessório da Sony
        }


        void CadastrarCategoria()
        {
            Console.Write("Digite o nome da categoria: ");
            string nomeCategoria = Console.ReadLine();
            categorias.Add(new Categoria(nomeCategoria));
            Console.WriteLine("Categoria cadastrada com sucesso!");
            Utilidades.Separador('.', 100);

        }

        void CadastrarFornecedor()
        {
            Console.Write("Digite o nome do fornecedor: ");
            string nomeFornecedor = Console.ReadLine();
            fornecedores.Add(new Fornecedor(nomeFornecedor));
            Console.WriteLine("Fornecedor cadastrado com sucesso!");
            Utilidades.Separador('.', 100);
        }

        void CadastrarProduto()
        {
            if (categorias.Count == 0 || fornecedores.Count == 0)
            {
                Console.WriteLine("Cadastre ao menos uma categoria e um fornecedor antes de cadastrar um produto.");
                return;
            }

            Console.Write("Digite o nome do produto: ");
            string nomeProduto = Console.ReadLine();

            Console.WriteLine("Escolha uma categoria:");
            for (int i = 0; i < categorias.Count; i++)
            {
                Console.WriteLine($"{i + 1} - {categorias[i].Nome}");
            }
            int categoriaIndex = int.Parse(Console.ReadLine()) - 1;

            Console.WriteLine("Escolha um fornecedor:");
            for (int i = 0; i < fornecedores.Count; i++)
            {
                Console.WriteLine($"{i + 1} - {fornecedores[i].Nome}");
            }
            int fornecedorIndex = int.Parse(Console.ReadLine()) - 1;

            produtos.Add(new Produto(nomeProduto, categorias[categoriaIndex], fornecedores[fornecedorIndex]));
            Console.WriteLine("Produto cadastrado com sucesso!");
            Utilidades.Separador('.', 100);

        }

        void ListarCategorias()
        {
            Console.WriteLine("Categorias cadastradas:");
            foreach (var categoria in categorias)
            {
                categoria.ExibirCategoria();
            }
            Utilidades.Separador('.', 100);

        }

        void ListarFornecedores()
        {
            Console.WriteLine("Fornecedores cadastrados:");
            foreach (var fornecedor in fornecedores)
            {
                fornecedor.ExibirFornecedor();
            }
            Utilidades.Separador('.', 100);

        }

        void ListarProdutos()
        {
            Console.WriteLine("Produtos cadastrados:");
            foreach (var produto in produtos)
            {
                produto.ExibirProduto();
            }
            Utilidades.Separador('.', 100);

        }


    }
}
