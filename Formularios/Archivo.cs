using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Formularios
{
    public class Archivo
    { 
        public string name { get; set; }
        public string path { get; set; }
        public Archivo(string name, string path) { 
            this.name = name;
            this.path = path;
        }
    }
}