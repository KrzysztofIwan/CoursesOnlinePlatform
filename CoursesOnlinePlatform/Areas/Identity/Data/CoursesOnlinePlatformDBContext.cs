using CoursesOnlinePlatform.Areas.Identity.Data;
using CoursesOnlinePlatform.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Reflection.Emit;

namespace CoursesOnlinePlatform.Data;

public class CoursesOnlinePlatformDBContext : IdentityDbContext<CoursesOnlinePlatformUser>
{
    public CoursesOnlinePlatformDBContext(DbContextOptions<CoursesOnlinePlatformDBContext> options)
        : base(options)
    {
    }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // modelBuilder.Entity<User>().ToTable("Users");
        base.OnModelCreating(modelBuilder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
    }

    private class ApplicationUserEntityConfiguration : IEntityTypeConfiguration<CoursesOnlinePlatformUser>
    {
        public void Configure(EntityTypeBuilder<CoursesOnlinePlatformUser> builder)
        {
            builder.Property(x => x.FirstName).HasMaxLength(255);
            builder.Property(x => x.LastName).HasMaxLength(255);
            builder.Property(x => x.PhoneNumber).HasMaxLength(255);
        }
    }
}
