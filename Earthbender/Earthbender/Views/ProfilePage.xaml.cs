using Earthbender.ViewModels;
using System;
using System.ComponentModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Earthbender.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfilePage : ContentPage
    {
        AddActionViewModel viewModel;

        public ProfilePage()
        {
            InitializeComponent();
            viewModel = new AddActionViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            LoadProfileData();
        }

        private void LoadProfileData()
        {
            // Fetch badges
            var badges = viewModel.GetUserBadges();

            // Update ListView
            lstBadges.ItemsSource = badges;
        }

        private void btnReset_Clicked(object sender, EventArgs e)
        {
            ResetPointsAndBadges();
        }

        private void ResetPointsAndBadges()
        {
            // Reset accumulated points
            Preferences.Set("AccumulatedPoints", 0);

            // Reset points per category
            string[] categories = { "Fire", "Water", "Air", "Earth" };
            foreach (var category in categories)
            {
                Preferences.Set(category + "Points", 0);
            }

            // Reset badges obtained
            Preferences.Set("Badges", "");


            // Refresh profile page
            LoadProfileData();

            DisplayAlert("Success", "Points and badges have been reset successfully.", "OK");
        }
    }
}