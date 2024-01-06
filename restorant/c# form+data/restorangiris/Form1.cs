using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;// sql kod kütüphanesi kullanma.

namespace restorangiris
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult onay = MessageBox.Show("Çıkmak İstediğinize Emin misiniz?", "çıkış İşlemi", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (onay == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from Kullanici where kullaniciadi=@kullaniciadi and parola =@parola", baglanti);
            komut.Parameters.AddWithValue("@kullaniciadi", textBox1.Text);
            komut.Parameters.AddWithValue("@parola", textBox2.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())//doğruise

            {
                icerik frm = new icerik();
                frm.Show();
                this.Visible = false;

            }
            else // yanlış ise

            {
                MessageBox.Show("yanlış kullanıcı adı veya parolası");
            }

        }
    }
}