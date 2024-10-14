namespace ConsoleApp2
{
    internal static class Utilidades
    {
        public static void Separador(char simbolo, int quantidade)
        {
            for (int i = 0; i < quantidade; i++)
            {
                Console.Write(simbolo);
            }
            Console.WriteLine();
        }
    }
}
