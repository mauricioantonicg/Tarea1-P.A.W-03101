using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.IO;
using System.Drawing;

namespace Tarea1_P.A.W_03101
{
   public partial class controladorArchivosJson : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

         string tipoIdentificacion = Request["tipoIdentificacio"];
         string numIdentificacion = Request["numIdentificacio"];
         string nombre = Request["nombr"];
         string apellido1 = Request["apellid1"];
         string apellido2 = Request["apellid2"];
         string numtelefono = Request["numtelefon"];
         string email = Request["emai"];
         string provincia = Request["provinci"];
         string canton = Request["canto"];
         string propuesta = Request["propuest"];

         //List<RegProLegi> listaRegProLegi;
         //if (Session["listaRegProLegi"] == null)
         //{
         //   listaRegProLegi = new List<RegProLegi>();
         //   listaRegProLegi.Add(new RegProLegi(tipoIdentificacion, numIdentificacion, nombre, apellido1, apellido2, numtelefono, email, provincia, canton, propuesta));
         //   Response.Write("registrado");
         //}
         //else
         //{
         //   listaRegProLegi = (List<RegProLegi>)Session["listaRegProLegi"];
         //   listaRegProLegi.Add(new RegProLegi(tipoIdentificacion, numIdentificacion, nombre, apellido1, apellido2, numtelefono, email, provincia, canton, propuesta));

         //   Session["listaRegProLegi"] = listaRegProLegi;

         //   //Crear o escribir en archivo Json

         //   Response.Write("registrado");

         //}
         //

         RegProLegi newRegProLegi;
         newRegProLegi = new RegProLegi(tipoIdentificacion, numIdentificacion, nombre, apellido1, apellido2, numtelefono, email, provincia, canton, propuesta);
         string newRegistroJsonRegProLegi;

         if (Session["listaJsonRegProLegi"] == null)
         {
            newRegistroJsonRegProLegi = JsonConvert.SerializeObject(newRegProLegi);
            Session["listaJsonRegProLegi"] = newRegistroJsonRegProLegi;

            //Crear o escribir en archivo Json
            File.WriteAllText("C:/json/ArchivoRegProLegi.json", newRegistroJsonRegProLegi);

            Response.Write("registrado");
         }
         else
         {            
            Session["listaJsonRegProLegi"] = newRegistroJsonRegProLegi = (Session["listaJsonRegProLegi"].ToString() +","+ JsonConvert.SerializeObject(newRegProLegi));

            //Crear o escribir en archivo Json

            Response.Write("registrado");
         }

      }
   }
}