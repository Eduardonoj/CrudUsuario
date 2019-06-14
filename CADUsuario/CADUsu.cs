using CADUsuario.DSUsuarioTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CADUsuario
{
    public class CADUsu
    {
        private static UsuarioTableAdapter adapter = new UsuarioTableAdapter();

        public static DSUsuario.UsuarioDataTable GetUsuario(int IDUsuario)
        {
            return adapter.GetUsuario(IDUsuario);
        }
       /* public static bool ExisteUsuario(Convert.ToString(IDUsuario))
        {
            return adapter.ExisteUsuario((IDUsuario)) == 1;
        }*/

        public static string NuevoCliente(string Nombre, string Apellido, string Correo, string Contrasena)
        {
            int aux = adapter.Insert(Nombre, Apellido, Correo, Contrasena);
            if (aux == 0) return "No se pudo insertar el registro";
            else return "Registro Insertado Correctamente";

        }

        public static string ActualizarUsuario(string Nombre, string Apellido, string Correo, string Contrasena, int UsuarioID)
        {
            int aux = adapter.ActualizarUsuario(Nombre, Apellido, Correo, Contrasena, UsuarioID);
            if (aux == 0) return "No se pudo actualizar el usuario";
            else return " Registro Actualizado Correctamente";
        }

        public static string BorrarUsuario(int IDUsuario)
        {
            int aux = adapter.BorrarUsuario(IDUsuario);
            if (aux == 0) return "No se pudo Borrar el usuario";
            else return " Registro Borrado Correctamente";
        }
    }
}
