using Earthbender.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;
using System.IO;
using Microsoft.EntityFrameworkCore.Migrations.Operations;

namespace Earthbender.ViewModels
{
    public class AddActionViewModel
    {
        private Services.DatabaseContext getContext()
        {
            return new Services.DatabaseContext();
        }

        public int InsertAction(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.ActionEB.Add(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }

        public async Task<List<Actions>> GetAllActions()
        {
            var _dbContext = getContext();
            var res = await _dbContext.ActionEB.ToListAsync();
            return res;
        }

        public async Task<int> UpdateActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.ActionEB.Update(obj);
            int c = await _dbContext.SaveChangesAsync();
            return c;
        }

        public int DeleteActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.ActionEB.Remove(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }

        public async Task<Actions> ViewAction(int id)
        {
            var _dbContext = getContext();
            var action = await _dbContext.ActionEB.FindAsync(id);
            return action;
        }
    }
}
