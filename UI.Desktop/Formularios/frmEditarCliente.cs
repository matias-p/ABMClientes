using FluentValidation.Results;
using Servicios;
using Servicios.Contratos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using UI.Desktop.Controladores;
using UI.Desktop.Controladores.Validaciones;
using UI.Desktop.ViewModels;
using UnitOfWork.SqlServer;

namespace UI.Desktop.Formularios
{
    public partial class frmEditarCliente : Form
    {
        private UnitOfWorkSqlServer unitOfWork;

        private IClienteService clienteService;
        private IGrupoClienteService grupoClienteService;
        private INacionalidadService nacionalidadService;
        private IEstadoCivilService estadoCivilService;
        private IResponsabilidadIVAService responsabilidadIVAService;
        private ITipoDeDocumentoService tipoDeDocumentoService;
        private IProvinciaService provinciaService;

        private ClienteController clienteController = null;
        private GrupoClienteController grupoClienteController = null;
        private NacionalidadController nacionalidadController = null;
        private EstadoCivilController estadoCivilController = null;
        private ResponsabilidadIVAController responsabilidadIVAController = null;
        private TipoDeDocumentoController tipoDeDocumentoController = null;
        private ProvinciaController provinciaController = null;

        //Creamos las instancias de las clases Validator
        readonly ClienteViewModelValidator clienteValidator = null;

        public bool modoInsercion = false; // si inserto o modifico
        private ClienteGridViewModel registroSeleccionado;

        #region Singleton
        private static frmEditarCliente _instancia;
        public static frmEditarCliente GetInstancia(ClienteGridViewModel cliente)
        {
            if (_instancia == null)
            {
                _instancia = new frmEditarCliente(cliente);
            }
            return _instancia;
        }
        #endregion

        /// <summary>
        /// Constructor privado para que solo se instancie desde el método GetInstancia()
        /// </summary>
        /// <param name="cliente">Si es null es para crear, caso contrario para editar. </param>
        private frmEditarCliente(ClienteGridViewModel cliente)
        {
            InitializeComponent();
                
            this.StartPosition = FormStartPosition.CenterScreen;

            unitOfWork = new UnitOfWorkSqlServer();
            registroSeleccionado = cliente;

            clienteService = new ClienteService(unitOfWork);
            grupoClienteService = new GrupoClienteService(unitOfWork);
            nacionalidadService = new NacionalidadService(unitOfWork);
            estadoCivilService = new EstadoCivilService(unitOfWork);
            responsabilidadIVAService = new ResponsabilidadIVAService(unitOfWork);
            tipoDeDocumentoService = new TipoDeDocumentoService(unitOfWork);
            provinciaService = new ProvinciaService(unitOfWork);

            clienteController = new ClienteController(clienteService);
            grupoClienteController = new GrupoClienteController(grupoClienteService);
            nacionalidadController = new NacionalidadController(nacionalidadService);
            estadoCivilController = new EstadoCivilController(estadoCivilService);
            responsabilidadIVAController = new ResponsabilidadIVAController(responsabilidadIVAService);
            tipoDeDocumentoController = new TipoDeDocumentoController(tipoDeDocumentoService);
            provinciaController = new ProvinciaController(provinciaService);

            //como es de solo lectura, podemo instanciarla solo en el constructor
            clienteValidator = new ClienteViewModelValidator();

        }

        private void frmEditarCliente_Load(object sender, EventArgs e)
        {
            this.txtCuilCuit.Mask = "00-00000000-0";

            this.CargaCombos();

            if (registroSeleccionado != null)
            {                
                this.CargarDatosEnControles();
            }     
        }

