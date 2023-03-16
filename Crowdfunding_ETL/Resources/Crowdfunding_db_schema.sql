CREATE TABLE Subcategory (
    subcategory_id varchar Primary Key  NOT NULL,
    subcategory varchar   NOT NULL
);

CREATE TABLE Category (
    category_id varchar Primary Key   NOT NULL,
    category varchar   NOT NULL
);

CREATE TABLE Contacts (
    contact_id int Primary Key  NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    email varchar   NOT NULL
);

CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar   NOT NULL,
    description varchar   NOT NULL,
    goal real   NOT NULL,
    pledged real   NOT NULL,
    outcome varchar   NOT NULL,
    backers_count int   NOT NULL,
    country varchar   NOT NULL,
    currency varchar   NOT NULL,
    launched_date varchar   NOT NULL,
    end_date varchar   NOT NULL,
    category_id varchar   NOT NULL,
    subcategory_id varchar   NOT NULL,
		foreign key (contact_id) references Contacts(contact_id),
		foreign key (category_id) references Category(category_id),
		foreign key (subcategory_id) references Subcategory(subcategory_id)
);