using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tarea1_P.A.W_03101
{
   public class RegProLegi
   {
      private string tipoIdentificacion;
      private string numIdentificacion;
      private string nombre;
      private string apellido1;
      private string apellido2;
      private string numtelefono;
      private string email;
      private string provincia;
      private string canton;
      private string propuesta;

      public RegProLegi(string tipoIdentificacion, string numIdentificacion, string nombre, string apellido1, string apellido2, string numtelefono, string email, string provincia, string canton, string propuesta)
      {
         this.tipoIdentificacion = tipoIdentificacion;
         this.numIdentificacion = numIdentificacion;
         this.nombre = nombre;
         this.apellido1 = apellido1;
         this.apellido2 = apellido2;
         this.numtelefono = numtelefono;
         this.email = email;
         this.provincia = provincia;
         this.canton = canton;
         this.propuesta = propuesta;
      }

      public string TipoIdentificacion { get => tipoIdentificacion; set => tipoIdentificacion = value; }
      public string NumIdentificacion { get => numIdentificacion; set => numIdentificacion = value; }
      public string Nombre { get => nombre; set => nombre = value; }
      public string Apellido1 { get => apellido1; set => apellido1 = value; }
      public string Apellido2 { get => apellido2; set => apellido2 = value; }
      public string Numtelefono { get => numtelefono; set => numtelefono = value; }
      public string Email { get => email; set => email = value; }
      public string Provincia { get => provincia; set => provincia = value; }
      public string Canton { get => canton; set => canton = value; }
      public string Propuesta { get => propuesta; set => propuesta = value; }
   }
}