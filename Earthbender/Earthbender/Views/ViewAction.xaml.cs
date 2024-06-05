using Earthbender.Models;
using Earthbender.ViewModels;
using Earthbender.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Net.WebSockets;
using Xamarin.Essentials;


namespace Earthbender.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ViewAction : ContentPage
    {
        AddActionViewModel viewModel;
        private DatabaseContext _dbContext;
        private string actionCode;
        int actionId;

        public ViewAction(Actions action)
        {
            InitializeComponent();
            _dbContext = new DatabaseContext(); ;
            actionId = action.Id;
            DisplayAction(action);
            viewModel = new AddActionViewModel();
        }

        private void DisplayAction(Actions action)
        {
            lblActionCode.Text = action.ActionCode;
            lblDescription.Text = action.Description;
            lblCategory.Text = action.Category;
            lblImpactLvl.Text = action.ImpactLevel;
            lblImpactDesc.Text = action.ImpactDescription;
            lblFrequency.Text = action.Frequency;
        }

        private async void btnUpdate_Clicked(object sender, EventArgs e)
        {
            Actions obj = new Actions
            {
                Id = actionId,
                Description = lblDescription.Text,
                Category = lblCategory.Text,
                ImpactLevel = lblImpactLvl.Text,
                ImpactDescription = lblImpactDesc.Text,
                Frequency = lblFrequency.Text
            };

            await this.Navigation.PushAsync(new AddActions(obj));
        }

        private async void btnDelete_Clicked(object sender, EventArgs e)
        {
            bool confirm = await DisplayAlert("Delete", "Are you sure you want to delete this action?", "Yes", "No");
            if (confirm)
            {
                Actions obj = new Actions { Id = actionId };
                viewModel.DeleteActions(obj);

                await DisplayAlert("Success", "Action deleted successfully.", "OK");
                await this.Navigation.PopAsync();
            }
        }

        private int CalculatePoints(string impactLevel)
        {
            switch (impactLevel)
            {
                case "Low":
                    return 1;
                case "Medium":
                    return 3;
                case "High":
                    return 5;
                default:
                    return 0;
            }
        }

        private async void btnAddPoint_Clicked(object sender, EventArgs e)
        {
            Actions action = await viewModel.ViewAction(actionId);
            int points = CalculatePoints(action.ImpactLevel);

            // Update accumulated points
            int currentPoints = Preferences.Get("AccumulatedPoints", 0);
            Preferences.Set("AccumulatedPoints", currentPoints + points);

            // Update points per category
            int currentCategoryPoints = Preferences.Get(action.Category + "Points", 0);
            Preferences.Set(action.Category + "Points", currentCategoryPoints + points);

            // Check and assign badges
            viewModel.CheckAndAssignBadges();

            await DisplayAlert("Success", "Point added successfully.", "OK");
        }


    }
}