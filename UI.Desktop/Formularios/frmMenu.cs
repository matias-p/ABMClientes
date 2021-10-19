using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace UI.Desktop.Formularios
{
    public partial class frmMenu : Form
    {
        public frmMenu()
        {
            InitializeComponent();
        }
        
        private void frmMenu_Load(object sender, EventArgs e)
        {
            this.IsMdiContainer = true;
            this.WindowState = FormWindowState.Maximized;
        }

        private void resguardarDatosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //frmBackup frLi = new frmBackup();
            //frLi.ShowDialog();
        }

        private void restaurarDatosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //frmRestaurarBase frLi = new frmRestaurarBase();
            //frLi.ShowDialog();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Esta seguro que desea salir", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                return;
            }
        }

        private void clientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmGestionarCliente frmClientes = frmGestionarCliente.GetInstancia();
            frmClientes.MdiParent = this; //indica que el form activo (frmMenu) es el contenedor
            //frmClientes.StartPosition = FormStartPosition.CenterScreen;
            frmClientes.Show();
        }

        private void nuevaVentaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
