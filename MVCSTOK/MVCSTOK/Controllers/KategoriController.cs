using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCSTOK.Models.Entity;
using PagedList;
using PagedList.Mvc;
namespace MVCSTOK.Controllers
{
    public class KategoriController : Controller
    {
        // GET: Kategori
        MvcDbStokEntities1 db = new MvcDbStokEntities1();
        public ActionResult Index(int sayfa=1)
        {
            var degerler = db.Tbl_Kategori.ToList().ToPagedList(sayfa,4);
            return View(degerler);
            
        }
        [HttpGet]
        public ActionResult YENIKATEGORI()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YENIKATEGORI(Tbl_Kategori parameter)
        {

            if (!ModelState.IsValid)
            {
                return View("YENIKATEGORI");
            }
            db.Tbl_Kategori.Add(parameter);
            db.SaveChanges();
            return View();
        }
        public ActionResult SIL(int id)
        {
            var kategorisil = db.Tbl_Kategori.Find(id);
            db.Tbl_Kategori.Remove(kategorisil);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult KategoriGetir(int id)
        {
            var kategorigetir = db.Tbl_Kategori.Find(id);
            return View("KategoriGetir",kategorigetir);
        }
        public ActionResult Guncelle(Tbl_Kategori parameter)
        {
            var ktgr=db.Tbl_Kategori.Find(parameter.KategoriId);
            ktgr.KategoriAd = parameter.KategoriAd;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}