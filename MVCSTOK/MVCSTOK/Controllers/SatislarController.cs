using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCSTOK.Models.Entity;
namespace MVCSTOK.Controllers
{
    public class SatislarController : Controller
    {
        // GET: Satislar
        MvcDbStokEntities1 db = new MvcDbStokEntities1();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Satislar()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Satislar(Tbl_Satislar p)
        {
            if (!ModelState.IsValid)
            {
                return View("Index");
            }
            db.Tbl_Satislar.Add(p);
            db.SaveChanges();
            return View("Index");
        }
    }
}