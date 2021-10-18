namespace Dominio.Entidades.ConfiguracionFiscal
{
    public class NumeradoresPorPuntoDeVenta
    {
        public int ID { get; set; }

        public PuntoDeVenta PuntoDeVenta { get; set; }
        public int PuntoDeVentaID { get; set; }

        public long proximoComprobanteFiscalA { get; set; }

        public long proximoComprobanteFiscalB { get; set; }

        public long proximoNotaDeCreditoA { get; set; }

        public long proximoNotaDeCreditoBC { get; set; }

        public long proximoNotaDeDebitoA { get; set; }

        public long proximoNotaDeDebitoBC { get; set; }

        public long proximoNDI { get; set; }

        public long proximoNCI { get; set; }

    }
}
