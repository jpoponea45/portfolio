# Options

App Locks
sp_addlock
sp_removelock

## Cron job cleanup
- Sql Agent
- Kubernetes

## Stored proc transaction
- nested transactions
- UPDLOCK


insert into EventLock
select keyid
(
    select top 1000 from Queue with (UPDLOCK, READPAST) group by keyid
)

## Multiple Connections

Connection 1:
begin transaction (must be read committed)
try
{
    get batch, write to EventLock table
    do connection 2 stuff
}
finally
{
    rollback transaction
}
Connection 2:
dequeues by keyids that were locked
(edited)

## Table/Query hits
READPAST - Ignores locked rows
Shared Lock (S) - Prevents concurrent process from updating 
Exclusive Lock (X) - Prevents concurrent process from reading
Update Lock (U) - 
READUNCOMMITTED isolation level
NOLOCK hint


# Stress Testing
https://www.sqlshack.com/sql-server-stress-testing-using-ostress/


# Random Ideas
- ValidUntil (TTL) date on lock records
  - Gives flexibility to calling application. Set your own TTL
  
- SQL Agent
  - Locking becomes more critical.  