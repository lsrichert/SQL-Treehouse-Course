--Transactions

--The following begins a transaction and turns autocommit off:

BEGIN; 
--OR
BEGIN TRANSACTION;

--The following commits that transaction, meaning no queries will be committed until you 'end' 
--the transaction with:
COMMIT;
--Once you 'commit', autocommit is automatically turned back on unless you begin another transaction.

--If you decide you want to start over after beginning a transaction without committing, use:
ROLLBACK;
