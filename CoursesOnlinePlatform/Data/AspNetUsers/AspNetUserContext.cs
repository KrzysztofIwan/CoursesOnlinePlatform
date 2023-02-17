using CoursesOnlinePlatform.Models;
using Microsoft.EntityFrameworkCore;

namespace CoursesOnlinePlatform.Data.AspNetUsersContext
{
    public class AspNetUsersContext : DbContext
    {
        public AspNetUsersContext(DbContextOptions<AspNetUsersContext> options) : base(options) { }

        public DbSet<AspNetUser> AspNetUsers { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AspNetUser>().ToTable("AspNetUsers");
        }
    }
}