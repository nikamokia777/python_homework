DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    vin VARCHAR(17) UNIQUE NOT NULL,
    added_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    engine_volume DECIMAL(3,1) CHECK (engine_volume > 0.5),
    mileage_km INT,
    is_customs_cleared BOOLEAN NOT NULL,
    price DECIMAL(10,2),
    description TEXT,
    sold BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO cars
(brand, model, release_year, vin, engine_volume, mileage_km, is_customs_cleared, price, description, sold)
VALUES
('Toyota', 'Camry', 2020, 'JTNB11HK0K3000001', 2.5, 45000, TRUE, 18500.00, 'Good condition, full equipment.', FALSE),
('BMW', '320i', 2019, 'WBA8A9C50K3000002', 2.0, 52000, TRUE, 21000.00, 'Well maintained, sport package.', FALSE),
('Mercedes-Benz', 'C200', 2021, 'WDDWF8EB5MR000003', 1.5, 30000, TRUE, 28500.00, 'New generation Mercedes-Benz C-Class.', FALSE),
('Honda', 'Civic', 2018, '2HGFC2F59JH000004', 1.5, 67000, FALSE, 14500.00, 'Economical and reliable car.', FALSE),
('Volkswagen', 'Golf', 2020, 'WVWZZZ1KZLW000005', 1.4, 41000, TRUE, 16500.00, 'Good condition with low mileage.', TRUE),
('Audi', 'A4', 2022, 'WAUZZZF42NA000006', 2.0, 22000, TRUE, 32000.00, 'Premium class vehicle.', FALSE),
('Ford', 'Mustang', 2019, '1FATP8UH7K5100007', 5.0, 35000, TRUE, 39000.00, 'Powerful sports car.', FALSE),
('Hyundai', 'Elantra', 2021, 'KMHD84LF0MU000008', 2.0, 28000, TRUE, 17500.00, 'Economical and practical vehicle.', FALSE),
('Nissan', 'Qashqai', 2017, 'SJNFBAJ11U2000009', 1.6, 89000, FALSE, 12500.00, 'Family crossover.', TRUE),
('Lexus', 'RX350', 2020, '2T2ZZMCA5LC000010', 3.5, 38000, TRUE, 41000.00, 'Excellent condition with full package.', FALSE);

SELECT * FROM cars;
SELECT brand, model, release_year, price FROM cars;
SELECT * FROM cars WHERE brand = 'Toyota';