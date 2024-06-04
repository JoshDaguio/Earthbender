using Earthbender.Models;
using System;
using System.Collections.Generic;
using System.Text;

using Microsoft.EntityFrameworkCore;
using System.IO;
namespace Earthbender.Services
{
    public class DatabaseContext:DbContext
    {
        public DbSet<Actions> ActionEB { get; set; }

        public DatabaseContext()
        {
            this.Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), "ActionEB.db");
            optionsBuilder.UseSqlite($"Filename={dbPath}");
        }

    }
}
