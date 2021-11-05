using Servicios;
using Servicios.Contratos;
using System;
using System.Drawing;
using System.Windows.Forms;
using UI.Desktop.Controladores;
using UI.Desktop.ViewModels;
using UnitOfWork.SqlServer;

namespace UI.Desktop.Formularios
{
    public partial class frmBuscarCliente : Form
    {
        private string _nombreCliente;
        private IBuscarCliente _caller;

        private UnitOfWorkSqlServer unitOfWork;
        private IClienteService clienteService;
        private ClienteController clienteController = null;


        public frmBuscarCliente(IBuscarCliente caller)
        {
            InitializeComponent();
            _caller = caller;
            unitOfWork = new UnitOfWorkSqlServer();

            clienteService = new ClienteService(unitOfWork);
            clienteController = new ClienteController(clienteService);
        }

        private void frmBuscarCliente_Load(object sender, EventArgs e)
        {
            this.CargarGrilla("");
            this.EstiloGrilla();
        }

        private void CargarGrilla(string texto)
        {
            try
            {
                this.dgvGrilla.DataSource = clienteController.GetClientes();
                this.dgvGrilla.AutoGenerateColumns = false;
                this.dgvGrilla.Columns[0].Visible = false;
            }
            catch (Exception ex)
            {
                //this.mensajeError("Error en la carga inicial de los datos:" + ex.Message.ToString());
            }
        }

        private void EstiloGrilla()
        {
            this.dgvGrilla.Font = new System.Drawing.Font(new FontFamily("Microsoft Sans Serif"), 9);
            this.dgvGrilla.AllowUserToAddRows = false;
            this.dgvGrilla.AllowUserToDeleteRows = false;
            this.dgvGrilla.AllowUserToResizeColumns = false;
            this.dgvGrilla.AlternatingRowsDefaultCellStyle.BackColor = Color.Gold;
            this.dgvGrilla.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCellsExceptHeaders;
            this.dgvGrilla.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.DisplayedCells;//ajusta las col al contenido
            this.dgvGrilla.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvGrilla.SelectionMode = DataGridViewSelectionMode.FullRowSelect; //como se seleccionan las celdas
            this.dgvGrilla.StandardTab = true; //si se aprieta TAB mueve al siguiente control el lugar de moverlo a la sig celda
            this.dgvGrilla.RowHeadersVisible = false;//oculta la col de seleccion de filas
            this.dgvGrilla.ReadOnly = true;

            this.dgvGrilla.Refresh();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }

        private void dgvGrilla_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //Al seleccionar un ítem del grid se dará por seleccionada la entidad y se enviara la acción al form 
            //padre a través de la instancia invocando el método definido en la interfaz.       

            // sino hay seleccion no se continua.
            if (dgvGrilla.CurrentRow == null)
                return;

            // se invoca al metodo de la interfaz para enviar el cliente seleccionado al form que invoco la busqueda
            _caller.Selected((ClienteGridViewModel)dgvGrilla.CurrentRow.DataBoundItem);

            // se cierra el form
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            this.CargarGrilla(txtBuscar.Text.Trim());
        }
    }
}
