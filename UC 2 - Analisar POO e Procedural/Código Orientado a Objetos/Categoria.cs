namespace ConsoleApp2
{
    internal class Categoria
    {
        private static int _ultimoId = 0;
        public int Id { get; private set; }
        public string Nome { get; private set; }

        public Categoria(string nome)
        {
            Id = ++_ultimoId; // Incrementa o ID ao criar uma nova instância
            Nome = nome;
        }

        public static List<Categoria> IniciarCategorias()
        {
            return
            [
                new Categoria("Smartphones"),
                new Categoria("Tablets"),
                new Categoria("Acessórios"),
                new Categoria("Wearables"),
                new Categoria("Fones de Ouvido")
            ];
        }

        public void ExibirCategoria()
        {
            Console.WriteLine($"{Id}: {Nome}");
        }
    }
}
