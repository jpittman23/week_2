namespace PizzaStore.Domain.Models
{
    public class Size
    {
        public string _size(string s)
        {
            int choice;
            int.TryParse(s, out choice);

            if (choice == 1)
            {
                var size = "small";
                return size;
            }
            else if (choice == 2)
            {
                var size = "medium";
                return size;
            }
            else if (choice == 3)
            {
                var size = "large";
                return size;
            }
            else
            {
                return "Please make a valid selection";
            }
        }
    }
}