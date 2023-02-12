using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.SqlTypes;

namespace CoursesOnlinePlatform.Models
{
    public class UserAndCourse
    {
        [Key]
        public int Id { get; set; }
        public int User_Id { get; set; }
        public int Course_Id { get; set; }



    }
}