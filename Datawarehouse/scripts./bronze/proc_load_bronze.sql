CREATE or REPLACE PROCEDURE bronze.load_bronze()
LANGUAGE PLPGSQL
AS $$
DECLARE 

	   start_time TIMESTAMP;
	   end_time TIMESTAMP;
	   batch_start_time TIMESTAMP;
	   batch_end_time TIMESTAMP;
	   duration_seconds NUMERIC;
	   

	
BEGIN 


	  batch_start_time := clock_timestamp();

	  RAISE NOTICE 'Loading Bronze Layer';

	  RAISE NOTICE 'Loading CRM Tables';


	  start_time := clock_timestamp();


	  TRUNCATE TABLE bronze.crm_cust_info;
	  COPY bronze.crm_cust_info (cst_id,cst_key,cst_firstname,cst_lastname,
								cst_marital_status,cst_gndr,cst_create_date)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_crm\cust_info.csv'
	  DELIMITER ','
	  CSV
	  HEADER;

	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	  RAISE NOTICE '>> -------------';



	  start_time := clock_timestamp();

	  TRUNCATE TABLE bronze.crm_prd_info;
	  COPY bronze.crm_prd_info (prd_id,prd_key,prd_nm,prd_cost,prd_line,prd_start_dt,prd_end_dt)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_crm\prd_info.csv'
	  DELIMITER ','
	  CSV HEADER;


	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	  RAISE NOTICE '>> -------------';


	  start_time := clock_timestamp();

	  TRUNCATE TABLE bronze.crm_sales_details;
	  COPY bronze.crm_sales_details (sls_ord_num,sls_prd_key,sls_cust_id,sls_order_dt,sls_ship_dt,
								   sls_due_dt,sls_sales,sls_quantity,sls_price)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_crm\sales_details.csv'
	  DELIMITER ','
	  CSV HEADER;

	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	  RAISE NOTICE '>> -------------';


	  
	  RAISE NOTICE 'Loading ERP Tables';
	  


	  start_time := clock_timestamp();

	  TRUNCATE TABLE bronze.erp_loc_a101;
	  COPY bronze.erp_loc_a101 (cid,cntry)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_erp\LOC_A101.csv'
	  DELIMITER ','
	  CSV HEADER;

	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	  RAISE NOTICE '>> -------------';


	  start_time := clock_timestamp();

	  TRUNCATE TABLE bronze.erp_cust_az12;
	  COPY bronze.erp_cust_az12 (cid,bdate,gen)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_erp\CUST_AZ12.csv'
	  DELIMITER ','
	  CSV HEADER;

	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	  RAISE NOTICE '>> -------------';

	  start_time := clock_timestamp();

	  TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	  COPY bronze.erp_px_cat_g1v2 (id,cat,subcat,maintenance)
	  FROM 'C:\Users\karan\OneDrive\Desktop\SQL Datawarehouse\Raw Data Sources\source_erp\PX_CAT_G1V2.csv'
	  DELIMITER ','
	  CSV HEADER;

	  end_time := clock_timestamp();
	  duration_seconds := EXTRACT(EPOCH FROM (end_time - start_time));
	  RAISE NOTICE '>> Load Duration: % seconds', duration_seconds;
	   


	  batch_end_time := clock_timestamp(); 
	  duration_seconds := EXTRACT(EPOCH FROM (batch_end_time - batch_start_time));
	  RAISE NOTICE '==========================================';
	  RAISE NOTICE '>> Loading Bronze Layer is Completed';
	  RAISE NOTICE '>> Total Load Duration: % seconds ', duration_seconds;
	  RAISE NOTICE '==========================================';
	  

	  
EXCEPTION 
	  WHEN others THEN 
			RAISE NOTICE '==========================================';
			RAISE NOTICE '❌ ERROR OCCURED DURING LOADING BRONZE LAYER';
			RAISE NOTICE 'Error Message %', SQLERRM;
			RAISE NOTICE 'Error SQL State Code: %' , SQLSTATE;
			RAISE NOTICE '==========================================';
	  



END
$$

CALL bronze.load_bronze();



