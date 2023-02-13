using CoursesOnlinePlatform.Data.Courses;
using CoursesOnlinePlatform.Data.Users;
using CoursesOnlinePlatform.Data.Languages;
using CoursesOnlinePlatform.Data.UsersAndCourses;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using CoursesOnlinePlatform.Data;
using CoursesOnlinePlatform.Areas.Identity.Data;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddDefaultIdentity<CoursesOnlinePlatformUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddEntityFrameworkStores<CoursesOnlinePlatformDBContext>();

builder.Services.AddDbContext<CoursesOnlinePlatformDBContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("IdentityConntection")));

builder.Services.AddDbContext<CoursesContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DevConnection")));
builder.Services.AddDbContext<UsersContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DevConnection")));
builder.Services.AddDbContext<LanguagesContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DevConnection")));
builder.Services.AddDbContext<UsersAndCoursesContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DevConnection")));
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();


app.UseRouting();

app.UseAuthentication();;

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();

app.Run();
