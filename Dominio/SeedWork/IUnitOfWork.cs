namespace Dominio.SeedWork
{
    public interface IUnitOfWork
    {
        IUnitOfWorkAdapter Create();
    }
}
