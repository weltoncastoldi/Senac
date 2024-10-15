namespace ConsoleApp2
{
    internal class Fornecedor
    {
        private static int _ultimoId = 0;
        public int Id { get; private set; }
        public string Nome { get; private set; }

        public Fornecedor(string nome)
        {
            Id = ++_ultimoId;
            Nome = nome;
        }

        public static List<Fornecedor> IniciarFornecedores()
        {
            return
            [
                new Fornecedor("Samsung"),
                new Fornecedor("Apple"),
                new Fornecedor("Xiaomi"),
                new Fornecedor("Motorola"),
                new Fornecedor("Sony")
            ];
        }

        public void ExibirFornecedor()
        {
            Console.WriteLine($"{Id}: {Nome}");
        }
    }
}
