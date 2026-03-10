TRUNCATE TABLE brands RESTART IDENTITY CASCADE;
INSERT INTO brands (title, description) 
VALUES
('Samsung', 'Global electronics leader'),
('Apple', 'Premium tech and software'),
('Sony', 'Audio, video and gaming specialist'),
('LG', 'Home appliances and display innovator'),
('Dell', 'Computer and enterprise solutions'),
('Bosch', 'German precision tools and appliances'),
('Nike', 'Performance sports apparel'),
('Logitech', 'Computer peripherals and accessories'),
('Xiaomi', 'Affordable smart technology'),
('Asus', 'Gaming and high-performance hardware'),
('HP', 'Printers and business laptops'),
('Bose', 'High-end audio solutions'),
('Nikon', 'Professional imaging equipment'),
('Dyson', 'Innovative home cleaning technology'),
('Philips', 'Lighting and personal healthcare')
RETURNING *;