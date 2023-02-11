using CoursesOnlinePlatform.Models;
using Microsoft.EntityFrameworkCore;

namespace CoursesOnlinePlatform.Data.Languages
{
    public class LanguagesContext : DbContext
    {
        public LanguagesContext(DbContextOptions<LanguagesContext> options) : base(options) { }

        public DbSet<CoursesOnlinePlatform.Models.Language> Languages { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CoursesOnlinePlatform.Models.Language>().ToTable("Languages");
        }
    }
}
