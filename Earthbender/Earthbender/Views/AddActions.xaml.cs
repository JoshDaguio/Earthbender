using Earthbender.ViewModels;
using Earthbender.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Xml.Linq;

namespace Earthbender.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddActions : ContentPage
    {
        AddActionViewModel _viewModel;
        bool _isUpdate;
        int actionID;

        public AddActions()
        {
            InitializeComponent();

            _viewModel = new AddActionViewModel();
            _isUpdate = false;
        }

        public AddActions(Actions obj)
        {
            InitializeComponent();
            _viewModel = new AddActionViewModel();
            if (obj != null)
            {
                actionID = obj.Id;
                txtDescription.Text = obj.Description;
                txtImpactLvl.Text = obj.ImpactLevel;
                txtImpactDesc.Text = obj.ImpactDescription;
                txtFrequency.Text = obj.Frequency;
                _isUpdate |= true;
            }
            if (txtCategory.ItemsSource is IList<string> categories)
            {
                txtCategory.SelectedItem = categories.FirstOrDefault(c => c == obj.Category);
            }
        }

        private async void btnSaveUpdate_Clicked(object sender, EventArgs e)
        {
            Actions obj = new Actions();
            obj.Description = txtDescription.Text;
            obj.Category = (string)txtCategory.SelectedItem;
            obj.ImpactLevel = txtImpactLvl.Text;
            obj.ImpactDescription = txtImpactDesc.Text;
            obj.Frequency = txtFrequency.Text;

            if (_isUpdate)
            {
                obj.Id = actionID;
                await _viewModel.UpdateActions(obj);

            }
            else
            {
                _viewModel.InsertAction(obj);
            }


            await this.Navigation.PopAsync();
        }

        private async void btnCancel_Clicked(object sender, EventArgs e)
        {
            await this.Navigation.PopAsync();
        }
    }
}