using Earthbender.ViewModels;
using Earthbender.Models;
using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using System.Threading.Tasks;

namespace Earthbender.Views
{
    public partial class HomePage : ContentPage
    {
        AddActionViewModel viewModel;

        public HomePage()
        {
            InitializeComponent();
            viewModel = new AddActionViewModel();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await UpdateHomePageStatistics();
  

        }

        public async Task UpdateHomePageStatistics()
        {
            var actions = await viewModel.GetAllActions();

            int totalActions = actions.Count;
            int fireActions = actions.Count(a => a.Category == "Fire");
            int waterActions = actions.Count(a => a.Category == "Water");
            int airActions = actions.Count(a => a.Category == "Air");
            int earthActions = actions.Count(a => a.Category == "Earth");

            lblTotalActions.Text = $"{totalActions} Action/s"; //Total Actions
            lblFireActions.Text = $"{fireActions} Action/s"; //Fire Actions
            lblWaterActions.Text = $"{waterActions} Action/s"; //Water Actions
            lblAirActions.Text = $"{airActions} Action/s"; //Air Actions
            lblEarthActions.Text = $"{earthActions} Action/s"; //Earth Actions

            int dailyActions = actions.Count(a => a.Frequency == "Daily");
            int weeklyActions = actions.Count(a => a.Frequency == "Weekly");
            int monthlyActions = actions.Count(a => a.Frequency == "Monthly");
            int quarterlyActions = actions.Count(a => a.Frequency == "Quarterly");
            int yearlyActions = actions.Count(a => a.Frequency == "Yearly");

            lblDailyActions.Text = $"{dailyActions} Action/s"; //Daily Actions
            lblWeeklyActions.Text = $"{weeklyActions} Action/s"; //Weekly Actions
            lblMonthlyActions.Text = $"{monthlyActions} Action/s"; //Monthly Actions
            lblQuarterlyActions.Text = $"{quarterlyActions} Action/s"; //Quarterly Actions
            lblYearlyActions.Text = $"{yearlyActions} Action/s"; //Yearly Actions

            int accumulatedPoints = Preferences.Get("AccumulatedPoints", 0);
            lblAccumulatedPoints.Text = $"{accumulatedPoints} Point/s"; //Points Accumulated

            int firePoints = Preferences.Get("FirePoints", 0);
            int waterPoints = Preferences.Get("WaterPoints", 0);
            int airPoints = Preferences.Get("AirPoints", 0);
            int earthPoints = Preferences.Get("EarthPoints", 0);

            lblFirePoints.Text = $"{firePoints} point/s"; //Fire Points
            lblWaterPoints.Text = $"{waterPoints} point/s"; //Water Points
            lblAirPoints.Text = $"{airPoints} point/s"; //Air Points
            lblEarthPoints.Text = $"{earthPoints} point/s"; //Earth Points

            var badges = viewModel.GetUserBadges();
            var totalBadges = badges.Count;
            lblTotalBadges.Text = $"{totalBadges} Badge/s"; //Badges
        }
    }
}
