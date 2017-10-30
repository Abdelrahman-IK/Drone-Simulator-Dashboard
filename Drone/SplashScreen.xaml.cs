using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Drone
{
    /// <summary>
    /// Interaction logic for SplashScreen.xaml
    /// </summary>
    public partial class SplashScreen : Window
    {
        public SplashScreen()
        {
            InitializeComponent();
        }
        private void move(object sender,MouseButtonEventArgs e)
        {
            DragMove();
        }
        private void OnKeyDownHandler(object sender,KeyEventArgs e)
        {
            if(e.Key ==Key.X)
            {
                var window = new MainWindow();
                window.Show();
                this.Close();
            }
        }
    }
}
