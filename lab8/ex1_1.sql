BEGIN TRANSACTION;
	UPDATE account
		SET credit = credit - 500
		WHERE id = 1;

	UPDATE account
		SET credit = credit + 500
		WHERE id = 3;
	Savepoint T1;

	UPDATE account
	SET credit = credit - 700
	WHERE id = 2;

	UPDATE account
		SET credit = credit + 700
		WHERE id = 1;
	Savepoint T2;

	UPDATE account
		SET credit = credit - 100
		WHERE id = 2;

	UPDATE account
		SET credit = credit + 100
		WHERE id = 3;
	Savepoint T3;
COMMIT TRANSACTION;

SELECT * FROM account
