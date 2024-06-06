using Earthbender.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Threading.Tasks;

using Microsoft.EntityFrameworkCore;
using System.IO;
using Microsoft.EntityFrameworkCore.Migrations.Operations;
using Xamarin.Essentials;

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
            _dbContext.ActionEarthBender.Add(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }

        public async Task<List<Actions>> GetAllActions()
        {
            var _dbContext = getContext();
            var res = await _dbContext.ActionEarthBender.ToListAsync();
            return res;
        }

        public async Task<int> UpdateActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.ActionEarthBender.Update(obj);
            int c = await _dbContext.SaveChangesAsync();
            return c;
        }

        public int DeleteActions(Actions obj)
        {
            var _dbContext = getContext();
            _dbContext.ActionEarthBender.Remove(obj);
            int c = _dbContext.SaveChanges();
            return c;
        }

        public async Task<Actions> ViewAction(int id)
        {
            var _dbContext = getContext();
            var action = await _dbContext.ActionEarthBender.FindAsync(id);
            return action;
        }

        public void CheckAndAssignBadges()
        {
            int accumulatedPoints = Preferences.Get("AccumulatedPoints", 0);
            List<Badge> badges = new List<Badge>();

            if (accumulatedPoints >= 20)
            {
                badges.Add(new Badge { Name = "Avatar Badge", Description = "Earned 20 Total Points", ImageUrl = "https://ih1.redbubble.net/image.1262029934.5194/st,small,507x507-pad,600x600,f8f8f8.jpg" });
            }

            string[] categories = { "Fire", "Water", "Air", "Earth" };
            foreach (var category in categories)
            {
                int categoryPoints = Preferences.Get(category + "Points", 0);
                if (categoryPoints >= 5)
                {
                    // Set image URLs based on category
                    string imageUrl = "";
                    switch (category)
                    {
                        case "Fire":
                            imageUrl = "https://static.wikia.nocookie.net/avatar/images/4/4b/Firebending_emblem.png/revision/latest?cb=20230412000430";
                            break;
                        case "Water":
                            imageUrl = "https://static.wikia.nocookie.net/avatar/images/5/50/Waterbending_emblem.png/revision/latest?cb=20230412000516";
                            break;
                        case "Air":
                            imageUrl = "https://static.wikia.nocookie.net/avatar/images/8/82/Airbending_emblem.png/revision/latest?cb=20230412000157";
                            break;
                        case "Earth":
                            imageUrl = "https://static.wikia.nocookie.net/avatar/images/e/e4/Earthbending_emblem.png/revision/latest?cb=20230412000410";
                            break;
                        default:
                            imageUrl = ""; // Set a default image URL if needed
                            break;
                    }

                    badges.Add(new Badge { Name = $"{category} Bender Badge", Description = $"Earned 5 Points in {category}", ImageUrl = imageUrl });
                }
            }

            // Store badges in preferences or any other suitable storage
            Preferences.Set("Badges", string.Join(",", badges.Select(b => b.Name)));
        }

        public List<Badge> GetUserBadges()
        {
            var badges = Preferences.Get("Badges", "")
                                    .Split(',')
                                    .Where(b => !string.IsNullOrEmpty(b))
                                    .Select(b => new Badge
                                    {
                                        Name = b,
                                        Description = GetDescription(b),
                                        ImageUrl = GetImageUrl(b)
                                    }).ToList();
            return badges;
        }

        private string GetDescription(string badgeName)
        {
            switch (badgeName)
            {
                case "Avatar Badge":
                    return "Earned 20 Total Points";
                case "Fire Bender Badge":
                    return "Earned 5 Points in Fire";
                case "Water Bender Badge":
                    return "Earned 5 Points in Water";
                case "Air Bender Badge":
                    return "Earned 5 Points in Air";
                case "Earth Bender Badge":
                    return "Earned 5 Points in Earth";
                default:
                    return string.Empty;
            }
        }

        private string GetImageUrl(string badgeName)
        {
            switch (badgeName)
            {
                case "Avatar Badge":
                    return "https://ih1.redbubble.net/image.1262029934.5194/st,small,507x507-pad,600x600,f8f8f8.jpg";
                case "Fire Bender Badge":
                    return "https://static.wikia.nocookie.net/avatar/images/4/4b/Firebending_emblem.png/revision/latest?cb=20230412000430";
                case "Water Bender Badge":
                    return "https://static.wikia.nocookie.net/avatar/images/5/50/Waterbending_emblem.png/revision/latest?cb=20230412000516";
                case "Air Bender Badge":
                    return "https://static.wikia.nocookie.net/avatar/images/8/82/Airbending_emblem.png/revision/latest?cb=20230412000157";
                case "Earth Bender Badge":
                    return "https://static.wikia.nocookie.net/avatar/images/e/e4/Earthbending_emblem.png/revision/latest?cb=20230412000410";
                default:
                    return string.Empty;
            }
        }

    }
}
