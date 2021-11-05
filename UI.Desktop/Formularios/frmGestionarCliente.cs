using System;
using System.Drawing;
using System.Windows.Forms;
using UI.Desktop.Controladores;
using Servicios;
using Servicios.Contratos;
using UnitOfWork.SqlServer;
using UI.Desktop.ViewModels;
using FluentValidation.Results;
using UI.Desktop.Controladores.Validaciones;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;

namespace UI.Desktop.Formularios
{
    public partial class frmGestionarCliente : Form
    {
        private UnitOfWorkSqlServer unitOfWork;
        private IClienteService clienteService;
        private ClienteController clienteController = null;
        private ClienteGridViewModel registroSeleccionado;
        private List<ClienteGridViewModel> resultadoGrilla = null;

        #region Singleton
        private static frmGestionarCliente _instancia;

        public static frmGestionarCliente GetInstancia()
        {
            if (_instancia == null)
            {
                _instancia = new frmGestionarCliente();
            }
            return _instancia;
        }
        #endregion

        /// <summary>
        /// Constructor privado para que solo se instancie desde el método GetInstancia()
        /// </summary>
        private frmGestionarCliente() 
        {
            InitializeComponent();

            this.StartPosition = FormStartPosition.CenterScreen;

            unitOfWork = new UnitOfWorkSqlServer();

            clienteService = new ClienteService(unitOfWork);
            clienteController = new ClienteController(clienteService);
            resultadoGrilla = new List<ClienteGridViewModel>();
        }

        private void mensajeOK(string men)
        {
            MessageBox.Show(men, "MENSAJE", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void mensajeError(string men)
        {
            MessageBox.Show(men, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            this.registroSeleccionado = null;

            frmEditarCliente frmEditCliente = frmEditarCliente.GetInstancia(registroSeleccionado);
            frmEditCliente.ShowDialog();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void DeseleccionarRegistro()
        {
            this.registroSeleccionado = null;
            this.dgvGrilla.ClearSelection();
        }
        private void frmGestionarCliente_Load(object sender, EventArgs e)
        {
            this.CargarGrilla();
            this.EstiloGrilla();
        }

        public async void CargarGrilla()
        {
            try
            {
                this.resultadoGrilla = (await clienteController.GetClientes()).ToList();
                this.dgvGrilla.DataSource = resultadoGrilla;

                this.dgvGrilla.AutoGenerateColumns = false;
                this.dgvGrilla.Columns[0].Visible = false;
                this.DeseleccionarRegistro();
            }
            catch (Exception ex)
            {
                this.mensajeError("Error en la carga inicial de los datos:" + ex.Message.ToString());
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

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            //FormListaClientesReporte formClientesReport = new FormListaClientesReporte();
            //formClientesReport.ShowDialog();
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (registroSeleccionado != null)
            {
                frmEditarCliente frmEditCliente = frmEditarCliente.GetInstancia(registroSeleccionado);
                frmEditCliente.ShowDialog();
            }
            else
            {
                this.mensajeError("Debe seleccionar un registro...");
            }
        }

        private void SeleccionarItemDeGrilla()
        {
            if (dgvGrilla.CurrentRow == null)
                return;

            registroSeleccionado = (ClienteGridViewModel)dgvGrilla.CurrentRow.DataBoundItem;

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
        }

        private void dgvGrilla_MouseClick(object sender, MouseEventArgs e)
        {
            this.SeleccionarItemDeGrilla();
        }

        private void dgvGrilla_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)//Si se hace doble clic en el encabezado, hacemos nada.
            {
                return;
            }

            this.SeleccionarItemDeGrilla();

            frmEditarCliente frmEditCliente = frmEditarCliente.GetInstancia(registroSeleccionado);
            
            frmEditCliente.ShowDialog();

        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            this.CargarGrilla();
        }

        private void frmGestionarCliente_FormClosed(object sender, FormClosedEventArgs e)
        {
            _instancia = null;
        }
    }
}
