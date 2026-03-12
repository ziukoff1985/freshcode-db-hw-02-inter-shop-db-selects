INSERT INTO models (title, description, brand_id)
VALUES
-- Samsung (ID: 1)
('Galaxy S24', 'Flagship', 1),
('Galaxy A54', 'Mid-range', 1), 
('Galaxy Watch 6', 'Wearable', 1), 
('QLED 4K TV', 'Display', 1),
('Galaxy Tab S9', 'Tablet', 1),
-- Apple (ID: 2)
('iPhone 15', 'Flagship', 2), 
('MacBook Pro M3', 'Laptop', 2), 
('iPad Air', 'Tablet', 2), 
('AirPods Max', 'Audio', 2),
('iPhone 15 Pro', 'Flagship', 2),
-- Sony (ID: 3)
('PlayStation 5', 'Gaming', 3), 
('WH-1000XM5', 'Headphones', 3), 
('Alpha 7 IV', 'Camera', 3), 
('Bravia XR', 'TV', 3),
('PS5 Controller', 'Accessory', 3),
-- LG (ID: 4)
('OLED C3', 'TV', 4), 
('InstaView', 'Fridge', 4), 
('Gram 17', 'Laptop', 4),
('Air Fryer XXL', 'Kitchen', 4),
-- Dell (ID: 5)
('XPS 13', 'Laptop', 5), 
('Latitude 5000', 'Business PC', 5), 
('UltraSharp 27', 'Monitor', 5),
('Dell G15', 'Gaming', 5),
-- Bosch (ID: 6)
('Series 6', 'Washing Machine', 6), 
('Unlimited 7', 'Vacuum', 6), 
('EasyDrill 1200', 'Power tool', 6),
-- Nike (ID: 7)
('Air Max', 'Running', 7), 
('Pegasus 40', 'Training', 7), 
('Metcon 9', 'Gym', 7),
-- Logitech (ID: 8)
('MX Master 3S', 'Mouse', 8), 
('G Pro X', 'Keyboard', 8), 
('C920', 'Webcam', 8),
-- Xiaomi (ID: 9)
('Redmi Note 13', 'Phone', 9), 
('Mi Band 8', 'Tracker', 9), 
('Robot Vacuum S10', 'Cleaning', 9),
-- Asus (ID: 10)
('ROG Strix', 'Gaming Laptop', 10), 
('Zenbook S13', 'Ultrabook', 10), 
('RT-AX88U', 'Router', 10),
-- HP (ID: 11)
('LaserJet Pro', 'Printer', 11), 
('Spectre x360', 'Laptop', 11), 
('Pavilion', 'Desktop', 11),
-- Bose (ID: 12)
('QuietComfort', 'Headphones', 12), 
('SoundLink', 'Speaker', 12),
-- Nikon (ID: 13)
('Z9', 'Mirrorless Camera', 13), 
('D850', 'DSLR', 13),
-- Dyson (ID: 14)
('V15 Detect', 'Vacuum', 14), 
('Airwrap', 'Beauty', 14), 
('Purifier Cool', 'Fan', 14),
-- Philips (ID: 15)
('Hue Starter Kit', 'Lighting', 15), 
('Sonicare', 'Health', 15), 
('OneBlade', 'Shaver', 15)
RETURNING *;