//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCSTOK.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_Urunler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Urunler()
        {
            this.Tbl_Satislar = new HashSet<Tbl_Satislar>();
        }
    
        public int UrunId { get; set; }
        public string UrunAd { get; set; }
        public string Marka { get; set; }
        public Nullable<short> UrunKategori { get; set; }
        public Nullable<decimal> Fiyat { get; set; }
        public Nullable<byte> Stok { get; set; }
    
        public virtual Tbl_Kategori Tbl_Kategori { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_Satislar> Tbl_Satislar { get; set; }
    }
}
