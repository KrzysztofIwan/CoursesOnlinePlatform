﻿using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.SqlTypes;

namespace CoursesOnlinePlatform.Models
{
    public class UserAndCourse
    {
        [Key]//[Column(Order = 0)]
        public int User_Id { get; set; }
        //[Key][Column(Order = 1)]
        public int Course_Id { get; set; }



    }
}