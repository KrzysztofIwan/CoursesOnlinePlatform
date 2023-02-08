namespace CoursesOnlinePlatform.Models
{
    public class User
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }   
        public string Password { get; set; }
        public DateOnly DateOfBirth { get; set; }
        public string Access { get; set; }
    }
}
