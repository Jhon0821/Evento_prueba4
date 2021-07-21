using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Evento_ADO;

namespace Modelo
{
    public   class EventoBan
    {
        private int id_evento;

        public int Id_evento
        {
            get { return id_evento; }
            set { id_evento = value; }
        }

        private string nombre_contacto;

        public string Nombre_contacto
        {
            get { return nombre_contacto; }
            set { nombre_contacto = value; }
        }

        private string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }

        private string correo_electronico;

        public string Correo_electronico
        {
            get { return correo_electronico; }
            set { correo_electronico = value; }
        }

        private string telefono;

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        private DateTime fecha_evento;

        public DateTime Fecha_evento
        {
            get { return fecha_evento; }
            set { fecha_evento = value; }
        }


        private int cantidad_personas;

        public int Cantidad_personas
        {
            get { return cantidad_personas; }
            set { cantidad_personas = value; }
        }

      public EventoBan() //Se crea el constructor vacio
        {

        }

        public bool Ingresar()
        {

            try
            {
                eventos evento = new eventos();
                evento.nombre_contacto = nombre_contacto;
                evento.direccion = direccion;
                evento.correo_electronico = correo_electronico;
                evento.telefono = telefono;
                evento.fecha_evento = fecha_evento;
                evento.cantidad_personas = cantidad_personas;
                Conexion.Evento.eventos.Add(evento);
                Conexion.Evento.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
            
        }

        public EventoBan(int id_evento, string nombre_contacto, string direccion, string correo_electronico, string telefono, DateTime fecha_evento, int cantidad_personas) //se crea el constructor con los parametros

        {
            Direccion = direccion;
            Correo_electronico = correo_electronico;
            Telefono = telefono;
            Fecha_evento = fecha_evento;
            Cantidad_personas = cantidad_personas;
            Id_evento = id_evento;
            Nombre_contacto = nombre_contacto;
        }

        public bool Actualizar()
        {
            try
            {

                eventos e = Conexion.Evento.eventos.First(ev=> ev.id_evento== Id_evento);
                e.nombre_contacto = Nombre_contacto;
                e.direccion = Direccion;
                e.correo_electronico = Correo_electronico;
                e.fecha_evento = fecha_evento;
                e.cantidad_personas = Cantidad_personas; 
                Conexion.Evento.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Elimininar()
        {
            try
            {

                eventos e = Conexion.Evento.eventos.First(ev => ev.id_evento == Id_evento);
                Conexion.Evento.eventos.Remove(e);
                Conexion.Evento.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<EventoBan> Listar()
        {
            List<EventoBan> lista = new List<EventoBan>();
            foreach(eventos eve in Conexion.Evento.eventos)
            {
                EventoBan ev = new EventoBan(eve.id_evento, eve.nombre_contacto, eve.direccion, eve.correo_electronico, eve.telefono, eve.fecha_evento, eve.cantidad_personas );
                lista.Add(ev);
            }
            return lista;
        }

        public EventoBan Buscarnombre(string nombre_contacto)
        {
           eventos evento = Conexion.Evento.eventos.First(eve => eve.nombre_contacto == nombre_contacto);

            if (evento != null)
            {
                Id_evento = evento.id_evento;
                Nombre_contacto = evento.nombre_contacto;
                
                return this;
            }
            else
            {
                return null;
            }
        }

        public EventoBan BuscarId(int id_evento)
        {
            eventos evento = Conexion.Evento.eventos.First(eve => eve.id_evento == id_evento);

            if (evento != null)
            {
                Id_evento = evento.id_evento;
                nombre_contacto = evento.nombre_contacto;
                return this;
            }
            else
            {
                return null;
            }
        }


        public override string ToString()
        {
            return string.Format("{0},-{1}", id_evento, nombre_contacto);
        }
    }
}
