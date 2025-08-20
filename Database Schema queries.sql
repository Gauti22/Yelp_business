CREATE TABLE business
(
    businessid character varying(50) primary key,
    businessname character varying(300),
    streetaddress character varying(300), 
    city character varying(100) ,
	state char(3),
	postalcode character varying(9),
    latitude numeric(10,7),
    longitude numeric(16,8),
	averagereviews decimal (2,1),
    numberofreviews integer,
    isthebusinessopen integer
);

CREATE TABLE businessattributes
(
    businessid character varying(50) ,
    attributeName character varying(50),
    attributeValue text, 
	foreign key (businessid) references business(businessid) 
);

CREATE TABLE businesscategories
(
    businessid character varying(50) ,
    categoryName character varying(50),
    foreign key (businessid) references business(businessid) 
);

CREATE TABLE business_hours
(
    businessid character varying(50) ,
    Dayoftheweek character varying(50),
    openingTime time, 
	closingTime time
	foreign key (businessid) references business(businessid) 
);

CREATE TABLE users
(
	userid char(22) primary key ,
	Name varchar(300),
	Reviewsuserleft int,
	Yelpjoin timeSTAMP,
	usefulvotessentbyuser int,
	funnyvotessentbyuser int,
	coolvotessentbyuser int,
	numberoffans int,
	averageratingofuserreviews decimal (3,2),
	numberofhotcomplimentsrecevidebyuser int,
	numberofmorecomplimentsrecevidebyuser int,
	numberofprofilecomplimentsrecevidebyuser int,
	numberofcutecomplimentsrecevidebyuser int,
	numberoflistcomplimentsrecevidebyuser int,
	numberofnotecomplimentsrecevidebyuser int,
	numberofplaincomplimentsrecevidebyuser int,
	numberofcoolcomplimentsrecevidebyuser int,
	numberoffunnycomplimentsrecevidebyuser int,
	numberofwritercomplimentsrecevidebyuser int,
	numberofphotocomplimentsrecevidebyuser int
);

CREATE TABLE reviews
(	
	reviewId char(22) primary key,
	userId char(22),
    businessid character varying(50) ,
    userRating decimal(2,1),
	NumberofUsefulReviews int,
	NumberoffunnyReviews int,
	NumberofCoolReviews int,
	ReviewText varchar(300),
	Review TIMESTAMP,
	foreign key (businessid) references business(businessid), 
	 
);

CREATE TABLE tips
(	
	userId char(22),
    businessid character varying(50) ,
    text varchar(300),
	timetipwasleft TimeStamp,
	Numberofcomplimentsthetiprecevid int,
	foreign key (businessid) references business(businessid)
);

CREATE TABLE usereliteyears
(	
	userId char(22),
	Year_column int,
    
	foreign key (userId) references users(userId) 
);


