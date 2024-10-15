namespace ConsoleApp2
{
    internal class Produto
    {
        public string Nome { get; set; }
        public Categoria CategoriaProduto { get; set; }
        public Fornecedor FornecedorProduto { get; set; }

        public Produto(string nome, Categoria categoria, Fornecedor fornecedor)
        {
            Nome = nome;
            CategoriaProduto = categoria;
            FornecedorProduto = fornecedor;
        }

        public static List<Produto> IniciarProdutos(List<Categoria> categorias, List<Fornecedor> fornecedores)
        {
            return
            [
                new Produto("Galaxy S21", categorias[0], fornecedores[0]),
                new Produto("iPad Pro", categorias[1], fornecedores[1]),
                new Produto("Fone Bluetooth", categorias[4], fornecedores[2]),
                new Produto("Moto 360", categorias[3], fornecedores[3]),
                new Produto("Capa Protetora", categorias[2], fornecedores[4])
            ];
        }

        public void ExibirProduto()
        {
            Console.WriteLine($"Produto: {Nome}, Categoria: {CategoriaProduto.Nome}, Fornecedor: {FornecedorProduto.Nome}");
        }
    }
}
