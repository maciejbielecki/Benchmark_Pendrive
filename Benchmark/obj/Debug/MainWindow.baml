   M S B A M L   `   `   `  ����l  hSystem.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null�rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization  5   	   �{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  5   	   D @Benchmark, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Benchmark	Benchmark 5   	      Benchmark.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   �DVrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   �DVC{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Benchmark     5   	     � Icon$  ./Resources/Icon/pen.png��5
   	    � Title$ Pendrive Benchmark��5   	   $	��420��6$   $��606.595��61    � 
ResizeMode$ NoResize=�6A   .��5      � $��0,0,4,0q�6   .+�5   
   �� -   5        $��	btnSearch��5      $��Search��6"   $
��Left=�63   $��
189,21,0,0q�6N   $	��Top=�6b   $��75��6z   6�   �� 5   
   -   5        $��tbFilesCapacity��5      $
��Left=�6)   $��23��6D   $��
281,21,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $��0��6x   $	��Top=�6�   $��74��6�    J� RenderTransformOrigin$ -0.321,-9.612&�6�   6�   �� 5   
   $��Wielkość pliku��6   $
��Left=�6)   $��	274,0,0,0q�6D   $	��Top=�6W   $��97��6o   $��26��6z   �� 5   
   -   5        $��btnStart��5      $��Start��6!   $
��Left=�61   $��
495,20,0,0q�6L   $	��Top=�6`   $��75��6x   $ -0.092,0.596&�6�   �� 5   
   -   5        $��lblSpeed��5      $
��Left=�6    $��
10,354,0,0q�6;   $	��389��6O   $��26��6[   $	��Top=�6g   �� 5   
   -   5        $��combo��5      $
��Left=�6    $��	10,21,0,0q�6;   $	��Top=�6N   $	��174��6f   >   8System.Windows.Controls.DataVisualization.Charting.Chart  5   
   -   5          Name$ chart��5      $��10,66,27,41q�6#      LegendStyle 5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � ��	 �� Value$	 0��6.   �� 5       � ��$	 0��6/   5      
   Series
 5      C   =System.Windows.Controls.DataVisualization.Charting.LineSeries  H   BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries   DependentValuePath$ Value��5         IndependentValuePath$	 Key��5         IsSelectionEnabled . $��0,0,4,0q�5   /      ItemsSource 5   !   �� 5         Axes 5"      C   =System.Windows.Controls.DataVisualization.Charting.LinearAxis  =   7System.Windows.Controls.DataVisualization.Charting.Axis   Orientation$ Y=�6!     5#      $ X=�6!      Interval�   �System.Windows.Controls.DataVisualization.Charting.NullableConverter`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]$ 10 61   $y�Hidden=�6?      Location$	 Top=�6S   5%      �� 5&   
   -   5        $��tbFilesNumber��5&      $
��Left=�6'   $��23��6B   $��
371,20,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $��0��6�   $��90��6�   6�   �� 5'   
   $��Ilość plików��6   $
��Left=�6'   $��	366,0,0,0q�6B   $	��Top=�6U   $��97��6m   $��26��6x   5(      5)      