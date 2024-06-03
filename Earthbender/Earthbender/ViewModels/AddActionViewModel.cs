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
            _dbContext.Actions.Add(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }

        public async Task<List<Actions>> GetAllActions()
        {
            var _dbContext = getContext();
            var res = await _dbContext.Actions.ToListAsync();
            return res;
        }

        public async Task<int> UpdateActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.Actions.Update(obj);
            int c = await _dbContext.SaveChangesAsync();
            return c;
        }

        public int DeleteActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.Actions.Remove(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }
    }
}
