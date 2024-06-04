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

    }
}