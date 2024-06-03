using Earthbender.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace Earthbender.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}