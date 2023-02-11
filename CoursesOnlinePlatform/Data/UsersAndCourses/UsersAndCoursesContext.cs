using CoursesOnlinePlatform.Models;
using Microsoft.EntityFrameworkCore;

namespace CoursesOnlinePlatform.Data.UsersAndCourses
{
    public class UsersAndCoursesContext : DbContext
    {
        public UsersAndCoursesContext(DbContextOptions<UsersAndCoursesContext> options) : base(options) { }

        public DbSet<CoursesOnlinePlatform.Models.UserAndCourse> UsersAndCourses { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CoursesOnlinePlatform.Models.UserAndCourse>().ToTable("UsersAndCourses");
        }
    }
}