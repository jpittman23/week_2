using System.Collections.Generic;

namespace PizzaStore.Domain.Models
{
    public class Pizza
    {
        public List<Toppings> toppings { get; set; }
        public Crust crust { get; set; }
        public Size size { get; set; }
    }
}