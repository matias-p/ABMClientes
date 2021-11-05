using System.Threading.Tasks;

namespace Dominio.SeedWork
{
    public interface ISaveRepository<T> where T : class
    {
        Task Save(T t);
    }
}
