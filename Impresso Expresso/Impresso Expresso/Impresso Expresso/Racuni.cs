//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Impresso_Expresso
{
    using System;
    using System.Collections.Generic;
    
    public partial class Racuni
    {
        public Racuni()
        {
            this.Narudzbes = new HashSet<Narudzbe>();
        }
    
        public int ID { get; set; }
        public System.DateTime Datum { get; set; }
        public int KorisnikID { get; set; }
        public int KasaID { get; set; }
        public int PlacanjeID { get; set; }
    
        public virtual Kase Kase { get; set; }
        public virtual Korisnici Korisnici { get; set; }
        public virtual ICollection<Narudzbe> Narudzbes { get; set; }
        public virtual Placanja Placanja { get; set; }
    }
}