CREATE TABLE client 
(
   id SERIAL PRIMARY KEY,
   age INTEGER,
   job TEXT
   marital TEXT
   education TEXT
   credit_default BOOLEAN
   housing BOOLEAN
   loan BOOLEAN
);
\copy client from 'client.csv' DELIMITER ',' CSV HEADER
                 
CREATE TABLE campaign
(
   campaign_id SERIAL PRIMARY KEY,
   client_id SERIAL,
   number_contacts INTEGER,
   contact_duration INTEGER,
   pdays INTEGER, 
   previous_campaign_contacts INTEGER,
   previous_outcome BOOLEAN,
   campaign_outcome BOOLEAN,
   last_contact_date DATE
);
\copy campaign from 'campaign.csv' DELIMITER ',' CSV HEADER
                 
CREATE TABLE economics
(
   client_id SERIAL,
   emp_var_rate FLOAT,
   cons_price_idx FLOAT,
   euribor_three_months FLOAT,
   number_employed FLOAT
);
\copy economics from 'economics.csv' DELIMITER ',' CSV HEADER


ALTER TABLE economics ADD FOREIGN KEY (client_id) REFERENCES client (id);

ALTER TABLE campaign ADD FOREIGN KEY (client_id) REFERENCES client (id);
