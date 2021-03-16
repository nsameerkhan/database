using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace demobutton1
{
    public partial class Form1 : Form
    {
        SqlConnection sqlc = new SqlConnection();
        SqlCommand sqlcom = new SqlCommand();
        public Form1()
        {
            InitializeComponent(); 
            sqlc.ConnectionString = "SERVER=.\\SQLEXPRESS;Database=studentdetails;Integrated Security=true";
            try
            {
                sqlc.Open();
            }
            catch (Exception ex)
            {
               MessageBox.Show(ex.Message, "connection fails");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
           
            
            if (sqlc.State == ConnectionState.Open)
            {
                this.Text = "welcome";
                sqlcom.Connection = sqlc;
                
                sqlcom.CommandText = "insert into customer values(4,'sameer',987654)";
                MessageBox.Show(sqlcom.CommandText);
                sqlcom.ExecuteNonQuery();
            }
           
        }
        private void button3_Click(object sender, EventArgs e)
        {
            sqlcom.Connection = sqlc;
            sqlcom.CommandText = "insert into customer values(5,'santhos',987654)";
            MessageBox.Show(sqlcom.CommandText);
            sqlcom.ExecuteNonQuery();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            sqlcom.Connection = sqlc;
            sqlcom.CommandText = "delete from customer where cusid='1'";
            MessageBox.Show(sqlcom.CommandText);
            sqlcom.ExecuteNonQuery();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            sqlcom.Connection = sqlc;
            sqlcom.CommandText = "update customer set cusname='don' where cusid=2";
            MessageBox.Show(sqlcom.CommandText);
            sqlcom.ExecuteNonQuery();
        }
    }
}
