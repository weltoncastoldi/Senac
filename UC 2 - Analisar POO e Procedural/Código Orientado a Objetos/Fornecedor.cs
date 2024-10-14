namespace ConsoleApp2
{
    internal class Fornecedor
    {
        public string Nome { get; set; }

        public Fornecedor(string nome)
        {
            Nome = nome;
        }

        public void ExibirFornecedor()
        {
            Console.WriteLine("Fornecedor: " + Nome);
        }
    }
}
