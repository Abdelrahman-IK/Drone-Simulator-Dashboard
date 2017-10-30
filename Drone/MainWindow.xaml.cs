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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Telerik.Windows.Controls.Map;
using Microsoft.Maps.MapControl.WPF;
using System.Windows.Threading;
using Newtonsoft.Json;
using System.Net.Http;
using System.Media;

namespace Drone
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int airspeed = 0;
        double pitchAngle = 0;
        int rotateAngle = 0;
        double yaw = 0;
        double lat = 30.0201587;
        double lon = 31.2095643;
        DispatcherTimer timer;
        DispatcherTimer timer2;
        System.Text.StringBuilder log_append_txt = new System.Text.StringBuilder();
        System.Text.StringBuilder Service_log_append_txt = new System.Text.StringBuilder();
        bool service_trigger = false;
        int warning_flag = 0;

       
        public MainWindow()
        {
            InitializeComponent();
            timer = new DispatcherTimer();
            timer.Tick += new EventHandler(timer_Tick);
            timer.Interval = new TimeSpan(0, 0, 0, 1);
            timer.Start();
            timer2 = new DispatcherTimer();
            timer2.Tick += new EventHandler(timer_Tick2);
            timer2.Interval = new TimeSpan(0, 0, 0, 0,1);
            timer2.Start();
            map_warning_rec.Visibility = Visibility.Collapsed;
            map_warning_txt.Visibility = Visibility.Collapsed;

        }
        
       //async void service_request()
       // {
       //     string url = "JSON HERE" + "lat="+aircraft_pushpin.Location.Latitude+"&"+"long="+aircraft_pushpin.Location.Longitude;
       //     HttpClient client = new HttpClient();
       //  //   string str = await client.GetStringAsync(new Uri(url));
       //  //   string str2 = await client.GetStringAsync(new Uri(url));
       //     RootObject data = JsonConvert.DeserializeObject<RootObject>(str);
       //     Warning warn = JsonConvert.DeserializeObject<Warning>(str2);
       //     weather_data_txt.Text = "Temperature                    " + data.temp.ToString() + "\nHumidity               " + data.humidity.ToString() + "\nWind Speed        " + data.wind_speed.ToString() + "\nWind direction       " + data.wind_direction.ToString()+ "\nDew Point             "+data.dew_point.ToString()+ "\nPressure                 "+data.pressure.ToString()+ "\nVisibility                "+data.visibility.ToString();
       //     service_trigger = false;
       //     warning_flag = int.Parse(data.warning.code.ToString());
          
       // }

        void timer_Tick(object sender, EventArgs e)
        {

            log_append_txt.Append("Latitude: "+aircraft_pushpin.Location.Latitude+" Longitude: "+aircraft_pushpin.Location.Longitude+" Air Speed: "+airspeed_value.Value+" at Time "+ DateTime.Now.ToString() + "\n");
            Drone_logs_txt.Text = log_append_txt.ToString();
            Drone_logs_txt.ScrollToEnd();
           
          //  service_request();
            if (service_trigger == false)
            {
                Service_log_append_txt.Append("Request: Check for current location? " + "\n\n");
                service_trigger = true;
               // service_request();
            }
            if (service_trigger == true)
            {
                if (warning_flag == 0)
                {
                    Service_log_append_txt.Append("Response: Location is Clear " + "\n\n");
                 Service_Logs_txt.Foreground = new SolidColorBrush(Colors.Green);
                    weather_data_txt.Foreground = new SolidColorBrush(Colors.Green);
                    map_warning_rec.Visibility = Visibility.Collapsed;
                    map_warning_txt.Visibility = Visibility.Collapsed;
                }
                else if (warning_flag == 1)
                {
                    Service_log_append_txt.Append("Response: Location is A NO FLY-AREA Please Return " + "\n\n");
                    Service_Logs_txt.Foreground = new SolidColorBrush(Colors.Red);
                    weather_data_txt.Foreground = new SolidColorBrush(Colors.Green);
                    map_warning_txt.Visibility = Visibility.Visible;
                    map_warning_rec.Visibility = Visibility.Visible;
                    map_warning_txt.Text = "NO-FLY ZONE";
                }
                else if(warning_flag == 2)
                {
                    Service_log_append_txt.Append("Response: Location is A BAD WEATHER AREA Please Return " + "\n\n");
                    weather_data_txt.Foreground = new SolidColorBrush(Colors.Red);
                    Service_Logs_txt.Foreground = new SolidColorBrush(Colors.Green);
                    map_warning_txt.Visibility = Visibility.Visible;
                    map_warning_rec.Visibility = Visibility.Visible;
                    map_warning_txt.Text = "BAD WEATHER ZONE";
                }
                service_trigger = false;
            }
            Service_Logs_txt.Text = Service_log_append_txt.ToString();
            Service_Logs_txt.ScrollToEnd();

        }
        void timer_Tick2(object sender, EventArgs e)
        {

            if (airspeed_value.Value > 0)
            {
                pushpin_move_forward(airspeed_value.Value);
            }
            if(yaw_sensor.Value >0 && airspeed_value.Value>50)
            {
                pushpin_move_right(yaw_sensor.Value);
            }
             if(yaw_sensor.Value < 0&& airspeed_value.Value>50)
            {
                pushpin_move_left(-yaw_sensor.Value);
            }

        }
    
        
        private void OnKeyDownHandler(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.W)
            {
                if (airspeed<= 800)
                {
                    airspeed_value.Value = airspeed;
                    airspeed += 3;
                }
            }
            if(e.Key == Key.S)
            {
                if (airspeed >= 0)
                {
                    airspeed_value.Value = airspeed;
                    airspeed -= 3;
                }
            }
            if(e.Key == Key.Down)
            {
               // service_request();
                if (pitchAngle < 80)
                {
                    pitch_angle.Value = pitchAngle;
                    pitchAngle+=0.5;
                }
                
            }
            if(e.Key == Key.Up)
            {
                if(pitchAngle>-80)
                {
                    pitch_angle.Value = pitchAngle;
                    pitchAngle-=0.5;
                }
            }
            if(e.Key == Key.Right)
            {
                RotateTransform rotateTransform = new RotateTransform(rotateAngle);
                aircraft.RenderTransform = rotateTransform;
                rotateAngle += 1;
            }
            if (e.Key == Key.Left)
            {
                RotateTransform rotateTransform = new RotateTransform(rotateAngle);
                aircraft.RenderTransform = rotateTransform;
                rotateAngle -= 1;
            }
            if (e.Key == Key.A)
            {
                if (yaw > -1)
                {
                    yaw_sensor.Value = yaw;
                    yaw -= 0.005;
                }
            }
            if (e.Key == Key.D)
            {
                if (yaw < 1)
                {
                    yaw_sensor.Value = yaw;
                    yaw += 0.005;
                }
            }
            if (e.Key == Key.I)
            {
                pushpin_move_forward(1000);
            }
            if (e.Key == Key.K)
            {
                pushpin_move_backward(1000);
            }

            if (e.Key == Key.L)
            {
                pushpin_move_right(1);
            }
            if (e.Key == Key.J)
            {
                pushpin_move_left(1);
            }

        }
       void pushpin_move_forward(double value)
        {
            Microsoft.Maps.MapControl.WPF.Pushpin pinn = new Microsoft.Maps.MapControl.WPF.Pushpin();
            pinn.Location = new Microsoft.Maps.MapControl.WPF.Location();
            lat += value/1000000;
            aircraft_pushpin.Location.Latitude = lat;
            pinn.Location.Longitude = aircraft_pushpin.Location.Longitude;
            pinn.Location.Latitude = lat;
            map.Children.Clear();
            map.Children.Add(pinn);
            map.Center = pinn.Location;
        }
        void pushpin_move_backward(double value)
        {
            Microsoft.Maps.MapControl.WPF.Pushpin pinn = new Microsoft.Maps.MapControl.WPF.Pushpin();
            pinn.Location = new Microsoft.Maps.MapControl.WPF.Location();
            lat -= value / 1000000;
            aircraft_pushpin.Location.Latitude = lat;
            pinn.Location.Longitude = aircraft_pushpin.Location.Longitude;
            pinn.Location.Latitude = lat;
            map.Children.Clear();
            map.Children.Add(pinn);
            map.Center = pinn.Location;
        }

        void pushpin_move_right(double value)
        {
            Microsoft.Maps.MapControl.WPF.Pushpin pinn = new Microsoft.Maps.MapControl.WPF.Pushpin();
            pinn.Location = new Microsoft.Maps.MapControl.WPF.Location();
            lon += value/1000;
            aircraft_pushpin.Location.Longitude = lon;
            pinn.Location.Latitude = aircraft_pushpin.Location.Latitude;
            pinn.Location.Longitude = lon;
            map.Children.Clear();
            map.Children.Add(pinn);
            map.Center = pinn.Location;
        }
        void pushpin_move_left(double value)
        {
            Microsoft.Maps.MapControl.WPF.Pushpin pinn = new Microsoft.Maps.MapControl.WPF.Pushpin();
            pinn.Location = new Microsoft.Maps.MapControl.WPF.Location();
            lon -= value/1000;
            aircraft_pushpin.Location.Longitude = lon;
            pinn.Location.Latitude = aircraft_pushpin.Location.Latitude;
            pinn.Location.Longitude = lon;
            map.Children.Clear();
            map.Children.Add(pinn);
            map.Center = pinn.Location;
        }

        public class Warning
        {
            public string type { get; set; }
            public int code { get; set; }
        }

        public class RootObject
        {
            public string _id { get; set; }
            public string AreaName { get; set; }
            public string attitude { get; set; }
            public Warning warning { get; set; }
            public string land { get; set; }
            public string temp { get; set; }
            public string wind_direction { get; set; }
            public string wind_speed { get; set; }
            public int visibility { get; set; }
            public string humidity { get; set; }
            public string dew_point { get; set; }
            public string pressure { get; set; }
            public int communication_tower_exist { get; set; }
            public int __v { get; set; }
            public List<double> latitude { get; set; }
            public List<double> longitude { get; set; }
        }
    }
 }
