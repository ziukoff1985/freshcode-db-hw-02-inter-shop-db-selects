INSERT INTO customers (name, email)
VALUES
('Alice Johnson', 'alice@test.com'), 
('Bob Smith', 'bob@test.com'), 
('Charlie Davis', 'charlie@test.com'),
('Michael Brown', 'michael@test.com'), 
('Emily Wilson', 'emily@test.com'), 
('David Miller', 'david@test.com'),
('Sarah Taylor', 'sarah@test.com'), 
('James Anderson', 'james@test.com'), 
('Linda Thomas', 'linda@test.com'),
('Robert Moore', 'robert@test.com'), 
('Jessica Lee', 'jessica@test.com'), 
('William Garcia', 'will@test.com'),
('Karen White', 'karen@test.com'), 
('Joseph Harris', 'joseph@test.com'), 
('Nancy Martin', 'nancy@test.com')
RETURNING *;