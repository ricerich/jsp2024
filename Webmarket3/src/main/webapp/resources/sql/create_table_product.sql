CREATE TABLE  product(
	p_id VARCHAR2(50) NOT NULL,
	p_name VARCHAR2(50),
	p_unitPrice  number,
	p_description VARCHAR2(1000),
   	p_category VARCHAR2(50),
	p_manufacturer VARCHAR2(50),
	p_unitsInStock number,
	p_condition VARCHAR2(50),
	p_fileName  VARCHAR2(50),
	PRIMARY KEY (p_id)
) ;