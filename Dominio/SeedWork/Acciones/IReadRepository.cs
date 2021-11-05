using System.Collections.Generic;
using System.Threading.Tasks;

namespace Dominio.SeedWork
{
    public interface IReadRepository<C, P, R> where C : class
    {
        Task<IEnumerable<C>> GetAll();//C=Class
        Task<C> Get(P id);//P=Parameter

        C LoadEntity(R dr);//R=Reader
    }
}
