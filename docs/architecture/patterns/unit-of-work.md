# Unit of work

Application tier controls transactions via `UnitOfWork.Run(ctx, fn)` in platform or repository `WithTx`.

One use case `Execute` = one transactional boundary unless documented otherwise.
