using Earthbender.ViewModels;
using System;
using System.ComponentModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.IO;
using Earthbender.Models;
using System.Net.Http;
using System.Threading.Tasks;

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
      
        //badge tap download
        private async void OnBadgeTapped(object sender, ItemTappedEventArgs e)
        {
            if (e.Item is Badge badge)
            {
                bool download = await DisplayAlert("Download Badge", $"Would you like to download the {badge.Name}?", "Yes", "No");
                if (download)
                {
                    await DownloadImageAsync(badge.ImageUrl, badge.Name);
                }
            }
        }

        private async Task DownloadImageAsync(string imageUrl, string imageName)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    var response = await client.GetAsync(imageUrl);
                    if (response.IsSuccessStatusCode)
                    {
                        using (var stream = await response.Content.ReadAsStreamAsync())
                        {
                            using (MemoryStream memoryStream = new MemoryStream())
                            {
                                await stream.CopyToAsync(memoryStream);
                                byte[] imageBytes = memoryStream.ToArray();
                                var filePath = Path.Combine(FileSystem.AppDataDirectory, imageName + ".jpg");
                                File.WriteAllBytes(filePath, imageBytes);

                                await Share.RequestAsync(new ShareFileRequest
                                {
                                    Title = "Download Achievement Image",
                                    File = new ShareFile(filePath)
                                });
                            }
                        }
                    }
                    else
                    {
                        await DisplayAlert("Error", "Image not found", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
    }
}