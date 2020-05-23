using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Notebook.Models.Repository
{
    public class Repository
    {
        private EFDbContext context = new EFDbContext();

        public IEnumerable<Person> People
        {
            get { return context.People; }
        }

        public void SavePerson(Person person)
        {
            if (person.PeopleID == 0)
            {
                person = context.People.Add(person);
            }
            else
            {
                Person dbPerson = context.People.Find(person.PeopleID);
                if (dbPerson != null)
                {
                    dbPerson.FirstName = person.FirstName;
                    dbPerson.SecondName = person.SecondName;
                    dbPerson.Age = person.Age;
                    dbPerson.Email = person.Email;
                    dbPerson.Phone = person.Phone;
                }
            }
            context.SaveChanges();
        }

        public void DeletePerson(Person person)
        {
            context.People.Remove(person);
            context.SaveChanges();
        }
    }
}