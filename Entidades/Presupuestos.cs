using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Presupuestos
    {
        //escribo todos los campos que va a tener la entidad.

        string alias;//completado
        string telefono_fijo;//completado
        string localidad;//completado
        string email;//completado
        string consulta;//completado

        //declaro un constructor vacio.
        public Presupuestos() { }

        //sets y gets

        public void set_alias(string alias) {
            this.alias = alias;
        }

        public string get_alias()
        {
            return this.alias;
        }

        public void set_telefono(string telefono) {
            this.telefono_fijo = telefono;
        }

        public string get_telefono() {
            return this.telefono_fijo;
        }

        public void set_localidad(string localidad)
        {
            this.localidad = localidad;
        }

        public string get_Localidad() {
            return this.localidad;
        }

        public void set_email(string email)
        {
            this.email = email;
        }

        public string get_email()
        {
            return this.email;
        } 

        public void set_consulta(string consulta)
        {
           this.consulta = consulta;
        }

        public String get_consulta()
        {
            return this.consulta;
        }

    }
}
