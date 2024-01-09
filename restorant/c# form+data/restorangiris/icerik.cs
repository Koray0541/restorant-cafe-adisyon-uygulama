using System;
using System.Windows.Forms;

namespace RestoranOtomasyonu
{
    public partial class Form2 : Form
    {
        // flpMasalar kontrolünü buraya ekleyin
        private FlowLayoutPanel flpMasalar;

        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            // flpMasalar kontrolünü burada oluşturun
            flpMasalar = new FlowLayoutPanel();
            flpMasalar.Dock = DockStyle.Fill; // Doldurma işlemi yapar
            this.Controls.Add(flpMasalar);

            // Masaları oluştur
            for (int i = 1; i <= 10; i++)
            {
                Button masaButton = new Button();
                masaButton.Text = "Masa " + i;
                masaButton.Name = "btnMasa" + i;
                masaButton.Click += new EventHandler(MasaButtonClick);
                flpMasalar.Controls.Add(masaButton);
            }
        }

        private void MasaButtonClick(object sender, EventArgs e)
        {
            // Seçilen masa üzerindeki sipariş hesabını aç
            Button masaButton = sender as Button;
            int masaNumarasi = int.Parse(masaButton.Name.Replace("btnMasa", ""));

            // Örneğin, seçilen masanın sipariş hesabını gösteren bir form açılabilir
            SiparisHesabiFormu siparisHesabiFormu = new SiparisHesabiFormu(masaNumarasi);
            siparisHesabiFormu.Show();
        }
    }
}