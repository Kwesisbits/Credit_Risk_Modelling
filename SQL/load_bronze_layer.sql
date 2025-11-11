CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN
	TRUNCATE TABLE bronze.application_train
	BULK INSERT bronze.application_train
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\application_train.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIELDQUOTE = '"',
		TABLOCK
	);

	TRUNCATE TABLE bronze.previous_application
	BULK INSERT bronze.previous_application
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\previous_application.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);

	
	TRUNCATE TABLE bronze.credit_card_balance
	BULK INSERT bronze.credit_card_balance
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\credit_card_balance.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);

	TRUNCATE TABLE bronze.installments_payments
	BULK INSERT bronze.installments_payments
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\installments_payments.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);

	
	TRUNCATE TABLE bronze.POS_CASH_balance
	BULK INSERT bronze.POS_CASH_balance
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\POS_CASH_balance.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);


	TRUNCATE TABLE bronze.bureau
	BULK INSERT bronze.bureau
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\bureau.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);

	TRUNCATE TABLE bronze.bureau_balance
	BULK INSERT bronze.bureau_balance
	FROM "C:\Users\USER\Desktop\home-credit-default-risk\bureau_balance.csv"
	WITH(
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '0x0A',
		FORMAT = 'CSV',
		CODEPAGE = '65001',
		TABLOCK
	);
END

EXEC bronze.load_bronze
