   M S B A M L   `   `   `  ����@  <Drone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DroneDrone  5   	   d `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF 5   K       Drone.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Drone     5   	   a ]Telerik.Windows.Data, Version=2016.1.112.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7w sTelerik.Windows.Controls.DataVisualization, Version=2016.1.112.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2016.1.112.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ctelerik1http://schemas.telerik.com/2008/xaml/presentation    5   	   `WPFRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF    6K   -   5          � Title$  	Simulator��5
   	   $	��760��6   $
��1366��6(    � Icon$ Media/logo_100.png��65    � WindowState$ 	Maximized=�6O    � 
ResizeMode$ CanMinimize=�6g   .��5      � ���	#FF212121.+�5   
   �� -   5         ��Name$ image4��5      $��	22,16,0,0q�6    $��Media/texture.png��63   $
��Fill=�6N    J� RenderTransformOrigin$ 0.5,0.5&�6]   $��198.653��6}   $	��Top=�6�   $
��Left=�6�   $��653.208��6�   z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0Q�6&   T� 5      5      5      �� 5   
   -   5        $ image��5      $
��Left=�6   $��126.866��6:   $��76.097,51.204,0,0q�6K   $	��Top=�6f   $��129.897��6~   $��Media/frame.png��6�   -  'Telerik.Windows.Controls.RadRadialGauge  5   
   -   5          Name$ airspeed_gauge��5   !   $
��Left=�6:   $��66.571,57.698,0,0q�6U   $	��Top=�6p   $��113.444��6�   $��147.217��6�      InnerBackground �	#FF191919	   OuterBackground
	 �   �
