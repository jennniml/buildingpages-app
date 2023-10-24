-- Populate management DB table
INSERT INTO management (id, name, street, area, phone, url)
VALUES
(1, 'Young Property Management Co', '123 Main Street', 'New York, New York 10000', '123-456-7890', 'www.propertymanagementco.com'),
(2, 'Bold Crew Management Property', '555 Cool Avenue', 'Queens, New York 11106', '555-444-3333', 'www.boldcrewmanagemnt.com'),
(3, 'Urban Oasis Property Management', '789 Park Road', 'Brooklyn, New York 11201', '987-654-3210', 'www.urbanoasisproperty.com'),
(4, 'Metropolitan Real Estate Management', '456 Downtown Boulevard', 'Manhattan, New York 10022', '777-888-9999', 'www.metropolitanrealestate.com');

-- Populate buildings DB table
INSERT INTO buildings (id, name, address, neighborhood, description, image, management_id)
VALUES
(1, 'Mountain View Manor', '222 Alpine Road', 'Highland Peaks', 'Nestled in the mountains, this upscale manor provides breathtaking views of the surrounding peaks and valleys.', 'http://localhost:8080/buildings/image/bldgimage1.jpg', 1),
(2, 'Dreamland Apartments', '1000 Fantasy Land', 'Imagination Hills', 'This apartment building is a place of imaginations only in your dreams in Fantasy Land.', 'http://localhost:8080/buildings/image/bldgimage2.jpg', 1),
(3, 'Silkwood Heights', '987 Silkwood Lane', 'Textile Terrace', 'Elegant apartments designed with a silk-themed interior, offering a luxurious living experience.', 'http://localhost:8080/buildings/image/bldgimage3.jpg', 1),
(4, 'The Renaissance Residence', '132 Artisan Street', 'Cultural Quarter', 'A historically preserved building transformed into artist lofts, celebrating the neighborhood''s rich cultural heritage.', 'http://localhost:8080/buildings/image/bldgimage4.jpg', 1),
(5, 'Harbor Haven Condos', '676 Marina Road', 'Nautical Harbor', 'Waterfront condominiums with marina access, perfect for boating and ocean enthusiasts.', 'http://localhost:8080/buildings/image/bldgimage5.jpg', 1),
(6, 'Sunflower Suites', '543 Sunshine Court', 'Meadowview Meadows', 'Bright and cheerful apartments with sunflower-themed decor and a community garden for residents.', 'http://localhost:8080/buildings/image/bldgimage6.jpg', 1),
(7, 'The Ivy Residence', '112 Ivy Lane', 'IIvywood Estates', 'A classic colonial-style mansion turned into upscale apartments, surrounded by ivy-covered walls.', 'http://localhost:8080/buildings/image/bldgimage1.jpg', 1),
(8, 'Sapphire Skies Tower', '890 Skyline Boulevard', 'Azure Vista', 'An exclusive luxury high-rise with a rooftop pool, spa, and penthouse suites overlooking the city skyline.', 'http://localhost:8080/buildings/image/bldgimage2.jpg', 1);

INSERT INTO buildings (id, name, address, neighborhood, description, image, management_id)
VALUES
(9, 'Riverside Retreat', '567 Waterfront Drive', 'Serene Shores', 'A riverside oasis offering scenic water views, private docks, and a peaceful escape from the bustling city.', 'http://localhost:8080/buildings/image/bldgimage3.jpg', 2),
(10, 'Aurora Plaza', '345 Starlight Avenue', 'Celestial Heights', 'A futuristic, energy-efficient building known for its stunning LED light displays, creating a mesmerizing nightly spectacle.', 'http://localhost:8080/buildings/image/bldgimage4.jpg', 2),
(11, 'Greenleaf Gardens', '234 Meadowview Lane', 'Eco-Park Heights', 'A sustainable living community surrounded by lush gardens and eco-friendly amenities.', 'http://localhost:8080/buildings/image/bldgimage5.jpg', 2),
(12, 'The Phoenix Lofts', '101 Firebird Street', 'Artisan District', 'A converted warehouse turned into chic industrial-style lofts for creative professionals.', 'http://localhost:8080/buildings/image/bldgimage6.jpg', 2),
(13, 'Ocean Breeze Apartments', '789 Coastal Avenue', 'Seaside Haven', 'Beachfront apartments with a soothing sea breeze and coastal access, perfect for a relaxed lifestyle.', 'http://localhost:8080/buildings/image/bldgimage1.jpg', 2),
(14, 'Maplewood Manor', '456 Autumn Lane', 'Maplewood Estates', 'A charming, historic residence featuring elegant architecture, nestled in a serene, tree-lined neighborhood.', 'http://localhost:8080/buildings/image/bldgimage2.jpg', 2),
(15, 'The Crystal Tower', '123 Shimmering Way', 'ISparkling Heights', 'A modern skyscraper with stunning glass facades, offering panoramic views of the city and luxurious penthouse apartments.', 'http://localhost:8080/buildings/image/bldgimage3.jpg', 2);

