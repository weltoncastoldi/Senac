namespace ConsoleApp2
{
    internal class Categoria
    {
        public string Nome { get; set; }

        public Categoria(string nome)
        {
            Nome = nome;
        }

        public void ExibirCategoria()
        {
            Console.WriteLine("Categoria: " + Nome);
        }
    }
}
