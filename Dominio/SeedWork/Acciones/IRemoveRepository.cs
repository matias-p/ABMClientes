namespace Dominio.SeedWork
{
    public interface IRemoveRepository<T>
    {
        void Remove(T id);
    }
}
