using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCSTOK.Models.Entity;
namespace MVCSTOK.Controllers
{
    public class UrunlerController : Controller
    {
        // GET: Urunler
        MvcDbStokEntities1 db = new MvcDbStokEntities1();
        public ActionResult Index()
        {
            var item = db.Tbl_Urunler.ToList();
            return View(item);
        }
        [HttpGet]
        public ActionResult YENIURUN()
        {
            List<SelectListItem> degerler = (from i in db.Tbl_Kategori.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KategoriAd,
                                                 Value = i.KategoriId.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View();
        }
        [HttpPost]
        public ActionResult YENIURUN(Tbl_Urunler parameter)
        {
            var ktgr = db.Tbl_Kategori.Where(m => m.KategoriId == parameter.Tbl_Kategori.KategoriId).FirstOrDefault();
            parameter.Tbl_Kategori = ktgr;
            db.Tbl_Urunler.Add(parameter);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult SIL(int id)
        {
            var urunsil = db.Tbl_Urunler.Find(id);
            db.Tbl_Urunler.Remove(urunsil);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult UrunGetir(int id)
        {
            var urungetir = db.Tbl_Urunler.Find(id);
            List<SelectListItem> degerler = (from i in db.Tbl_Kategori.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KategoriAd,
                                                 Value = i.KategoriId.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View("UrunGetir", urungetir);
        }
        public ActionResult Guncelle(Tbl_Urunler parameter)
        {
           

            var urun = db.Tbl_Urunler.Find(parameter.UrunId);
            var kgtr = db.Tbl_Kategori.Where(m => m.KategoriId == parameter.Tbl_Kategori.KategoriId).FirstOrDefault();
            urun.Tbl_Kategori = kgtr;
            urun.UrunAd = parameter.UrunAd;
            urun.Marka = parameter.Marka;
            //urun.UrunKategori = parameter.UrunKategori;
            urun.Fiyat = parameter.Fiyat;
            urun.Stok = parameter.Stok;
            db.SaveChanges();
            return RedirectToAction("Index");

        }
    }
}