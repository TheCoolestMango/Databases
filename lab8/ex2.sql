BEGIN TRANSACTION;
	UPDATE account
		SET credit = credit - 500
		WHERE id = 1;
	UPDATE account
		SET credit = credit + 500
		WHERE id = 3;
	INSERT INTO ledger
		VALUES (100,1,3,0,500,to_date('2021-03-01','yyyy-mm-dd'));
	Savepoint T1;

	UPDATE account
		SET credit = credit - 730
		WHERE id = 2;
	UPDATE account
		SET credit = credit + 30
		WHERE id = 4;
	UPDATE account
		SET credit = credit + 700
		WHERE id = 1;
	INSERT INTO ledger
		VALUES (200,2,1,30,700,to_date('2021-03-02','yyyy-mm-dd'));
	Savepoint T2;

	UPDATE account
		SET credit = credit - 130
		WHERE id = 2;
	UPDATE account
		SET credit = credit + 30
		WHERE id = 4;
	UPDATE account
		SET credit = credit + 100
		WHERE id = 3;
	INSERT INTO ledger
		VALUES (300,2,3,30,100,to_date('2021-03-03','yyyy-mm-dd'));
	Savepoint T3;
COMMIT TRANSACTION;

select * from account
