   M S B A M L   `   `   `  ���� l  hSystem.Windows.Controls.DataVisualization.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null�rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization  �{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  D @Benchmark, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Benchmark	Benchmark    Benchmark.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     �DVrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit     �DVC{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:Benchmark       � Icon$  ./Resources/Icon/pen.png�� � Title$ Pendrive Benchmark��$	��420��$��606.595�� � 
ResizeMode$ NoResize=�.��� $��0,0,4,0q�.+��� -   $��	btnSearch��$��Search��$
��Left=�$��
189,21,0,0q�$	��Top=�$��75���� -   $��tbFilesCapacity��$
��Left=�$��23��$��
281,21,0,0q� �� TextWrapping$
 Wrap=�$��0��$	��Top=�$��74�� J� RenderTransformOrigin$ -0.321,-9.612&��� $��Wielkość pliku��$
��Left=�$��	274,0,0,0q�$	��Top=�$��97��$��26���� -   $��btnStart��$��Start��$
��Left=�$��
495,20,0,0q�$	��Top=�$��75��$ -0.092,0.596&��� -   $��lblSpeed��$
��Left=�$��
10,354,0,0q�$	��389��$��26��$	��Top=��� -   $��combo��$
��Left=�$��	10,21,0,0q�$	��Top=�$	��174��>   8System.Windows.Controls.DataVisualization.Charting.Chart  -     Name$ chart��$��10,66,27,41q�   LegendStyle ��  �� 
TargetType" ��.���  �� Property � ��	 �� Value$	 0����  � ��$	 0��
   Series
 C   =System.Windows.Controls.DataVisualization.Charting.LineSeries  H   BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries   DependentValuePath$ Value��   IndependentValuePath$	 Key��   IsSelectionEnabled . $��0,0,4,0q�   ItemsSource ��    Axes C   =System.Windows.Controls.DataVisualization.Charting.LinearAxis  =   7System.Windows.Controls.DataVisualization.Charting.Axis   Orientation$ Y=�  $ X=�   Interval�   �System.Windows.Controls.DataVisualization.Charting.NullableConverter`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]$ 10 $y�Hidden=�   Location$	 Top=��� -   $��tbFilesNumber��$
��Left=�$��23��$��
371,20,0,0q�$
 Wrap=�$	��Top=�$��0��$��90���� $��Ilość plików��$
��Left=�$��	366,0,0,0q�$	��Top=�$��97��$��26��