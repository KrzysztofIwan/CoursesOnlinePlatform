using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoursesOnlinePlatform.Models
{
    public class Language
    {
        [Key]
        public string Name { get; set; }
        
    }
}
