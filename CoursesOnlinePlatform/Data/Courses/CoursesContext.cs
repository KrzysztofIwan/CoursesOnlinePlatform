using CoursesOnlinePlatform.Models;
using Microsoft.EntityFrameworkCore;

namespace CoursesOnlinePlatform.Data.Courses
{
    public class CoursesContext : DbContext
    {
        public CoursesContext(DbContextOptions<CoursesContext> options) : base(options) { }

        public DbSet<Course> Courses { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Course>().ToTable("Courses");
        }
    }
}
