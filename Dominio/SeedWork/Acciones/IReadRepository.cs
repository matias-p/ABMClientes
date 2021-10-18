using System.Collections.Generic;

namespace Dominio.SeedWork
{
    public interface IReadRepository<C, P, R> where C : class
    {
        IEnumerable<C> GetAll();//C=Class
        C Get(P id);//P=Parameter

        C LoadEntity(R dr);//R=Reader
    }
}