        private void mensajeOK(string men)
        {
            MessageBox.Show(men, "MENSAJE", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void mensajeError(string men)
        {
            MessageBox.Show(men, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void CargarDatosEnControles()
        {
            //this.txtidpersona.Text = Convert.ToString(this.registroSeleccionado.ID);
            this.txtNombres.Text = Convert.ToString(this.registroSeleccionado.Nombre);
            this.txtApellidos.Text = Convert.ToString(this.registroSeleccionado.Apellido);
            this.txtCelular.Text = Convert.ToString(this.registroSeleccionado.Tel_Celular);
            this.txtCelular2.Text = Convert.ToString(this.registroSeleccionado.Tel_Celular2);
            this.txtTelefonoFijo.Text = Convert.ToString(this.registroSeleccionado.Tel_Fijo);
            this.txtEmail.Text = Convert.ToString(this.registroSeleccionado.Email);
            this.txtDni.Text = Convert.ToString(this.registroSeleccionado.Numero);
            this.txtCuilCuit.Text = Convert.ToString(this.registroSeleccionado.CuilCuit);
            this.txtIngresosBrutos.Text = Convert.ToString(this.registroSeleccionado.IIBB);
            this.txtDomicilio.Text = Convert.ToString(this.registroSeleccionado.Domicilio);

            this.cbEstadoCivil.Text = Convert.ToString(this.registroSeleccionado.EstadoCivil);
            this.cbNacionalidad.Text = Convert.ToString(this.registroSeleccionado.Nacionalidad);
            this.cbResponsabilidad.Text = Convert.ToString(this.registroSeleccionado.Responsabilidad);
            this.cbSexo.Text = Convert.ToString(this.registroSeleccionado.Sexo);
            this.cbTipoDoc.Text = Convert.ToString(this.registroSeleccionado.Tipo_Doc);
            this.cbGrupo.Text = Convert.ToString(this.registroSeleccionado.Grupo);
            this.cbSubgrupo.Text = Convert.ToString(this.registroSeleccionado.Subgrupo);
            this.cbProvincia.Text = Convert.ToString(this.registroSeleccionado.Provincia);
            this.cbLocalidad.Text = Convert.ToString(this.registroSeleccionado.Localidad);
        }

        public void EvitarEscritura()
        {
            bool valor = modoInsercion; // si inserto o modifico

            //cajas
            this.txtNombres.Enabled = valor;
            this.txtApellidos.Enabled = valor;
            this.txtCelular.Enabled = valor;
            this.txtCelular2.Enabled = valor;
            this.txtTelefonoFijo.Enabled = valor;
            this.txtEmail.Enabled = valor;
            this.txtDomicilio.Enabled = valor;
            this.txtDni.Enabled = valor;
            this.txtCuilCuit.Enabled = valor;
            this.txtIngresosBrutos.Enabled = valor;

            //combos
            this.cbGrupo.Enabled = valor;
            this.cbNacionalidad.Enabled = valor;
            this.cbResponsabilidad.Enabled = valor;
            this.cbSexo.Enabled = valor;
            this.cbSubgrupo.Enabled = valor;
            this.cbTipoDoc.Enabled = valor;
            this.cbEstadoCivil.Enabled = valor;
            this.cbProvincia.Enabled = valor;
            this.cbLocalidad.Enabled = valor;

            //otros
            this.dtFechaNacimiento.Enabled = valor;
        }

        private void CargaCombos()
        {
            //cbGrupo
            this.cbGrupo.DataSource = grupoClienteController.GetGrupos();
            this.cbGrupo.DisplayMember = "Descripcion";
            this.cbGrupo.ValueMember = "ID";

            //cbSubgrupo
            GrupoClienteViewModel vmGrupo = (GrupoClienteViewModel)cbGrupo.SelectedItem;
            if (vmGrupo != null)
            {
                this.cbSubgrupo.DataSource = vmGrupo.SubGruposCliente;
                this.cbSubgrupo.DisplayMember = "Descripcion";
                this.cbSubgrupo.ValueMember = "ID";
            }

            //cbSexo
            cbSexo.DataSource = clienteController.GetGeneros();
            cbSexo.DisplayMember = "Key";
            cbSexo.ValueMember = "Value";

            //cbNacionalidad
            this.cbNacionalidad.DataSource = nacionalidadController.GetNacionalidades();
            this.cbNacionalidad.DisplayMember = "Descripcion";
            this.cbNacionalidad.ValueMember = "ID";

            //cbEstadoCivil
            this.cbEstadoCivil.DataSource = estadoCivilController.GetEstadosCiviles();
            this.cbEstadoCivil.DisplayMember = "Descripcion";
            this.cbEstadoCivil.ValueMember = "ID";

            //cbResponsabilidad
            this.cbResponsabilidad.DataSource = responsabilidadIVAController.GetResponsabilidadesIVA();
            this.cbResponsabilidad.DisplayMember = "Descripcion";
            this.cbResponsabilidad.ValueMember = "ID";

            //cbTipoDoc
            this.cbTipoDoc.DataSource = tipoDeDocumentoController.GetTiposDeDocumento();
            this.cbTipoDoc.DisplayMember = "Descripcion";
            this.cbTipoDoc.ValueMember = "ID";

            //cbProvincia
            this.cbProvincia.DataSource = provinciaController.GetProvincias();
            this.cbProvincia.DisplayMember = "Descripcion";
            this.cbProvincia.ValueMember = "ID";

            //cbLocalidad
            ProvinciaViewModel provinciaVM = (ProvinciaViewModel)cbProvincia.SelectedItem;
            if (provinciaVM != null)
            {
                this.cbLocalidad.DataSource = provinciaVM.Localidades;
                this.cbLocalidad.DisplayMember = "Descripcion";
                this.cbLocalidad.ValueMember = "ID";
            }
        }

        private void cbGrupo_SelectionChangeCommitted(object sender, EventArgs e)
        {
            GrupoClienteViewModel oObjetoComboGrupo = (GrupoClienteViewModel)cbGrupo.SelectedItem;
            if (oObjetoComboGrupo == null) { return; }

            this.cbSubgrupo.DataSource = oObjetoComboGrupo.SubGruposCliente;
            this.cbSubgrupo.DisplayMember = "Descripcion";
            this.cbSubgrupo.ValueMember = "ID";
        }

        private void txtDni_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtIngresosBrutos_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (this.txtNombres.Text == string.Empty || this.txtApellidos.Text == string.Empty || this.txtDni.Text == string.Empty || this.txtCuilCuit.Text == string.Empty)
            {
                this.mensajeError("¡Complete los campos vacios!");
                return;
            }

            if (!ControlesExtensiones.ValidarCuitCuil(txtCuilCuit))
            {
                this.mensajeError("¡Ingrese un Cuit/Cuil válido!");
                return;
            }

            #region MAPEO_DE_VIEWMODEL

            ClienteViewModel cliente = new ClienteViewModel();

            if (registroSeleccionado != null) //si registroSeleccionado es null se trata de un nuevo registro
            {
                cliente.ID = registroSeleccionado.ID;
            }

            //cajas
            cliente.nombre = ControlesExtensiones.ToProperCase(txtNombres.Text);
            cliente.apellido = ControlesExtensiones.ToProperCase(txtApellidos.Text);
            cliente.tel_Celular = this.txtCelular.Text;
            cliente.tel_Celular2 = this.txtCelular2.Text;
            cliente.tel_Fijo = this.txtTelefonoFijo.Text;
            cliente.email = this.txtEmail.Text;
            cliente.numero = Convert.ToInt64(txtDni.Text);
            cliente.cuilCuit = Convert.ToInt64(txtCuilCuit.Text.Replace("-", string.Empty));
            cliente.IIBB = this.txtIngresosBrutos.Text;
            cliente.domicilio = txtDomicilio.Text;

            //combos
            //cliente.grupo = (GrupoClienteViewModel)this.cbGrupo.SelectedItem;
            //cliente.nacionalidad = (NacionalidadViewModel)this.cbNacionalidad.SelectedItem;
            //cliente.responsabilidad = (ResponsabilidadIVAViewModel)this.cbResponsabilidad.SelectedItem;
            //cliente.sexo = cbSexo.SelectedValue.ToString();
            //cliente.subGrupo = (SubGrupoClienteViewModel)this.cbSubgrupo.SelectedItem;
            //cliente.tipoDeDocumento = (TipoDeDocumentoViewModel)this.cbTipoDoc.SelectedItem;
            //cliente.estadoCivil = (EstadoCivilViewModel)this.cbEstadoCivil.SelectedItem;
            //cliente.provincia = (ProvinciaViewModel)this.cbProvincia.SelectedItem;
            //cliente.localidad = (LocalidadViewModel)this.cbLocalidad.SelectedItem;

            cliente.GrupoClienteID = (int)this.cbGrupo.SelectedValue;
            cliente.NacionalidadID = (int)this.cbNacionalidad.SelectedValue;
            cliente.ResponsabilidadIVAID = (int)this.cbResponsabilidad.SelectedValue;
            cliente.sexo = cbSexo.SelectedValue.ToString();
            cliente.SubGrupoClienteID = (int)this.cbSubgrupo.SelectedValue;
            cliente.TipoDeDocumentoID = (int)this.cbTipoDoc.SelectedValue;
            cliente.EstadoCivilID = (int)this.cbEstadoCivil.SelectedValue;
            cliente.ProvinciaID = (int)this.cbProvincia.SelectedValue;
            cliente.LocalidadID = (int)this.cbLocalidad.SelectedValue;

            //otros
            cliente.nacimiento = this.dtFechaNacimiento.Value;

            #endregion

            #region VALIDACIONES

            ValidationResult result = clienteValidator.Validate(cliente);

            //pregutnamos si nuestra validacion fue exitosa
            if (!result.IsValid)
            {
                this.mensajeError(Validator.GetErrorMessages(result.Errors));
                return;
            }

            #endregion


            var inserto = clienteController.SaveCliente(cliente);
            if (inserto == string.Empty)
            {
                this.mensajeOK("Se han salvado los datos exitosamente");
            }
            else
            {
                this.mensajeError("Error al guardar: " + inserto);
                return;
            }

            cliente = null;

            this.EvitarEscritura();
            ControlesExtensiones.LimpiarControles(this);

            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void frmEditarCliente_FormClosed(object sender, FormClosedEventArgs e)
        {
            frmGestionarCliente frm = frmGestionarCliente.GetInstancia();

            if (this.DialogResult == DialogResult.OK)
            {
                frm.CargarGrilla("");
            }

            //liberamos la instancia de frmEditarCliente
            _instancia = null;
        }
    }
}
