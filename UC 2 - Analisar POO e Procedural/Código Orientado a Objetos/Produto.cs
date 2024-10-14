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

        public void ExibirProduto()
        {
            Console.WriteLine($"Produto: {Nome}, Categoria: {CategoriaProduto.Nome}, Fornecedor: {FornecedorProduto.Nome}");
        }
    }
}