INSERT INTO buildings (id, name, address, neighborhood, description, image, management_id) VALUES
(16, 'Seaside Serenity Apartments', '123 Oceanfront Avenue', 'Beachfront Bliss', 'Experience the serenity of oceanfront living in these luxurious apartments with stunning sea views.', 'http://localhost:8080/buildings/image/bldgimage4.jpg', 3),
(17, 'Urban Oasis Towers', '456 Downtown Boulevard', 'Metropolis Heights', 'A modern urban oasis with state-of-the-art amenities, located in the heart of the bustling city.', 'http://localhost:8080/buildings/image/bldgimage5.jpg', 3),
(18, 'Maplewood Manor', '456 Autumn Lane', 'Maplewood Estates', 'A charming, historic residence featuring elegant architecture, nestled in a serene, tree-lined neighborhood.', 'http://localhost:8080/buildings/image/bldgimage6.jpg', 3),
(19, 'Riverside Retreat', '567 Waterfront Drive', 'Serene Shores', 'A riverside oasis offering scenic water views, private docks, and a peaceful escape from the bustling city.', 'http://localhost:8080/buildings/image/bldgimage1.jpg', 3),
(20, 'Eco-Park Heights', '234 Meadowview Lane', 'Eco-Park Heights', 'A sustainable living community surrounded by lush gardens and eco-friendly amenities.', 'http://localhost:8080/buildings/image/bldgimage2.jpg', 3),
(21, 'Aurora Plaza', '345 Starlight Avenue', 'Celestial Heights', 'A futuristic, energy-efficient building known for its stunning LED light displays, creating a mesmerizing nightly spectacle.', 'http://localhost:8080/buildings/image/bldgimage3.jpg', 3),
(22, 'Cobblestone Court', '333 Old Town Square', 'Historic District', 'A charming cobblestone-paved courtyard surrounded by vintage townhouses, preserving the charm of a bygone era.', 'http://localhost:8080/buildings/image/bldgimage4.jpg', 3);

-- Populate apartments DB table
INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1500.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 1),
('B202', 1800.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage2.png', 1),
('C303', 1200.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage3.png', 1),
('D404', 2000.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage4.png', 1),
('E505', 2500.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 1);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1200.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage5.png', 2),
('B205', 1500.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage6.png', 2),
('C306', 950.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage1.png', 2);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1500.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage2.png', 3),
('B202', 2000.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 3),
('C303', 1800.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage4.png', 3),
('D404', 2200.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 3);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('E505', 2500.00, 4, 2, 'http://localhost:8080/apartments/image/aptimage6.png', 4),
('F606', 1900.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage1.png', 4),
('G707', 2800.00, 4, 3, 'http://localhost:8080/apartments/image/aptimage2.png', 4),
('H808', 2100.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 4);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('I909', 1700.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage4.png', 5),
('J1010', 2300.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 5);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id) VALUES
('A101', 1500.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage6.png', 6),
('B203', 1800.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 6),
('C304', 1200.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage2.png', 6),
('D102', 1600.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 6),
('E405', 2200.00, 4, 3, 'http://localhost:8080/apartments/image/aptimage4.png', 6);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1500.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 7),
('B202', 1200.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage6.png', 7),
('C303', 1800.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 7);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('D404', 900.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage2.png', 8),
('E505', 2200.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 8);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('F606', 1300.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage4.png', 9),
('G707', 1600.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 9),
('H808', 1100.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage6.png', 9),
('I909', 1900.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 9);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('J1010', 1400.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage2.png', 10);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1500.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 11),
('B205', 1200.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage4.png', 11),
('C301', 1800.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 11),
('D102', 1100.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage6.png', 11),
('E202', 1600.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 11);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id)
VALUES
('A101', 1200.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage2.png', 12),
('B205', 1500.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 12),
('C303', 1800.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage4.png', 12),
('D102', 1350.00, 1, 1, 'http://localhost:8080/apartments/image/aptimage5.png', 12),
('E401', 2000.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage6.png', 12);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id) VALUES
('F606', 1700.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage1.png', 13),
('G707', 1900.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage2.png', 13);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id) VALUES
('H808', 2100.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 14),
('I909', 1400.00, 2, 1, 'http://localhost:8080/apartments/image/aptimage4.png', 14),
('J1010', 2200.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage5.png', 14);

INSERT INTO apartments (unit_num, price, bed, bath, image, building_id) VALUES
('F606', 1700.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage6.png', 15),
('G707', 1900.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage1.png', 15),
('H808', 2200.00, 2, 2, 'http://localhost:8080/apartments/image/aptimage2.png', 15),
('I909', 2600.00, 3, 2, 'http://localhost:8080/apartments/image/aptimage3.png', 15);
