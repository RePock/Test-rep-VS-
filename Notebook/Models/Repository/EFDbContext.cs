using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


namespace Notebook.Models.Repository
{
    public class EFDbContext : DbContext
    {
        public DbSet<Person> People { get; set; }
    }
}