using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace restorangiris
{
    class Masa
    {
        public int Id { get; set; }

        public string MasaKodu { get; set; }

        public string MasaAdi { get; set; }

        public List<UrunHareket> Hareketler { get; set; }
    }
}
