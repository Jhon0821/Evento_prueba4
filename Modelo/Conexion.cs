using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Evento_ADO;

namespace Modelo
{

  
    public struct Conexion 
    {
        private static eventos_pruebaEntities evento;

        public static eventos_pruebaEntities Evento
        {
            get
            {
                if (evento == null)
                {
                    evento = new eventos_pruebaEntities();
                }
                return evento;
            }
        }
    }
}
