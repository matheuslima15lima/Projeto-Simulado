using Microsoft.AspNetCore.Mvc;
using sistema.Contexts;

namespace sistema.Controllers
{
    public class AtividadeController : Controller
    {
        private readonly SistemaContext _context;

        public AtividadeController(SistemaContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            int? atividadeId = HttpContext.Session.GetInt32("AtividadeId");
            int? turmaId = HttpContext.Session.GetInt32("turmaId");
            if(atividadeId == null)
            {
                return RedirectToAction("Index", "Login");
            }

            var turmas = _context.Turmas.Find(turmaId);

            var atividades = _context.Atividades.Where(a=> a.TurmaId == turmaId).ToList();

            ViewBag.DescricaoAtividade = atividades!.descr

           
        }
    }
}
