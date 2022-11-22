--fill cities
INSERT INTO cities (name, population, crimeRate, propertyTaxRate, incomeTaxRate)
VALUES ('Rochester', 13035, 359.2, 13.3, 60);
INSERT INTO cities (name, population, crimeRate, propertyTaxRate, incomeTaxRate)
VALUES ('Auburn Hills', 62769, 2035.9, 22.75, 15);
INSERT INTO cities (name, population, crimeRate, propertyTaxRate, incomeTaxRate)
VALUES ('Pontiac', 61606, 3258.7, 16.9, 10);
INSERT INTO cities (name, population, crimeRate, propertyTaxRate, incomeTaxRate)
VALUES ('Troy', 87294, 968.7, 16, 43);
INSERT INTO cities (name, population, crimeRate, propertyTaxRate, incomeTaxRate)
VALUES ('Bloomfield Hills', 3995, 498.5, 13.73, 60);
--fill some zip codes
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48326, 62632, .035) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48340, 51562, .063) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (49077, 41150, .072) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48306, 154228, .029) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48307, 111260, .029) ;
INSERT INTO zip (zip, unemploymentRate)
VALUES (48321, .059) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48098, 175282, .02) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48085, 133585, .02) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48084, 119584, .02) ;
INSERT INTO zip (zip, averageIncome, unemploymentRate)
VALUES (48301, 213167, .017) ;
--fill some school district info. some fake
INSERT INTO schoolDistrict (name)
VALUES ('Avondale') ;
INSERT INTO schoolDistrict (name)
VALUES ('School district of Pontiac') ;
INSERT INTO schoolDistrict (name)
VALUES ('Troy Public Schools') ;
INSERT INTO schoolDistrict (name)
VALUES ('Bloomfield Hills Public Schools') ;
INSERT INTO schoolDistrict (name)
VALUES ('Rochester Community Schools') ;

--fill fake apt complexes
INSERT INTO apartmentComplexes (ComplexID, name, OfficeAddress, OfficePhone)
VALUES (25,'Willow Hill Apartments', '6522 W Second st', 2483491234);
INSERT INTO apartmentComplexes (ComplexID, name, OfficeAddress, OfficePhone)
VALUES (10,'Lake Front Apartments', '5810 Lakeshore Dr', 5861234567);
INSERT INTO apartmentComplexes (ComplexID, name, OfficeAddress, OfficePhone)
VALUES (13,'Forest View', '8976 Chapel Rd', 5861345678);
INSERT INTO apartmentComplexes (ComplexID, name, OfficeAddress, OfficePhone)
VALUES (12,'Blissful Creek Apartments', '725 S Michigan Dr', 8101234567);
INSERT INTO apartmentComplexes (ComplexID, name, OfficeAddress, OfficePhone)
VALUES (14,'Fox Run', '987 Adams Rd', 2485678910);

--fill some apts, must enter as home first due to foreign key
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (60,'6522 W Second st', 600, 1, 2, 1, 0, 'Pontiac', 49077, 'School district of Pontiac');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (60, 2, 'Y', 826, 25);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (61,'6522 W Second st', 600, 1, 2, 1, 0, 'Pontiac', 49077, 'School district of Pontiac');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (61, 3, 'Y', 815, 25);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (70,'5810 Lakeshore Dr', 700, 1, 1, 1, 0, 'Rochester', 48306, 'Avondale');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (70, 1, 'N', 989, 10);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (71,'5810 Lakeshore Dr', 820, 1, 2, 2, 0, 'Rochester', 48306, 'Avondale');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (71, 1, 'N', 1120, 10);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (80,'8976 Chapel Rd', 715, 1, 1, 1, 0, 'Rochester', 48306, 'Avondale');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (80, 1, 'Y', 925, 13);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (81,'8976 Chapel Rd', 900, 1, 2, 1, 0, 'Rochester', 48306, 'Avondale');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (81, 1, 'Y', 1150, 13);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (90,'725 S Michigan Dr', 900, 1, 2, 2, 0, 'Bloomfield Hills', 48301, 'Bloomfield Hills Public Schools');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (90, 1, 'N', 4000, 12);
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, city, zip, schoolDistrict)
VALUES (91,'725 S Michigan Dr', 700, 1, 1, 1, 0, 'Bloomfield Hills', 48301, 'Bloomfield Hills Public Schools');
INSERT INTO apartments (HomeId, FloorNr, PetsOK, Rent, ComplexID)
VALUES (91, 1, 'N', 2000, 12);

--fill some more homes
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (100,'352 Adams Rd', 5000, 2, 3, 2, 1, .5, 2005, 'Rochester', 48306, 'Avondale');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (101,'1645 Chicago Ave', 9000, 2, 5, 3, 1, .75, 1990, 'Bloomfield Hills', 48301, 'Bloomfield Hills Public Schools');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (102,'78 Hill dr', 4000, 1, 3, 2, 1, .4, 2004, 'Bloomfield Hills', 48301, 'Bloomfield Hills Public Schools');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (103,'394 Forest rd', 6000, 1, 3, 2, 1, .4, 2000, 'Bloomfield Hills', 48301, 'Bloomfield Hills Public Schools');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (104,'276 Riley Dr', 5500, 2, 3, 2, 1, .3, 2010, 'Rochester', 48306, 'Avondale');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (105,'331 John St', 3000, 1, 2, 1, 1, .3, 1975, 'Rochester', 48306, 'Avondale');
INSERT INTO homes (HomeId, Address, Floorspace, Floors, Bedrooms, FullBathrooms, HalfBathrooms, Landsize, YearConstructed, city, zip, schoolDistrict)
VALUES (106,'285 Philly St', 3000, 1, 2, 1, 1, .3, 1980, 'Pontiac', 49077, 'School district of Pontiac');
--fill some appliances
INSERT INTO appliances (modelNr, make, name, description)
VALUES (455, 'Maytag', 'Maytag Washer/Dryer Stack', 'Maytag Washer/Dryer stack combo. Washer includes hot, warm, or cold water, and light, delicate, or heavy wash settings. Easy pull out tray for detergent and fabric softener. Dryer includes variable time settings, and an easy to clean lent trap');
INSERT INTO appliances (modelNr, make, name, description)
VALUES (456, 'Maytag', 'Maytag Dishwasher', 'Multi level settings for any mess!');
INSERT INTO appliances (modelNr, make, name, description)
VALUES (457, 'Maytag', 'Maytag Washer', 'Washer includes hot, warm, or cold water, and light, delicate, or heavy wash settings');
INSERT INTO appliances (modelNr, make, name, description)
VALUES (458, 'Maytag', 'Maytag Dryer', 'includes variable time and heat settings, and an easy to clean lent trap!');
--fill some includes(home includes appliance)
INSERT INTO includes (homeid, modelNr)
VALUES (100, 455);
INSERT INTO includes (homeid, modelNr)
VALUES (100, 456);
INSERT INTO includes (homeid, modelNr)
VALUES (103, 456);
INSERT INTO includes (homeid, modelNr)
VALUES (103, 455);
INSERT INTO includes (homeid, modelNr)
VALUES (104, 456);
INSERT INTO includes (homeid, modelNr)
VALUES (104, 455);

INSERT INTO owners (personId)
VALUES (1);
INSERT INTO owners (personId)
VALUES (3);
INSERT INTO owners (personId)
VALUES (12);
INSERT INTO owners (personId)
VALUES (50);
INSERT INTO owners (personId)
VALUES (52);
INSERT INTO owners (personId)
VALUES (333);