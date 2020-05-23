using Notebook.Models;
using Notebook.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Notebook.Pages
{
    public partial class Listing : System.Web.UI.Page
    {
        private Repository repository = new Repository();

        protected IEnumerable<Person> GetPerson()
        {
            return repository.People;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}