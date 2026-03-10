TRUNCATE TABLE item_types RESTART IDENTITY CASCADE;
INSERT INTO item_types (title, description)
VALUES
('Mobile Phone', 'Cellular communication devices'),
('Notebook', 'Portable workstation'),
('Fridge', 'Food cooling and freezing'),
('Wireless Earbuds', 'Bluetooth audio devices'),
('OLED TV', 'High-end television displays'),
('Smartwatch', 'Wrist-worn smart devices'),
('DSLR Camera', 'Professional digital cameras'),
('Game Console', 'Gaming hardware systems'),
('Office Chair', 'Ergonomic seating'),
('Treadmill', 'Indoor running equipment'),
('Air Fryer', 'Healthy cooking appliances'),
('Electric Shaver', 'Men grooming tools'),
('Wi-Fi Router', 'Internet connectivity devices'),
('Drill', 'Power tools for construction'),
('Smart Bulb', 'IoT enabled lighting')
RETURNING *;