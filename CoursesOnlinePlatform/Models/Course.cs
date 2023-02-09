using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.SqlTypes;

namespace CoursesOnlinePlatform.Models
{
    public class Course
    {
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "varchar(100)")]
        public string Name { get; set; }
        [Column(TypeName = "decimal")]
        public decimal Price { get; set; }
        [Column(TypeName = "varchar(3)")]
        public string Currency { get; set; }
        [Column(TypeName = "varchar(20)")]
        public string Language { get; set; }
        [Column(TypeName = "varchar(30)")]
        public string Level { get; set; }
        [Column(TypeName = "varchar(200)")]
        public string Description { get; set; }
    }
}
