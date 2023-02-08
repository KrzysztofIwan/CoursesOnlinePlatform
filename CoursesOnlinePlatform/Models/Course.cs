using System.Data.SqlTypes;

namespace CoursesOnlinePlatform.Models
{
    public class Course
    {
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Currency { get; set; }
        public string Language { get; set; }
        public string Level { get; set; }
        public string Description { get; set; }
    }
}
