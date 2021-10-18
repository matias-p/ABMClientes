namespace Dominio.SeedWork
{
    public interface ISaveRepository<T> where T : class
    {
        void Save(T t);
    }
}
