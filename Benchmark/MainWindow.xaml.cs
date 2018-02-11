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
using System.Windows.Controls.DataVisualization.Charting;


namespace Benchmark
{
    public partial class MainWindow : Window
    {
        public string fileName = new Guid().ToString();
        public KeyValuePair<int, double>[] chartData;
        public long TotalFreeSpace;
        public long TotalSize;
        public ExternalDisc ed;

        public MainWindow()
        {
            InitializeComponent();

            ed = new ExternalDisc();
            var lista = ed.Lista();

            foreach (var x in lista)
                combo.Items.Add(x.Name);
            chartData = new KeyValuePair<int, double>[1];
            for (int i = 0; i < 1; i++)
                chartData[i] = new KeyValuePair<int, double>(i, 0);
            chart.DataContext = chartData;

        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            var lista = ed.Lista();
            combo.Items.Clear();
            foreach (var x in lista)
                combo.Items.Add(x.Name);

        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Test może potrwać nawet kilka minut.", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
            chartData = new KeyValuePair<int, double>[Convert.ToInt32(tbFilesNumber.Text)];
            List<double> times = new List<double>();
            int k = 0;
            double time = 0;
            try
            {
                this.TotalSize = ed.TotalSize(combo.SelectedItem.ToString());
                var file = new CreateCopyDelete();
                file.CreateFile(Convert.ToInt32(tbFilesCapacity.Text), fileName);
                for (int i = 0; i < Convert.ToInt32(tbFilesNumber.Text); i++)
                {
                    time = Math.Round(Convert.ToInt32(tbFilesCapacity.Text) / file.CreateCopy(combo.SelectedItem.ToString(), fileName), 2);
                    times.Add(time);
                    file.DeleteFile(combo.SelectedItem.ToString(), fileName);
                }

                time = 0;
                chart.DataContext = null;
                file.DeleteFile(fileName);
                foreach (var l in times)
                {
                    chartData[k] = new KeyValuePair<int, double>(k, l);
                    k++;
                    time = time + l;
                }
                lblSpeed.Content = "Średnia prędkość kopiowania: " + Math.Round(time / k,2) + " MB/s.";
                chart.DataContext = chartData;


            }
            catch (Exception ex)
            {

            }

        }

        private void tbFilesCapacity_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (tbFilesCapacity.Text != "")
                if (Convert.ToInt32(tbFilesCapacity.Text) > 100)
                {
                    MessageBoxResult result = MessageBox.Show("Wielkość pliku nie może być większa niż 100MB.", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
                    tbFilesCapacity.Text = "100";
                }
        }

        private void tbFilesNumber_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (tbFilesNumber.Text != "")
                if (Convert.ToInt32(tbFilesNumber.Text) > 100)
                {
                    MessageBoxResult result = MessageBox.Show("Ilość plików nie może być większa niż 100.", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
                    tbFilesNumber.Text = "100";
                }
        }
    }
}
