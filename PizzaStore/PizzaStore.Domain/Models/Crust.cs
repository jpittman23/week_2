namespace PizzaStore.Domain.Models
{
    public class Crust
    {
        public string _crust(string c)
        {
            int choice;
            int.TryParse(c, out choice);

            if(choice == 1)
            {
                var crust = "regular";
                return crust;
            }
            else if(choice == 2)
            {
                var crust = "stuffed";
                return crust;
            }
            else if(choice == 3)
            {
                var crust = "Thin";
                return crust;
            }
            else
            {
                return "Please make a valid selection";
            }
        }
    }
}