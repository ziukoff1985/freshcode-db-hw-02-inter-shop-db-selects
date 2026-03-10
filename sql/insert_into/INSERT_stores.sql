TRUNCATE TABLE stores RESTART IDENTITY CASCADE;
INSERT INTO stores (title, description)
VALUES
('Main Warehouse', 'Central distribution hub in Kyiv'),
('Western Hub', 'Regional warehouse in Lviv'),
('Southern Port', 'Import terminal in Odesa'),
('Eastern Branch', 'Warehouse facility in Kharkiv'),
('Retail Outlet', 'Direct store warehouse in Dnipro')
RETURNING *;