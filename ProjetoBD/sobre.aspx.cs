using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ainoa
{
    public partial class sobre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlSidenav.CssClass = "sidenav";
            }
        }

        protected void btnImage_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav visible";
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            pnlSidenav.CssClass = "sidenav closing";
        }

    }
}