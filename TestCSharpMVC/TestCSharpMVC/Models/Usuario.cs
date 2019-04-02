using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TestCSharpMVC.Models
{
    [Table("userTable")]
    public class Usuario
    {
        [Key]
        [Column("userId")]
        public int Id { get; set; }

        [Column("userName")]
        public String UsuarioName { get; set; }

        [Column("userLastName")]
        public String UsuarioLastName { get; set; }

        [Column("userPw")]
        public String UsuarioPw { get; set; }

        [Column("userPhase")]
        public String UsuarioPhase { get; set; }

    }


    public class UsuarioContext : DbContext {
        public DbSet<Usuario> Usuarios { get; set; }
    }
    
}