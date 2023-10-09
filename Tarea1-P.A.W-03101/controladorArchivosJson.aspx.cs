using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea1_P.A.W_03101
{
   public partial class controladorArchivosJson : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

         string tipoIdentificacion = Request["tipoIdentificacion"];
         string numIdentificacion = Request["numIdentificacion"];
         string nombre = Request["nombre"];
         string apellido1 = Request["apellido1"];
         string apellido2 = Request["apellido2"];
         string numtelefono = Request["numtelefono"];
         string email = Request["email"];
         string provincia = Request["provincia"];
         string canton = Request["canton"];
         string propuesta = Request["propuesta"];

         List<RegProLegi> listaRegProLegi;
         if (Session["listaRegProLegi"] == null)
         {
            listaRegProLegi = new List<RegProLegi>();
         }
         else
         {
            listaRegProLegi = (List<RegProLegi>)Session["listaRegProLegi"];
            listaRegProLegi.Add(new RegProLegi(tipoIdentificacion, numIdentificacion, nombre, apellido1, apellido2, numtelefono, email, provincia, canton, propuesta));

            Session["listaRegProLegi"] = listaRegProLegi;

            //Crear o escribir en archivo Json



            Response.Write("registrado");
         }

      }
   }
}