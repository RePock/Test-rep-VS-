using Notebook.Models;
using Notebook.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Notebook.Pages.Admin
{
    public partial class People : System.Web.UI.Page
    {
        private Repository repository = new Repository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Person> GetPeople()
        {
            return repository.People;
        }

        public void UpdatePerson(int PeopleID)
        {
            Person myPerson = repository.People
                .Where(p => p.PeopleID == PeopleID).FirstOrDefault();
            if (myPerson != null && TryUpdateModel(myPerson,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SavePerson(myPerson);
            }
        }

        public void DeletePerson(int PeopleID)
        {
            Person myPerson = repository.People
                .Where(p => p.PeopleID == PeopleID).FirstOrDefault();
            if (myPerson != null)
            {
                repository.DeletePerson(myPerson);
            }
        }

        public void InsertPerson()
        {
            Person myPerson = new Person();
            if (TryUpdateModel(myPerson,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SavePerson(myPerson);
            }
        }
    }
}