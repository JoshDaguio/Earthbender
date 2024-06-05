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

            lblTotalActions.Text = $"Total Actions: {totalActions}";
            lblFireActions.Text = $"Fire: {fireActions}";
            lblWaterActions.Text = $"Water: {waterActions}";
            lblAirActions.Text = $"Air: {airActions}";
            lblEarthActions.Text = $"Earth: {earthActions}";

            int dailyActions = actions.Count(a => a.Frequency == "Daily");
            int weeklyActions = actions.Count(a => a.Frequency == "Weekly");
            int monthlyActions = actions.Count(a => a.Frequency == "Monthly");
            int quarterlyActions = actions.Count(a => a.Frequency == "Quarterly");
            int yearlyActions = actions.Count(a => a.Frequency == "Yearly");

            lblDailyActions.Text = $"Daily Actions: {dailyActions}";
            lblWeeklyActions.Text = $"Weekly Actions: {weeklyActions}";
            lblMonthlyActions.Text = $"Monthly Actions: {monthlyActions}";
            lblQuarterlyActions.Text = $"Quarterly Actions: {quarterlyActions}";
            lblYearlyActions.Text = $"Yearly Actions: {yearlyActions}";

            int accumulatedPoints = Preferences.Get("AccumulatedPoints", 0);
            lblAccumulatedPoints.Text = $"Points Accumulated: {accumulatedPoints}";

            int firePoints = Preferences.Get("FirePoints", 0);
            int waterPoints = Preferences.Get("WaterPoints", 0);
            int airPoints = Preferences.Get("AirPoints", 0);
            int earthPoints = Preferences.Get("EarthPoints", 0);

            lblFirePoints.Text = $"Fire: {firePoints} points";
            lblWaterPoints.Text = $"Water: {waterPoints} points";
            lblAirPoints.Text = $"Air: {airPoints} points";
            lblEarthPoints.Text = $"Earth: {earthPoints} points";

            // Fetch badges data
            var badges = viewModel.GetUserBadges();
            var totalBadges = badges.Count;
            lblTotalBadges.Text = $"Badges Obtained: {totalBadges}";
        }
    }
}