�������
   OuterBorderBrush

 �   �.@�5      0  *Telerik.Windows.Controls.Gauge.RadialScale  .  (Telerik.Windows.Controls.Gauge.ScaleBase
   Min$ 0Q�6"   
   Max$	 800Q�6*   
�������$��9(�6G      
Indicators 5      +  %Telerik.Windows.Controls.Gauge.Needle  5      -   5          Name$ airspeed_value��5   %   
�������
�������6P   -  'Telerik.Windows.Controls.Gauge.Pinpoint  5      
�������6'   .@�5      /  )Telerik.Windows.Controls.Gauge.GaugeRange     
Background
 �  ��
   Min$	 700Q�66   
   Max$	 800Q�6@     5      
 � ���$	 400Q�69   $	 700Q�6C     5      
 � � �$	 100Q�68   $	 400Q�6B   5       �� 5!      -   5         ��Name$ 	textBlock��5!      $
��Left=�6+   $��40.666,72.715,0,0q�6F   $
��Wrap=�6a   $	��Top=�6u   $��8(�6�   �� 6�   $�	Air Speed��6�   6�   5"      �� 5#   
   
���   �$��153.291��6!   $��518.587,34.023,0,0q�62   ���	#00000000$	��Top=�6a   $
��Left=�6�   $��82.655��6�   �� 5$   
   ���	#FF3FE7F7$��69.723��6%   $��527.414,43.819,0,0q�65   ���	#00000000$	��Top=�6d   $
��Left=�6�   $��62.809��6�   �� 5%   
   ���	#FF3E200B$��63.22��6%   $��527.414,113.542,0,0q�64   ���	#00000000$	��Top=�6d   $
��Left=�6�   $��62.809��6�   5  /Telerik.Windows.Controls.RadVerticalLinearGauge  5&   
   +  %Telerik.Windows.Controls.StyleManager   Theme-	  'Telerik.Windows.Controls.ThemeConverter$ Windows8	 6)   $��527.414,43.819,758.758,0q�6O   
������ $��136.526��6�   $	��Top=�6�   .@�5(      8
  2Telerik.Windows.Controls.Gauge.VerticalLinearScale
  $	 -80Q�6*   $ 80Q�64   1  +Telerik.Windows.Controls.Gauge.GraphicScale   
MajorTicks$ 5��5)         IsInteractive .    RangeLocation$ Inside=�5+         MajorTickOffset:  4Telerik.Windows.Controls.Gauge.GaugeMeasureConverter$ 0.05* 5,         MiddleTickOffset$
 0.0* 5-         MinorTickOffset$ 0.02* 5.      $��12(�6    50      +  %Telerik.Windows.Controls.Gauge.Marker  51      -   5          Name$ pitch_angle��51   %   5  /Telerik.Windows.Controls.Gauge.GraphicIndicator   Value$ 0Q�6:   0  *Telerik.Windows.Controls.Gauge.ScaleObject   RelativeHeight$ 0.05* 52         RelativeWidth$ 0.12* 53      55      56      �� 57   
   -   5        $ image1��57      $
��Left=�6    $��126.606��6;   $��216.5,51.049,0,0q�6L   $	��Top=�6f   $��129.585��6~   $��Media/frame.png��6�   $
��Fill=�6�   �� 58   
   -	   5        $ image2��58      $
��Left=�6    $��127.637��6;   $��225.064,56.8,0,0q�6L   $	��Top=�6f   $��113.946��6~   $��Media/horizon.png��6�   �� 59   
   -
   5        $ aircraft��59      $
��Left=�6"   $��23.831��6=   $��244.179,93.749,0,0q�6M   $	��Top=�6i   $��74.475��6�   $��Media/aircraft.png��6�   $ 0.5,0.5&�6�   �� 5:   
   -   5        $ textBlock_Copy��5:      $
��Left=�6,   $
��Wrap=�6G   $��
Roll Angle��6[   $	��Top=�6m   $��10.667(�6�   $��258.164,143.355,0,0q�6�   
�������$��13.565��6  $��50.49��6  �� 5;   
   -   5        $ textBlock_Copy1��5;      $
��Left=�6-   $
��Wrap=�6H   $��Pitch Angle��6\   $	��Top=�6o   $��8(�6�   $��536.809,175.803,0,0q�6�   
�������6�   �� 5<   
   -   5        $ image3��5<      $
��Left=�6    $��357.966,49.619,0,0q�6;   $��131.048��6W   $��128.036��6g   $	��Top=�6x   $��Media/frame.png��6�   $
��Fill=�6�   1  +Telerik.Windows.Controls.RadQuadrantNWGauge  5=   
   $��80.136��6%   $ Windows8	 64   $
��Left=�6Z   $��383.84,58.575,0,0q�6u   $ 0.5,0.5&�6�   	 �	#FF3A3C39$��80.136��6�   $	��Top=�6�   z�5>      V� 5?      .~�5@      �� �� 5A      �� 5B      $ 46.742Q�6&   T� 5C      5D      .@�5F      4  .Telerik.Windows.Controls.Gauge.QuadrantNWScale  $ -1Q�6'   $ 1Q�60      MajorTickStep$ 1Q�68   
������� 5G        5H      -   5        $ 
yaw_sensor��5H   %   9  3Telerik.Windows.Controls.Gauge.InteractiveIndicator   
IsAnimated . $ 0Q�6K     5I      5K      5L      �� 5M   
   -   5        $ image5��5M      $��22,218.153,0,10q�6    $��Media/texture.png��69   $
��Fill=�6T   $
��Left=�6c   $��653.208��6~   �� 5N   
   
���   ����	#FF2C2D2E$��87.097,273.653,0,39.187q�64   $��5��6U   $
��Left=�6i   $��514.145��6�   '  !Microsoft.Maps.MapControl.WPF.Map  5O   
   -   5           Name$	  map��5O      $
��Left=�6   +  %Microsoft.Maps.MapControl.WPF.MapCore!   Mode;  5Microsoft.Maps.MapControl.WPF.Design.MapModeConverter$! AerialWithLabels 6:   "   Center<  6Microsoft.Maps.MapControl.WPF.Design.LocationConverter$" 30.0201587,31.2095643 6R   #   	ZoomLevel$# 12Q�6q   $��
96,284,0,0q�6�   $	��Top=�6�   $	��494��6�   $��407.813��6�   $   CredentialsProviderT  NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$F$ @AkQWg6L66ntGTpth2DAk6bp5C8yYZ9vzenybV3YbAlreVb1M9R6G6bfUTDkWcy5t 6�   %   Children.% 5P      +  %Microsoft.Maps.MapControl.WPF.Pushpin  -   5        &  Name$& aircraft_pushpin��5P      '   Location$' 30.0201587,31.2095643 64   $��A��6U   5Q      �� 5R   
   -   5        $ textBlock_Copy2��5R      $
��Left=�6-   $
��Wrap=�6H   $��	Yaw Angle��6\   $	��Top=�6m   $��10.667(�6�   $��398,150.955,0,0q�6�   
�������6�   � 5S   
   $!��574.208,122,285.792,317.552q�6   $ 0.5,0.5&�64   z�5T      V� 5U      .~�5V      �� �� 5W      �� 5X      $ 90Q�6&   T� 5Y      5Z      ��5\      �� 5]      ( �� ImageSource$( Media/texture.png��6   .+�5_      �� 
���   �$!��50.276,38.932,65.724,28.516q�6%   ���	#FF2C2D2E$��5��6]   �� 5`      -   5        $ 
textBlock1��5`      $��-64,136,0,117.118q�6,   $
��Wrap=�6G   $��Weather Data��6[   ���	#FF06B927$��33.333(�6�   $��Times New Roman)�6�   ) �� TextAlignment$) Center=�6�   $ 0.5,0.5&�6�   $
��Left=�6�   $	��284��6  z�5a      V� 5b      .~�5c      �� �� 5d      �� 5e      $	 -90Q�6*   T� 5f      5g      5i      �� 5j      -   5        $ weather_data_txt��5j      $��170,-2.337,126,-4q�62   $
��Wrap=�6M   ���	#FF06B927$��18.667(�6x   $��Times New Roman)�6�   $ 0.5,0.5&�6�   z�5k      V� 5l      .~�5m      �� �� 5n      �� 5o      $	 -90Q�6*   T� 5p      5q      �� 5r   .   $"�Temp                     15`��62   �� 6X   �� 6d   $�Humidity               5%��6h   �� 6�   �� 6�   $"�Air Speed              20 KM��6�   �� 6�   �� 6�   $�Wind direction       N`��6�   �� 6�   �� 6�   $!�Dew Point             2.213��6  �� 6'  �� 63  $%�Pressure                 3236 P��67  �� 6`  �� 6l  $!�Visibility                0��6p  �� 6�  �� 6�  $!�Guest Speed           12 KM��6�  6�  5s      �� 5t   
   -   5        $ 
textBlock3��5t      $
��Left=�6(   $��276.654,21.622,0,0q�6C   $
��Wrap=�6_   $��Drone Controls��6s   $	��Top=�6�   
�������$��20(�6�   $��Times New Roman)�6�   �� 5u   
   -   5        $ textBlock3_Copy��5u      $
��Left=�6-   $��253.653,242.656,0,0q�6H   $
��Wrap=�6e   $��Drone Location on Map��6y   $	��Top=�6�   
�������$��20(�6�   $��Times New Roman)�6�   �� 5v   
   
���   �$	��202��6!   $��	680,0,4,6q�6.   ���	#FF2C2D2E$��5��6T   $��Bottom=�6h   �� 5w   
   -   5        $ textBlock1_Copy��5w      $��697,0,543,169q�6-   $
��Wrap=�6D   $��
Drone Logs��6X   ���	#FF06B927$��24(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   $��Bottom=�6�   �� 5x   
   -   5        * ��Name$* Drone_logs_txt��5x      $��	0,0,22,39q�6,   + �� TextWrapping$
+ Wrap=�6?   ", �� VerticalScrollBarVisibility$
, auto=�6S   - �� AcceptsReturn- . $��
Drone Logs��6�   ���	#FF06B927$��13.333(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   $��Bottom=�6  $	��126��6  
���   �$��Right=�6?  $	��633��6[  �� 5y   
   
���   �$��983,22.62,16,222.551q�6!   ���	#FF2C2D2E$��5��6R   �� 5z   
   -   5        $ textBlock1_Copy1��5z      $��995.079,34.023,237.839,0q�6.   $
��Wrap=�6P   $��Service Logs��6d   ���	#FF06B927$��24(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   $	��Top=�6�   $��37.873��6�   �� 5{   
   -   5        $* Service_Logs_txt��5{      $��0,77,22,238q�6.   $
+ Wrap=�6C   $
, auto=�6W   - . $��Service Logs��6�   ���	#FF06B927$��13.333(�6�   $��Times New Roman)�6�   $ 0.5,0.5&�6�   
���   �$��Right=�6  $	��343��69  �� 5|   
   -   5        . ��Name$. map_warning_rec��5|      ���	#FFE80D0D$
��Left=�6>   
���   �$��169.722��6h   $��258.164,295,0,0q�6x   $��55��6�   $	��Top=�6�   $��0��6�   �� 5}   
   -   5        $ map_warning_txt��5}      $
��Left=�6-   $��258,310,0,0q�6H   $
��Wrap=�6]   $��BAD WEATHER ZONE��6q   $	��Top=�6�   
�������$��16(�6�   $) Center=�6�   $	��170��6�   $��33��6�   5~      5      