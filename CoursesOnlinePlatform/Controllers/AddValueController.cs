using Microsoft.AspNetCore.Mvc;

namespace CoursesOnlinePlatform.Controllers
{
    public class AddValueController : Controller
    {
        public IActionResult AddCourse() { return View(); }

        public IActionResult AddUser() { return View(); }

        public IActionResult AddLanguage() { return View(); }
    }
}
