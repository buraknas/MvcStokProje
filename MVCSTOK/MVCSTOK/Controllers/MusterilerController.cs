using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCSTOK.Models.Entity;
namespace MVCSTOK.Controllers
{
    public class MusterilerController : Controller
    {
        // GET: Musteriler
        MvcDbStokEntities1 db = new MvcDbStokEntities1();
        public ActionResult Index(String p)
        {
            //var item = db.Tbl_Musteri.ToList();
            //return View(item);
            var degerler= from d in db.Tbl_Musteri select d;
            if(!string.IsNullOrEmpty(p))
            {
                degerler = degerler.Where(m => m.MusteriAd.Contains(p));
            }
            return View(degerler.ToList());
        }
        [HttpGet]
        public ActionResult MusteriEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult MusteriEkle(Tbl_Musteri parameter)
        {
            if(!ModelState.IsValid)
            {
                return View("MusteriEkle");
            }
            db.Tbl_Musteri.Add(parameter);
            db.SaveChanges();
            return View();
        }
        public ActionResult SIL(int id)
        {
            var musterisil = db.Tbl_Musteri.Find(id);
            db.Tbl_Musteri.Remove(musterisil);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult MusteriGetir(int id)
        {
            var musterigetir = db.Tbl_Musteri.Find(id);
            return View("MusteriGetir", musterigetir);
        }
        public ActionResult Guncelle(Tbl_Musteri parameter)
        {
            var musteri = db.Tbl_Musteri.Find(parameter.MusteriId);
            musteri.MusteriAd = parameter.MusteriAd;
            musteri.MusteriSoyad = parameter.MusteriSoyad;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}