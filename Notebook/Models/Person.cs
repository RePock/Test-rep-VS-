using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Notebook.Models
{
    public class Person
    {
        [Key]
        public int PeopleID { get; set; }
        public string FirstName { get; set; }
        public string SecondName { get; set; }
        public int Age { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }

    }
}