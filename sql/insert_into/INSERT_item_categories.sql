TRUNCATE TABLE item_categories RESTART IDENTITY CASCADE;
INSERT INTO item_categories (title, description) 
VALUES
('Smartphones', 'Mobile phones and handheld devices'),
('Laptops', 'Portable personal computers'),
('Home Appliances', 'Kitchen and laundry equipment'),
('Audio', 'Headphones, speakers and hi-fi systems'),
('TV & Video', 'Televisions and projectors'),
('Wearables', 'Smartwatches and fitness trackers'),
('Cameras', 'Photo and video equipment'),
('Gaming', 'Consoles, controllers and PC gaming'),
('Furniture', 'Home and office furniture'),
('Sports', 'Gym equipment and outdoor gear'),
('Kitchenware', 'Cooking tools and dining sets'),
('Beauty', 'Personal care and grooming devices'),
('Networking', 'Routers, switches and modems'),
('Tools', 'Hand and power tools'),
('Lighting', 'Smart bulbs and home lighting')
RETURNING *;