using System;

namespace Dominio.SeedWork
{
    public interface IUnitOfWorkAdapter : IDisposable
    {
        IUnitOfWorkRepository Repositories { get; }
        bool SaveChanges();
    }
}
