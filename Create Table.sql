
create table Farmers (
    farmer_id int not null,
    name varchar(50),
    address varchar(60),
    phone_number varchar(11),
    email varchar(50),
    primary key(farmer_id)	
);
create table Farms (
    farm_id int,
    farmer_id int,
    farm_name varchar(30),
    location varchar(50),
    farm_size decimal(10, 2),
    primary key(farm_id),
    foreign key(farmer_id) references Farmers(farmer_id)
);

create table Crops (
    crop_id int,
    crop_name varchar(20),
    crop_type varchar(25),
    planting_season varchar(20),
    primary key(crop_id) 
);

create table Fields (
    field_id int,
    farm_id int,
    field_name varchar(30),
    field_size decimal(5, 2),
    crop_id int,
    planting_date date,
    primary key(field_id),
    FOREIGN KEY (farm_id) references Farms(farm_id),
    FOREIGN KEY (crop_id) references Crops(crop_id)
);


create table Equipment (
    equipment_id int,
    farmer_id int,
    equipment_type varchar(20),
    description varchar2(250),
    purchase_date date,
    primary key(equipment_id),
    foreign key (farmer_id) references Farmers(farmer_id)
);

create table Harvests (
    harvest_id int,
    field_id int,
    crop_id int,
    harvest_date date,
    yield number(5, 2),
    primary key(harvest_id),
    foreign key (field_id) references Fields(field_id),
    foreign key (crop_id) references Crops(crop_id)
);

create table Sales (
    sale_id int,
    harvest_id int,
    sale_date date,
    sale_amount number(10),
    primary key(sale_id),
    foreign key (harvest_id) references Harvests(harvest_id)
);