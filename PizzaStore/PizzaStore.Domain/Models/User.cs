using System.Collections.Generic;

namespace PizzaStore.Domain.Models
{
    public class User
    {
        public List<Order> orders { get; set; }
        public Name name { get; set; }
    }
}