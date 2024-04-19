-- Insert data into Farmers table
insert into Farmers(farmer_id,name,address,phone_number,email) values(1,'Abu','Dhaka','01234567911','abu@gmail.com');
insert into Farmers(farmer_id,name,address,phone_number,email) values(2,'Rakib','Dhaka','01234247951','rakib@gmail.com');
insert into Farmers(farmer_id,name,address,phone_number,email) values(3,'Motin','Khulna','01223567978','motin@gmail.com');
insert into Farmers(farmer_id,name,address,phone_number,email) values(4,'Sharif','Khulna','01662366993','sharif@gmail.com');
insert into Farmers(farmer_id,name,address,phone_number,email) values(5,'Latif','Barishal','01662346739','latif@gmail.com');
insert into Farmers(farmer_id,name,address,phone_number,email) values(6,'Aftab','Chittagong','01655234656','aftab@gmail.com');
-- Insert data into farm table
insert into Farms(farm_id,farm_name,location,farm_size) values(1,'AgroFarm','Chittagong',5.6);
insert into Farms(farm_id,farm_name,location,farm_size) values(2,'EasyFarm','Dinajpur',4.6);
insert into Farms(farm_id,farm_name,location,farm_size) values(3,'GreenTech','Sylhet',7.6);
insert into Farms(farm_id,farm_name,location,farm_size) values(4, 'Natural Agro Farm','Khulna',2.5);
insert into Farms(farm_id,farm_name,location,farm_size) values(5, 'Agro Biotech','Khulna',3.5);
--Insert data into farmer_farm table
insert into Farmer_Farm(farmer_id,farm_id) values(1,2);
insert into Farmer_Farm(farmer_id,farm_id) values(1,3);
insert into Farmer_Farm(farmer_id,farm_id) values(1,5);
insert into Farmer_Farm(farmer_id,farm_id) values(3,2);
insert into Farmer_Farm(farmer_id,farm_id) values(2,3);
insert into Farmer_Farm(farmer_id,farm_id) values(4,5);
insert into Farmer_Farm(farmer_id,farm_id) values(5,2);
insert into Farmer_Farm(farmer_id,farm_id) values(3,3);
insert into Farmer_Farm(farmer_id,farm_id) values(2,4);

-- Insert data into Crops table
insert into crops (crop_id, crop_name, crop_type, planting_season) 
values (1, 'Corn', 'Grain', 'Spring');

insert into crops (crop_id, crop_name, crop_type, planting_season) 
values (2, 'Tomato', 'Vegetable', 'Summer');

insert into crops (crop_id, crop_name, crop_type, planting_season) 
values (3, 'Wheat', 'Grain', 'Fall');

insert into crops (crop_id, crop_name, crop_type, planting_season) 
values (4, 'Apple', 'Fruit', 'Fall');

-- Insert data into Fields table
insert into fields (field_id, farm_id, field_name, field_size, crop_id, planting_date) 
values (1, 1, 'Cornfield 1', 10.25, 1, to_date('2024-03-15', 'yyyy-mm-dd'));

insert into fields (field_id, farm_id, field_name, field_size, crop_id, planting_date) 
values (2, 2, 'Tomato Field', 8.75, 2, to_date('2024-05-01', 'yyyy-mm-dd'));

insert into fields (field_id, farm_id, field_name, field_size, crop_id, planting_date) 
values (3, 3, 'Wheat Field', 15.50, 3, to_date('2024-09-10', 'yyyy-mm-dd'));

insert into fields (field_id, farm_id, field_name, field_size, crop_id, planting_date) 
values (4, 4, 'Apple Orchard', 20.00, 4, to_date('2024-10-05', 'yyyy-mm-dd'));

-- Insert data into Equipment table
insert into equipment (equipment_id, farmer_id, equipment_type, description, purchase_date) 
values (1, 1, 'Tractor', 'Tractor Model XYZ', to_date('2023-01-15', 'yyyy-mm-dd'));

insert into equipment (equipment_id, farmer_id, equipment_type, description, purchase_date) 
values (2, 2, 'Harvester', 'Combine Harvester Model ABC', to_date('2022-05-20', 'yyyy-mm-dd'));

insert into equipment (equipment_id, farmer_id, equipment_type, description, purchase_date) 
values (3, 3, 'Plow', 'Farm Plow Model DEF', to_date('2023-09-05', 'yyyy-mm-dd'));

insert into equipment (equipment_id, farmer_id, equipment_type, description, purchase_date) 
values (4, 4, 'Seeder', 'Seed Drill Model GHI', to_date('2022-03-10', 'yyyy-mm-dd'));

-- Insert data into Harvests table using SELECT statement
insert into harvests (harvest_id, field_id, crop_id, harvest_date, yield) 
select 1, 1, 1, to_date('2024-07-01', 'yyyy-mm-dd'), 150 from dual
union all
select 2, 2, 2, to_date('2024-08-15', 'yyyy-mm-dd'), 200 from dual
union all
select 3, 3, 3, to_date('2024-11-01', 'yyyy-mm-dd'), 180 from dual
union all
select 4, 4, 4, to_date('2024-10-20', 'yyyy-mm-dd'), 250 from dual;

-- insert data into the sales table
insert into sales (sale_id, harvest_id, sale_date, sale_amount) values(1,3,to_date('2024-07-05', 'yyyy-mm-dd'),550);
insert into sales (sale_id, harvest_id, sale_date, sale_amount) values(2,2,to_date('2024-04-25', 'yyyy-mm-dd'),1050);
insert into sales (sale_id, harvest_id, sale_date, sale_amount) values(3,4,to_date('2024-05-12', 'yyyy-mm-dd'),435);
insert into sales (sale_id, harvest_id, sale_date, sale_amount) values(4,1,to_date('2024-01-05', 'yyyy-mm-dd'),790);


