using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CoursesOnlinePlatform.Data.UsersAndCourses;
using CoursesOnlinePlatform.Models;

namespace CoursesOnlinePlatform.Controllers
{
    public class UsersAndCoursesController : Controller
    {
        private readonly UsersAndCoursesContext _context;

        public UsersAndCoursesController(UsersAndCoursesContext context)
        {
            _context = context;
        }

        // GET: UserAndCourses
        public async Task<IActionResult> Index()
        {
              return View(await _context.UsersAndCourses.ToListAsync());
        }

        // GET: UserAndCourses/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.UsersAndCourses == null)
            {
                return NotFound();
            }

            var userAndCourse = await _context.UsersAndCourses
                .FirstOrDefaultAsync(m => m.Id == id);
            if (userAndCourse == null)
            {
                return NotFound();
            }

            return View(userAndCourse);
        }

        // GET: UserAndCourses/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: UserAndCourses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("User_Id,Course_Id")] UserAndCourse userAndCourse)
        {
            if (ModelState.IsValid)
            {
                _context.Add(userAndCourse);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(userAndCourse);
        }

        // GET: UserAndCourses/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.UsersAndCourses == null)
            {
                return NotFound();
            }

            var userAndCourse = await _context.UsersAndCourses.FindAsync(id);
            if (userAndCourse == null)
            {
                return NotFound();
            }
            return View(userAndCourse);
        }

        // POST: UserAndCourses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("User_Id,Course_Id")] UserAndCourse userAndCourse)
        {
            if (id != userAndCourse.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(userAndCourse);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!UserAndCourseExists(userAndCourse.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(userAndCourse);
        }

        // GET: UserAndCourses/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.UsersAndCourses == null)
            {
                return NotFound();
            }

            var userAndCourse = await _context.UsersAndCourses
                .FirstOrDefaultAsync(m => m.Id == id);
            if (userAndCourse == null)
            {
                return NotFound();
            }

            return View(userAndCourse);
        }

        // POST: UserAndCourses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.UsersAndCourses == null)
            {
                return Problem("Entity set 'UsersAndCoursesContext.UsersAndCourses'  is null.");
            }
            var userAndCourse = await _context.UsersAndCourses.FindAsync(id);
            if (userAndCourse != null)
            {
                _context.UsersAndCourses.Remove(userAndCourse);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool UserAndCourseExists(int id)
        {
          return _context.UsersAndCourses.Any(e => e.Id == id);
        }
    }
}
