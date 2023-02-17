using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.SqlTypes;

namespace CoursesOnlinePlatform.Models
{
    public class AspNetUser
    {
        [Key]
        [Column(TypeName = "nvarchar(450)")]
        public string Id { get; set; }
        [Column(TypeName = "nvarchar(MAX)")]

        public string FirstName { get; set; }
        [Column(TypeName = "nvarchar(MAX)")]
        public string LastName { get; set; }
        [Column(TypeName = "nvarchar(256)")]
        public string UserName { get; set; }
        [Column(TypeName = "nvarchar(256)")]
        public string NormalizedUserName { get; set; }
        [Column(TypeName = "nvarchar(256)")]
        public string Email { get; set; }

        [Column(TypeName = "nvarchar(256)")]
        public string NormalizedEmail { get; set; }

        [Column(TypeName = "bit")]
        public bool EmailConfirmed { get; set; }

        [Column(TypeName = "nvarchar(MAX)")]
        public string PasswordHash { get; set; }

        [Column(TypeName = "nvarchar(MAX)")]
        public string SecurityStamp { get; set; }

        [Column(TypeName = "nvarchar(MAX)")]
        public string ConcurrencyStamp { get; set; }
        [Column(TypeName = "nvarchar(MAX)")]
        public string PhoneNumber { get; set; }

        [Column(TypeName = "bit")]
        public bool PhoneNumberConfirmed { get; set; }

        [Column(TypeName = "bit")]
        public bool TwoFactorEnabled { get; set; }
        [NotMapped]
        [Column(TypeName = "datetimeoffset(7)")]
        public DateTimeOffset LockoutEnd { get; set; }

        [Column(TypeName = "bit")]
        public bool LockoutEnabled { get; set; }

        [Column(TypeName = "int")]
        public int AccessFailedCount { get; set; }
    }
}
