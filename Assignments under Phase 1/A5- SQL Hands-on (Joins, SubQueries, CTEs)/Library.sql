-- =====================================================
-- LIBRARY MANAGEMENT SYSTEM - REAL-WORLD DATA INSERTION
-- FIXED VERSION WITH PROPER FOREIGN KEY INTEGRITY
-- =====================================================

-- =====================================================
-- 1. TRUNCATE TABLES IN CORRECT ORDER (to clear old data)
-- =====================================================

                                                              -- RUN THIS Step 3 — Run the TRUNCATE script--

TRUNCATE TABLE reservations CASCADE;
TRUNCATE TABLE book_loans CASCADE;
TRUNCATE TABLE books CASCADE;
TRUNCATE TABLE members CASCADE;
TRUNCATE TABLE staff CASCADE;
TRUNCATE TABLE categories CASCADE;
TRUNCATE TABLE publishers CASCADE;
TRUNCATE TABLE authors CASCADE;

-- Reset sequences
ALTER SEQUENCE authors_author_id_seq RESTART WITH 1;
ALTER SEQUENCE publishers_publisher_id_seq RESTART WITH 1;
ALTER SEQUENCE categories_category_id_seq RESTART WITH 1;
ALTER SEQUENCE books_book_id_seq RESTART WITH 1;
ALTER SEQUENCE members_member_id_seq RESTART WITH 1;
ALTER SEQUENCE staff_staff_id_seq RESTART WITH 1;
ALTER SEQUENCE book_loans_loan_id_seq RESTART WITH 1;
ALTER SEQUENCE reservations_reservation_id_seq RESTART WITH 1;

-- =====================================================
-- 2. INSERT AUTHORS FIRST (500 records)
-- =====================================================

                                                              -- RUN THIS Step 4 — Run the INSERT script--

INSERT INTO authors (name, country, birth_year) VALUES
('Stephen King', 'United States', 1947),
('J.K. Rowling', 'United Kingdom', 1965),
('George R.R. Martin', 'United States', 1948),
('Haruki Murakami', 'Japan', 1949),
('Paulo Coelho', 'Brazil', 1947),
('Khaled Hosseini', 'Afghanistan', 1965),
('Margaret Atwood', 'Canada', 1939),
('Salman Rushdie', 'India', 1947),
('Orhan Pamuk', 'Turkey', 1952),
('Yoko Ogawa', 'Japan', 1962),
('James Patterson', 'United States', 1947),
('Danielle Steel', 'United States', 1947),
('Isaac Asimov', 'United States', 1920),
('Arthur C. Clarke', 'United Kingdom', 1917),
('Philip K. Dick', 'United States', 1928),
('Douglas Adams', 'United Kingdom', 1952),
('Ray Bradbury', 'United States', 1920),
('Kurt Vonnegut', 'United States', 1922),
('Ursula K. Le Guin', 'United States', 1929),
('Frank Herbert', 'United States', 1920),
('John Grisham', 'United States', 1955),
('Jojo Moyes', 'United Kingdom', 1969),
('Nicholas Sparks', 'United States', 1965),
('Nora Roberts', 'United States', 1950),
('Agatha Christie', 'United Kingdom', 1890),
('Arthur Conan Doyle', 'United Kingdom', 1859),
('Jane Austen', 'United Kingdom', 1775),
('Charles Dickens', 'United Kingdom', 1812),
('Leo Tolstoy', 'Russia', 1828),
('Fyodor Dostoevsky', 'Russia', 1821),
('Gabriel García Márquez', 'Colombia', 1927),
('Mario Vargas Llosa', 'Peru', 1936),
('Chimamanda Ngozi Adichie', 'Nigeria', 1977),
('Aravind Adiga', 'India', 1974),
('Chetan Bhagat', 'India', 1974),
('Amitav Ghosh', 'India', 1956),
('Jhumpa Lahiri', 'United States', 1967),
('Kazuo Ishiguro', 'United Kingdom', 1954),
('Yann Martel', 'Canada', 1960),
('Dan Brown', 'United States', 1964),
('Michael Crichton', 'United States', 1942),
('J.R.R. Tolkien', 'United Kingdom', 1892),
('C.S. Lewis', 'United Kingdom', 1898),
('Terry Pratchett', 'United Kingdom', 1948),
('Neil Gaiman', 'United Kingdom', 1960),
('Rick Riordan', 'United States', 1964),
('Cassandra Clare', 'United States', 1975),
('Pierce Brown', 'United States', 1988),
('Veronica Roth', 'United States', 1988),
('Suzanne Collins', 'United States', 1962),
('Marissa Meyer', 'United States', 1984),
('Leigh Bardugo', 'United States', 1992),
('Angie Thomas', 'United States', 1988),
('Jason Reynolds', 'United States', 1983),
('Rainbow Rowell', 'United States', 1981),
('John Green', 'United States', 1977),
('Judy Blume', 'United States', 1938),
('Beverly Cleary', 'United States', 1916),
('Roald Dahl', 'United Kingdom', 1916),
('Dr. Seuss', 'United States', 1904),
('A.A. Milne', 'United Kingdom', 1882),
('Beatrix Potter', 'United Kingdom', 1866),
('Laura Ingalls Wilder', 'United States', 1867),
('Mark Twain', 'United States', 1835),
('Louisa May Alcott', 'United States', 1832),
('Emily Brontë', 'United Kingdom', 1818),
('Charlotte Brontë', 'United Kingdom', 1816),
('Anne Brontë', 'United Kingdom', 1820),
('George Eliot', 'United Kingdom', 1819),
('Victor Hugo', 'France', 1802),
('Alexandre Dumas', 'France', 1802),
('Jules Verne', 'France', 1828),
('Émile Zola', 'France', 1840),
('Guy de Maupassant', 'France', 1850),
('Johann Wolfgang von Goethe', 'Germany', 1749),
('Friedrich Schiller', 'Germany', 1759),
('Heinrich Heine', 'Germany', 1797),
('Rainer Maria Rilke', 'Austria', 1875),
('Franz Kafka', 'Austria', 1883),
('Thomas Mann', 'Germany', 1875),
('Hermann Hesse', 'Germany', 1877),
('Günter Grass', 'Germany', 1927),
('Patrick Süskind', 'Germany', 1949),
('Jostein Gaarder', 'Norway', 1952),
('Henrik Ibsen', 'Norway', 1828),
('Knut Hamsun', 'Norway', 1859),
('Selma Lagerlöf', 'Sweden', 1858),
('August Strindberg', 'Sweden', 1849),
('Isak Dinesen', 'Denmark', 1885),
('Hans Christian Andersen', 'Denmark', 1805),
('Voltaire', 'France', 1694),
('Jean-Paul Sartre', 'France', 1905),
('Simone de Beauvoir', 'France', 1908),
('Albert Camus', 'France', 1913),
('Marcel Proust', 'France', 1871),
('Vladimir Nabokov', 'Russia', 1899),
('Boris Pasternak', 'Russia', 1890),
('Mikhail Bulgakov', 'Russia', 1891),
('Anton Chekhov', 'Russia', 1860),
('Ivan Turgenev', 'Russia', 1818),
('Nikolai Gogol', 'Russia', 1809),
('Aleksandr Pushkin', 'Russia', 1799),
('Mikhail Lermontov', 'Russia', 1814),
('Maxim Gorky', 'Russia', 1868),
('Julio Cortázar', 'Argentina', 1914),
('Carlos Fuentes', 'Mexico', 1928),
('Laura Esquivel', 'Mexico', 1950),
('Isabel Allende', 'Chile', 1942),
('Jorge Luis Borges', 'Argentina', 1899),
('Clarice Lispector', 'Brazil', 1920),
('Machado de Assis', 'Brazil', 1839),
('Cecilia Meireles', 'Brazil', 1901),
('Octavio Paz', 'Mexico', 1914),
('Pablo Neruda', 'Chile', 1904),
('Federico García Lorca', 'Spain', 1898),
('Miguel de Cervantes', 'Spain', 1547),
('Benito Pérez Galdós', 'Spain', 1843),
('Leopoldo Alas', 'Spain', 1852),
('Camilo José Cela', 'Spain', 1916),
('Juan Ramón Jiménez', 'Spain', 1881),
('Ramón María del Valle-Inclán', 'Spain', 1866),
('Pío Baroja', 'Spain', 1872),
('Vicente Blasco Ibáñez', 'Spain', 1867),
('Jacinto Benavente', 'Spain', 1866),
('Josep Pla', 'Spain', 1897),
('Mercè Rodoreda', 'Spain', 1908),
('Carmen Mola', 'Spain', 1971),
('Dolores Redondo', 'Spain', 1969),
('María Dueñas', 'Spain', 1964),
('Rosa Montero', 'Spain', 1951),
('Elena Ferrante', 'Italy', 1943),
('Italo Calvino', 'Italy', 1923),
('Umberto Eco', 'Italy', 1932),
('Primo Levi', 'Italy', 1919),
('Italo Svevo', 'Italy', 1861),
('Luigi Pirandello', 'Italy', 1867),
('Dino Buzzati', 'Italy', 1906),
('Elio Vittorini', 'Italy', 1908),
('Carlo Levi', 'Italy', 1902),
('Cesare Pavese', 'Italy', 1908),
('Leonardo Sciascia', 'Italy', 1921),
('Andrea Camilleri', 'Italy', 1925),
('Naguib Mahfouz', 'Egypt', 1911),
('Nazım Hikmet', 'Turkey', 1902),
('Mehmet Murat Somer', 'Turkey', 1968),
('Ahmet Hamdi Tanpınar', 'Turkey', 1901),
('Yusuf Atılgan', 'Turkey', 1921),
('Sait Faik Abasıyanık', 'Turkey', 1906),
('Kemal Tahir', 'Turkey', 1910),
('Zülfü Livaneli', 'Turkey', 1946),
('Amin Maalouf', 'Lebanon', 1949),
('Leïla Abouzeid', 'Morocco', 1950),
('Tahar Ben Jelloun', 'Morocco', 1944),
('Assia Djebar', 'Algeria', 1936),
('Ahlam Mosteghanemi', 'Algeria', 1953),
('Natsume Soseki', 'Japan', 1867),
('Yasunari Kawabata', 'Japan', 1899),
('Junichiro Tanizaki', 'Japan', 1886),
('Ryūnosuke Akutagawa', 'Japan', 1892),
('Kobo Abe', 'Japan', 1924),
('Shusaku Endo', 'Japan', 1923),
('Yukio Mishima', 'Japan', 1925),
('Tatsuo Hori', 'Japan', 1904),
('Mo Yan', 'China', 1955),
('Gao Xingjian', 'China', 1940),
('Liu Cixin', 'China', 1963),
('Qian Zhongshu', 'China', 1910),
('Ba Jin', 'China', 1904),
('Lao She', 'China', 1899),
('Mao Dun', 'China', 1896),
('Xu Dishan', 'China', 1893),
('Lu Xun', 'China', 1881),
('Han Shaogong', 'China', 1953),
('Jia Pingwa', 'China', 1952),
('Jiang Rong', 'China', 1942),
('Yu Hua', 'China', 1960),
('Alaa Al Aswany', 'Egypt', 1957),
('Sudha Murty', 'India', 1950),
('Devdutt Pattanaik', 'India', 1970),
('R.K. Narayan', 'India', 1906),
('Mulk Raj Anand', 'India', 1905),
('Premchand', 'India', 1880),
('Bankim Chandra Chattopadhyay', 'India', 1838),
('Rabindranath Tagore', 'India', 1861),
('Sarat Chandra Chattopadhyay', 'India', 1876),
('Tarasankar Bandyopadhyay', 'India', 1898),
('Ashapurna Debi', 'India', 1909),
('Mahasweta Devi', 'India', 1926),
('Anita Desai', 'India', 1937),
('Arundhati Roy', 'India', 1961),
('Shashi Tharoor', 'India', 1956),
('Suketu Mehta', 'India', 1963),
('Kiran Desai', 'India', 1971),
('Tania James', 'India', 1983),
('Anuradha Roy', 'India', 1964),
('N.S. Madhavan', 'India', 1946),
('Paul Theroux', 'United States', 1941),
('Bill Bryson', 'United States', 1951),
('Anthony Bourdain', 'United States', 1956),
('Pico Iyer', 'United States', 1957),
('David Foster Wallace', 'United States', 1962),
('Jonathan Franzen', 'United States', 1959),
('Zadie Smith', 'United Kingdom', 1975),
('David Mitchell', 'United Kingdom', 1969),
('Ian McEwan', 'United Kingdom', 1948),
('Julian Barnes', 'United Kingdom', 1946),
('Martin Amis', 'United Kingdom', 1949),
('Monica Ali', 'United Kingdom', 1967),
('Hari Kunzru', 'United Kingdom', 1969),
('Will Self', 'United Kingdom', 1961),
('Zadie Smith', 'United Kingdom', 1975),
('Ali Smith', 'United Kingdom', 1962),
('Hilary Mantel', 'United Kingdom', 1952),
('Margaret Drabble', 'United Kingdom', 1939),
('A.S. Byatt', 'United Kingdom', 1936),
('Iris Murdoch', 'United Kingdom', 1925),
('Muriel Spark', 'United Kingdom', 1918),
('Kingsley Amis', 'United Kingdom', 1922),
('Anthony Powell', 'United Kingdom', 1905),
('P.G. Wodehouse', 'United Kingdom', 1881),
('Evelyn Waugh', 'United Kingdom', 1903),
('George Orwell', 'United Kingdom', 1903),
('William Golding', 'United Kingdom', 1911),
('Graham Greene', 'United Kingdom', 1904),
('Muriel Spark', 'United Kingdom', 1918);

-- Generate additional authors to reach 500
INSERT INTO authors (name, country, birth_year)
SELECT 
  'Author ' || gs.id,
  (ARRAY['United States', 'United Kingdom', 'Germany', 'France', 'Italy', 'Spain', 'Japan', 'China', 'India', 'Brazil', 'Mexico', 'Canada', 'Australia', 'South Korea', 'Netherlands'])[((gs.id % 15) + 1)],
  1920 + (gs.id % 100)
FROM generate_series(278, 500) AS gs(id);

-- =====================================================
-- 3. INSERT PUBLISHERS (500 records)
-- =====================================================
INSERT INTO publishers (name, city) VALUES
('Penguin Books', 'London'),
('HarperCollins', 'New York'),
('Bloomsbury Publishing', 'London'),
('Simon & Schuster', 'New York'),
('Random House', 'New York'),
('Hachette Book Group', 'New York'),
('Macmillan Publishers', 'London'),
('Oxford University Press', 'Oxford'),
('Cambridge University Press', 'Cambridge'),
('Scholastic Corporation', 'New York'),
('Tor Books', 'New York'),
('Little, Brown and Company', 'New York'),
('Vintage Books', 'London'),
('Pan Macmillan', 'London'),
('Hodder & Stoughton', 'London'),
('John Murray', 'London'),
('Jonathan Cape', 'London'),
('Faber and Faber', 'London'),
('W.W. Norton', 'New York'),
('Alfred A. Knopf', 'New York'),
('Doubleday', 'New York'),
('Viking Press', 'New York'),
('Putnam Publishing', 'New York'),
('William Morrow', 'New York'),
('St. Martin''s Press', 'New York'),
('Crown Publishing', 'New York'),
('Bantam Dell', 'New York'),
('Knopf Doubleday', 'New York'),
('Penguin Classics', 'London'),
('Dover Publications', 'New York'),
('Tor.com', 'New York'),
('Ace Books', 'New York'),
('Del Rey', 'New York'),
('Ballantine Books', 'New York'),
('Berkley Books', 'New York'),
('Riverhead Books', 'New York'),
('Dial Press', 'New York'),
('Picador', 'London'),
('Granta Books', 'London'),
('Canongate Books', 'Edinburgh'),
('Serpent''s Tail', 'London'),
('Polygon', 'Edinburgh'),
('Freight Books', 'Glasgow'),
('Sandstone Press', 'Highland'),
('Birlinn', 'Edinburgh'),
('Luath Press', 'Edinburgh'),
('Chatto & Windus', 'London'),
('The Hogarth Press', 'London'),
('Bodley Head', 'London'),
('Secker & Warburg', 'London');

-- Generate additional publishers to reach 500
INSERT INTO publishers (name, city)
SELECT 
  'Publisher ' || gs.id || ' Ltd.',
  (ARRAY['New York', 'London', 'Paris', 'Berlin', 'Madrid', 'Tokyo', 'Sydney', 'Toronto', 'Mumbai', 'São Paulo', 'Mexico City', 'Bangkok', 'Istanbul', 'Moscow', 'Dubai', 'Singapore', 'Hong Kong', 'Shanghai', 'Delhi', 'Jakarta'])[((gs.id % 20) + 1)]
FROM generate_series(51, 500) AS gs(id);

-- =====================================================
-- 4. INSERT CATEGORIES (500 records)
-- =====================================================
INSERT INTO categories (category_name) VALUES
('Science Fiction'),
('Fantasy'),
('Mystery'),
('Thriller'),
('Romance'),
('Historical Fiction'),
('Adventure'),
('Biography'),
('Autobiography'),
('Self-Help'),
('Science'),
('Technology'),
('Business'),
('Economics'),
('Philosophy'),
('Psychology'),
('Spirituality'),
('Religion'),
('Poetry'),
('Drama'),
('Comedy'),
('Horror'),
('Gothic'),
('Young Adult'),
('Children''s'),
('Picture Books'),
('Fiction'),
('Non-Fiction'),
('Education'),
('History'),
('Art'),
('Music'),
('Photography'),
('Cooking'),
('Travel'),
('Nature'),
('Environment'),
('Sports'),
('Fitness'),
('Health'),
('Medical'),
('Law'),
('Politics'),
('Government'),
('Memoir'),
('Essay'),
('Literary Fiction'),
('Contemporary Fiction'),
('Crime'),
('Detective'),
('Paranormal'),
('Supernatural');

-- Generate additional categories to reach 500
INSERT INTO categories (category_name)
SELECT 
  'Category - ' || gs.id || ' (' || (ARRAY['Fiction', 'Non-Fiction', 'Academic', 'Reference', 'Professional'])[((gs.id % 5) + 1)] || ')'
FROM generate_series(51, 500) AS gs(id);

-- =====================================================
-- 5. INSERT MEMBERS (500 records)
-- =====================================================
INSERT INTO members (name, email, phone, membership_date) VALUES
('John Smith', 'john.smith@email.com', '+1-555-0101', '2020-01-15'),
('Sarah Johnson', 'sarah.j@email.com', '+1-555-0102', '2020-02-20'),
('Michael Chen', 'michael.chen@email.com', '+1-555-0103', '2020-03-10'),
('Emily Watson', 'emily.w@email.com', '+1-555-0104', '2020-04-05'),
('David Brown', 'david.brown@email.com', '+1-555-0105', '2020-05-12'),
('Jessica Taylor', 'jessica.t@email.com', '+1-555-0106', '2020-06-18'),
('Robert Miller', 'robert.m@email.com', '+1-555-0107', '2020-07-22'),
('Lisa Anderson', 'lisa.a@email.com', '+1-555-0108', '2020-08-30'),
('James Wilson', 'james.w@email.com', '+1-555-0109', '2020-09-14'),
('Patricia Moore', 'patricia.m@email.com', '+1-555-0110', '2020-10-25');

-- Bulk insert remaining members to reach 500
INSERT INTO members (name, email, phone, membership_date)
SELECT 
  (ARRAY['Mr', 'Mrs', 'Ms', 'Dr', 'Prof'])[((gs.id % 5) + 1)] || '. ' || 
  (ARRAY['John', 'Jane', 'Robert', 'Mary', 'Michael', 'Patricia', 'David', 'Jennifer', 'Richard', 'Linda', 'Joseph', 'Barbara', 'Thomas', 'Susan', 'Charles', 'Jessica', 'Christopher', 'Sarah', 'Daniel', 'Karen'])[((gs.id % 20) + 1)] || ' ' ||
  (ARRAY['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis', 'Rodriguez', 'Martinez', 'Hernandez', 'Lopez', 'Gonzalez', 'Wilson', 'Anderson', 'Thomas', 'Taylor', 'Moore', 'Jackson', 'Martin'])[((gs.id % 20) + 1)],
  'member' || gs.id || '@email.com',
  '+1-555-' || LPAD((gs.id)::text, 4, '0'),
  DATE '2020-01-01' + (gs.id % 1460)
FROM generate_series(11, 500) AS gs(id);

-- =====================================================
-- 6. INSERT STAFF (500 records)
-- =====================================================
INSERT INTO staff (name, role, hire_date) VALUES
('Alice Green', 'Librarian', '2018-01-10'),
('Bob Martinez', 'Assistant Librarian', '2019-03-15'),
('Carol Davis', 'Library Manager', '2017-06-20'),
('Dennis Johnson', 'Cataloging Specialist', '2019-09-05'),
('Eva Rodriguez', 'Circulation Clerk', '2020-02-10'),
('Frank Thompson', 'Systems Administrator', '2018-11-22'),
('Grace Lee', 'Reference Librarian', '2019-04-30'),
('Henry Park', 'Collections Manager', '2017-08-14'),
('Iris Chang', 'Digitization Specialist', '2020-05-18'),
('Jack Wilson', 'Maintenance Staff', '2019-12-02');

-- Bulk insert remaining staff to reach 500
INSERT INTO staff (name, role, hire_date)
SELECT 
  (ARRAY['Mr', 'Mrs', 'Ms', 'Dr', 'Prof'])[((gs.id % 5) + 1)] || '. ' || 
  (ARRAY['John', 'Jane', 'Robert', 'Mary', 'Michael', 'Patricia', 'David', 'Jennifer', 'Richard', 'Linda'])[((gs.id % 10) + 1)] || ' ' ||
  (ARRAY['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis', 'Rodriguez', 'Martinez'])[((gs.id % 10) + 1)],
  (ARRAY['Librarian', 'Assistant Librarian', 'Library Manager', 'Cataloging Specialist', 'Circulation Clerk', 'Systems Administrator', 'Reference Librarian', 'Collections Manager', 'Digitization Specialist', 'Maintenance Staff', 'Head Librarian', 'Youth Librarian', 'Senior Librarian', 'Junior Librarian', 'Administrative Assistant'])[((gs.id % 15) + 1)],
  DATE '2017-01-01' + (gs.id % 1460)
FROM generate_series(11, 500) AS gs(id);

-- =====================================================
-- 7. INSERT BOOKS (500 records) - NOW WITH VALID AUTHOR IDS
-- =====================================================
INSERT INTO books (title, author_id, publisher_id, category_id, published_year, isbn, total_copies, available_copies) VALUES
('The Shining', 1, 1, 1, 1977, '978-0385333312', 15, 8),
('Harry Potter and the Philosopher''s Stone', 2, 2, 25, 1997, '978-0747532699', 25, 15),
('A Game of Thrones', 3, 3, 2, 1996, '978-0553103540', 20, 8),
('Norwegian Wood', 4, 4, 4, 1987, '978-0375704024', 18, 10),
('The Alchemist', 5, 5, 8, 1988, '978-0062315007', 22, 16),
('The Kite Runner', 6, 6, 5, 2003, '978-1594480003', 20, 11),
('The Handmaid''s Tale', 7, 7, 1, 1985, '978-0385490818', 16, 9),
('Midnight''s Children', 8, 8, 6, 1981, '978-0374210458', 12, 5),
('My Name is Red', 9, 9, 6, 1998, '978-0375406836', 14, 10),
('The White Hotel', 10, 10, 6, 1981, '978-0671683979', 13, 7),
('Foundation', 13, 11, 1, 1951, '978-0553293357', 16, 7),
('2001: A Space Odyssey', 14, 12, 1, 1968, '978-0451524935', 17, 8),
('Ubik', 15, 13, 1, 1969, '978-0547884356', 13, 6),
('The Hitchhiker''s Guide to the Galaxy', 16, 14, 1, 1979, '978-0345391802', 20, 12),
('Ender''s Game', 18, 15, 1, 1985, '978-0312863555', 17, 9),
('The Left Hand of Darkness', 19, 16, 2, 1969, '978-0441478522', 15, 8),
('The Name of the Wind', 20, 17, 2, 2007, '978-0756404079', 16, 9),
('The Hobbit', 42, 18, 2, 1937, '978-0547928227', 22, 13),
('The Fellowship of the Ring', 42, 18, 2, 1954, '978-0544003415', 20, 10),
('The Two Towers', 42, 18, 2, 1954, '978-0544003452', 19, 9),
('The Return of the King', 42, 18, 2, 1955, '978-0544003491', 21, 11),
('The Chronicles of Narnia: The Lion, the Witch and the Wardrobe', 43, 19, 25, 1950, '978-0066472935', 18, 10),
('Small Gods', 44, 20, 2, 1992, '978-0552134347', 14, 7),
('American Gods', 45, 21, 2, 2001, '978-0380789023', 16, 8),
('Good Omens', 45, 21, 2, 1990, '978-0060853983', 17, 9),
('The Colour of Magic', 44, 22, 2, 1983, '978-0062073556', 13, 6),
('Guards! Guards!', 44, 22, 2, 1989, '978-0062073655', 15, 8),
('Men at Arms', 44, 22, 2, 1992, '978-0062073778', 14, 7),
('The Percy Jackson Series: The Lightning Thief', 46, 23, 25, 2005, '978-0786856879', 20, 12),
('The Sea of Monsters', 46, 23, 25, 2006, '978-0786856886', 19, 11),
('The Mortal Instruments: City of Bones', 47, 24, 25, 2007, '978-0689852695', 17, 9),
('City of Ashes', 47, 24, 25, 2008, '978-0689873287', 16, 8),
('Red Rising', 48, 25, 25, 2014, '978-0385742541', 18, 10),
('Divergent', 49, 26, 25, 2011, '978-0062024052', 19, 11),
('The Hunger Games', 50, 27, 25, 2008, '978-0439023481', 22, 13),
('Catching Fire', 50, 27, 25, 2009, '978-0439023498', 21, 12),
('Mockingjay', 50, 27, 25, 2010, '978-0439023511', 20, 11),
('The Lunar Chronicles: Cinder', 51, 28, 25, 2012, '978-0312641894', 15, 8),
('Scythe', 52, 29, 2, 2016, '978-0553496444', 14, 7),
('The Hate U Give', 53, 30, 25, 2015, '978-0062498533', 17, 9),
('The Sun is Also a Star', 54, 31, 25, 2016, '978-0062414823', 16, 8),
('Eleanor & Park', 55, 32, 5, 2013, '978-0312656683', 15, 8),
('Fangirl', 55, 32, 25, 2014, '978-0312656690', 16, 9),
('Simon vs. the Homo Sapiens Agenda', 56, 33, 25, 2015, '978-0062348685', 14, 7),
('I''ll Give You the Sun', 57, 34, 25, 2015, '978-0385376555', 15, 8),
('The Fault in Our Stars', 58, 35, 5, 2012, '978-0525478812', 23, 14),
('Looking for Alaska', 58, 35, 25, 2005, '978-0525475065', 18, 10),
('Paper Towns', 58, 35, 25, 2008, '978-0525478778', 17, 9),
('Are You There God? It''s Me, Margaret', 59, 36, 25, 1970, '978-0385073881', 16, 8),
('Forever', 59, 36, 25, 1975, '978-0553272529', 14, 7),
('The Outsiders', 60, 37, 25, 1967, '978-0140385724', 19, 10),
('Bridge to Terabithia', 62, 39, 25, 1972, '978-0064400688', 17, 9),
('Charlotte''s Web', 63, 40, 25, 1952, '978-0060255656', 21, 12),
('The Tale of Despereaux', 64, 41, 25, 2003, '978-0763619016', 16, 8),
('Where the Wild Things Are', 66, 43, 25, 1963, '978-0345391802', 20, 11),
('The Very Hungry Caterpillar', 67, 44, 25, 1969, '978-0399208515', 22, 13),
('Winnie-the-Pooh', 68, 45, 25, 1926, '978-0142404690', 18, 10),
('The Tale of Peter Rabbit', 69, 46, 25, 1901, '978-0141192468', 17, 9),
('Little Women', 71, 47, 5, 1869, '978-0141040349', 19, 10),
('Jane Eyre', 70, 47, 5, 1847, '978-0141441146', 16, 8),
('Wuthering Heights', 72, 47, 5, 1847, '978-0141439556', 14, 7),
('The Tenant of Wildfell Hall', 73, 47, 5, 1848, '978-0141439563', 13, 6),
('Middlemarch', 74, 48, 5, 1871, '978-0141439549', 15, 8),
('The Picture of Dorian Gray', 75, 48, 5, 1890, '978-0141442662', 17, 9),
('Crime and Punishment', 30, 49, 5, 1866, '978-0143039990', 18, 10),
('The Brothers Karamazov', 30, 49, 5, 1879, '978-0374528379', 16, 8),
('War and Peace', 29, 50, 6, 1869, '978-0199232765', 20, 11);

-- Bulk insert remaining books to reach 500
-- Only reference author_ids 1-500 that were actually inserted
INSERT INTO books (title, author_id, publisher_id, category_id, published_year, isbn, total_copies, available_copies)
SELECT 
  'Book ' || gs.id || ': ' || (ARRAY['Adventure', 'Mystery', 'Romance', 'Thriller', 'Fantasy', 'Science', 'History'])[((gs.id % 7) + 1)],
  ((gs.id - 76) % 500) + 1,  -- Maps to author_id 1-500
  ((gs.id - 76) % 500) + 1,  -- Maps to publisher_id 1-500
  ((gs.id - 76) % 50) + 1,   -- Maps to category_id 1-50
  1950 + ((gs.id - 76) % 75),
  '978-' || LPAD((1000000 + gs.id)::text, 10, '0'),
  FLOOR(RANDOM() * 20 + 5)::INT,
  FLOOR(RANDOM() * 15 + 1)::INT
FROM generate_series(76, 500) AS gs(id);

-- =====================================================
-- 8. INSERT BOOK LOANS (500 records)
-- =====================================================
INSERT INTO book_loans (book_id, member_id, staff_id, loan_date, due_date, return_date) VALUES
(1, 1, 1, '2024-01-10', '2024-02-10', '2024-02-08'),
(2, 2, 2, '2024-01-12', '2024-02-12', '2024-02-10'),
(3, 3, 3, '2024-01-15', '2024-02-15', NULL),
(4, 4, 4, '2024-01-18', '2024-02-18', '2024-02-16'),
(5, 5, 5, '2024-01-20', '2024-02-20', '2024-02-19'),
(6, 6, 6, '2024-01-22', '2024-02-22', NULL),
(7, 7, 7, '2024-01-25', '2024-02-25', '2024-02-23'),
(8, 8, 8, '2024-01-28', '2024-02-28', '2024-02-26'),
(9, 9, 9, '2024-02-01', '2024-03-01', NULL),
(10, 10, 10, '2024-02-03', '2024-03-03', '2024-03-02');

-- Bulk insert realistic book loans
-- Ensure all IDs reference valid records
INSERT INTO book_loans (book_id, member_id, staff_id, loan_date, due_date, return_date)
SELECT 
  ((gs.id - 11) % 500) + 1,  -- book_id 1-500
  ((gs.id - 11) % 500) + 1,  -- member_id 1-500
  ((gs.id - 11) % 500) + 1,  -- staff_id 1-500
  DATE '2023-01-01' + (gs.id % 400),
  DATE '2023-01-01' + (gs.id % 400) + INTERVAL '30 days',
  CASE 
    WHEN RANDOM() < 0.85 THEN DATE '2023-01-01' + (gs.id % 400) + INTERVAL '28 days'
    WHEN RANDOM() < 0.95 THEN DATE '2023-01-01' + (gs.id % 400) + INTERVAL '35 days'
    ELSE NULL 
  END
FROM generate_series(11, 500) AS gs(id);

-- =====================================================
-- 9. INSERT RESERVATIONS (500 records)
-- =====================================================
INSERT INTO reservations (book_id, member_id, reservation_date, status) VALUES
(1, 11, '2024-01-05', 'Pending'),
(2, 12, '2024-01-06', 'Confirmed'),
(3, 13, '2024-01-07', 'Ready for Pickup'),
(4, 14, '2024-01-08', 'Cancelled'),
(5, 15, '2024-01-09', 'Pending'),
(6, 16, '2024-01-10', 'Confirmed'),
(7, 17, '2024-01-11', 'Ready for Pickup'),
(8, 18, '2024-01-12', 'Pending'),
(9, 19, '2024-01-13', 'Confirmed'),
(10, 20, '2024-01-14', 'Cancelled');

-- Bulk insert realistic reservations
-- Ensure all IDs reference valid records
INSERT INTO reservations (book_id, member_id, reservation_date, status)
SELECT 
  ((gs.id - 11) % 500) + 1,  -- book_id 1-500
  ((gs.id - 11) % 500) + 1,  -- member_id 1-500
  DATE '2023-01-01' + (gs.id % 400),
  (ARRAY['Pending', 'Confirmed', 'Ready for Pickup', 'Cancelled', 'Completed', 'Expired'])[((gs.id % 6) + 1)]
FROM generate_series(11, 500) AS gs(id);

-----------------------------------------------------------------------------------------------------------------------------------------------


-- =====================================================
 --LIBRARY MANAGEMENT SYSTEM - POSTGRESQL PRACTICE SETUP
-- =====================================================

-- ======================
-- DROP TABLES (optional)
-- ======================


                                                         -- RUN THIS Step 1 — Drop table--

DROP TABLE IF EXISTS book_loans;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS publishers;

-- ======================
-- TABLES
-- ======================

                                                            -- RUN THIS Step 2 — Create tables--

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    birth_year INT
);

CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(120),
    city VARCHAR(80)
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(80)
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    author_id INT REFERENCES authors(author_id),
    publisher_id INT REFERENCES publishers(publisher_id),
    category_id INT REFERENCES categories(category_id),
    published_year INT,
    isbn VARCHAR(20),
    total_copies INT,
    available_copies INT
);

CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(120),
    email VARCHAR(120) UNIQUE,
    phone VARCHAR(20),
    membership_date DATE
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    hire_date DATE
);

CREATE TABLE book_loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    member_id INT REFERENCES members(member_id),
    staff_id INT REFERENCES staff(staff_id),
    loan_date DATE,
    due_date DATE,
    return_date DATE
);

CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    member_id INT REFERENCES members(member_id),
    reservation_date DATE,
    status VARCHAR(30)
);

---------------------------------------------------------------------------------------------------------------------------------------

                    ---SQL ASSIGNMENT---
 -- =====================================================
 -- JOIN QUESTIONS (20)
 -- =====================================================

 -- 1. List all books with their authors

SELECT b.title, a.name AS author
FROM books b
JOIN authors a
ON b.author_id = a.author_id;
 
 -- 2. List books with publisher names

SELECT b.title, p.name AS publisher
FROM books b
JOIN publishers p
ON b.publisher_id = p.publisher_id;
 
 -- 3. Show books and their categories

SELECT b.title, c.category_name
FROM books b
JOIN categories c
ON b.category_id = c.category_id;
 
 -- 4. Show all loans with member names

SELECT bl.loan_id, m.name AS member_name
FROM book_loans bl
JOIN members m
ON bl.member_id = m.member_id;
 
 -- 5. Show loans with book title and member

SELECT bl.loan_id, b.title, m.name AS member_name
FROM book_loans bl
JOIN books b
ON bl.book_id = b.book_id
JOIN members m
ON bl.member_id = m.member_id;
 
 -- 6. Show staff who issued each loan

SELECT bl.loan_id, s.name AS staff_name
FROM book_loans bl
JOIN staff s
ON bl.staff_id = s.staff_id;
 
 -- 7. List members and their borrowed books

SELECT m.name AS member_name, b.title
FROM members m
JOIN book_loans bl
ON m.member_id = bl.member_id
JOIN books b
ON bl.book_id = b.book_id;
 
 -- 8. Show reservations with book titles

SELECT r.reservation_id, b.title, r.status
FROM reservations r
JOIN books b
ON r.book_id = b.book_id;
 
 -- 9. Show authors and number of books

SELECT a.name, COUNT(b.book_id) AS total_books
FROM authors a
LEFT JOIN books b
ON a.author_id = b.author_id
GROUP BY a.name;
 
 -- 10. Show publisher with books count

SELECT p.name, COUNT(b.book_id) AS total_books
FROM publishers p
LEFT JOIN books b
ON p.publisher_id = b.publisher_id
GROUP BY p.name;
 
 -- 11. List all books that are currently loaned

SELECT b.title, bl.loan_date
FROM book_loans bl
JOIN books b
ON bl.book_id = b.book_id
WHERE bl.return_date IS NULL;
 
 -- 12. Show members who never borrowed books

SELECT m.name
FROM members m
LEFT JOIN book_loans bl
ON m.member_id = bl.member_id
WHERE bl.loan_id IS NULL;
 
 -- 13. Show categories with number of books

SELECT c.category_name, COUNT(b.book_id) AS total_books
FROM categories c
LEFT JOIN books b
ON c.category_id = b.category_id
GROUP BY c.category_name;
 
 -- 14. Show loans with overdue days

SELECT loan_id,
       due_date,
       CURRENT_DATE - due_date AS overdue_days
FROM book_loans
WHERE return_date IS NULL
AND due_date < CURRENT_DATE;
 
 -- 15. Show books and reservation count

SELECT b.title, COUNT(r.reservation_id) AS reservation_count
FROM books b
LEFT JOIN reservations r
ON b.book_id = r.book_id
GROUP BY b.title;
 
 -- 16. Show staff with number of issued loans

SELECT s.name, COUNT(bl.loan_id) AS issued_loans
FROM staff s
LEFT JOIN book_loans bl
ON s.staff_id = bl.staff_id
GROUP BY s.name;
 
 -- 17. List books with author and publisher

SELECT b.title,
       a.name AS author,
       p.name AS publisher
FROM books b
JOIN authors a
ON b.author_id = a.author_id
JOIN publishers p
ON b.publisher_id = p.publisher_id;
 
 -- 18. Show members with reservation details

SELECT m.name,
       b.title,
       r.status
FROM reservations r
JOIN members m
ON r.member_id = m.member_id
JOIN books b
ON r.book_id = b.book_id;
 
 -- 19. Show books currently unavailable

SELECT title
FROM books
WHERE available_copies = 0;
 
 -- 20. Show members with total loans

SELECT m.name, COUNT(bl.loan_id) AS total_loans
FROM members m
LEFT JOIN book_loans bl
ON m.member_id = bl.member_id
GROUP BY m.name;

------------------------------------------------------------------------------------------------------------------------------------------

 -- =====================================================
 -- SUBQUERY QUESTIONS (20)
 -- =====================================================

 -- 1. Find books written by authors from UK
 
SELECT title
FROM books
WHERE author_id IN (
    SELECT author_id
    FROM authors
    WHERE country = 'United Kingdom'
);

 -- 2. Find books published after average year

SELECT title, published_year
FROM books
WHERE published_year > (
    SELECT AVG(published_year)
    FROM books
);
 
 -- 3. Members who borrowed more than average books

SELECT name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM book_loans
    GROUP BY member_id
    HAVING COUNT(*) > (
        SELECT AVG(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM book_loans
            GROUP BY member_id
        ) AS avg_loans
    )
);
 
 -- 4. Books never borrowed

SELECT title
FROM books
WHERE book_id NOT IN (
    SELECT book_id
    FROM book_loans
);
 
 -- 5. Authors who wrote more than 1 

SELECT name
FROM authors
WHERE author_id IN (
    SELECT author_id
    FROM books
    GROUP BY author_id
    HAVING COUNT(*) > 1
);
 
 -- 6. Books with maximum available copies

SELECT title, available_copies
FROM books
WHERE available_copies = (
    SELECT MAX(available_copies)
    FROM books
);
 
 -- 7. Members who reserved books

SELECT name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM reservations
);
 
 -- 8. Books reserved by Bhargav

SELECT title
FROM books
WHERE book_id IN (
    SELECT book_id
    FROM reservations
    WHERE member_id = (
        SELECT member_id
        FROM members
        WHERE name = 'Bhargav'
    )
);
 
 -- 9. Books from publishers in New York

SELECT title
FROM books
WHERE publisher_id IN (
    SELECT publisher_id
    FROM publishers
    WHERE city = 'New York'
);
 
 -- 10. Members who never reserved books

SELECT name
FROM members
WHERE member_id NOT IN (
    SELECT member_id
    FROM reservations
);
 
 -- 11. Books whose author birth year < 1950

SELECT title
FROM books
WHERE author_id IN (
    SELECT author_id
    FROM authors
    WHERE birth_year < 1950
);
 
 -- 12. Members with latest loan date

SELECT name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM book_loans
    WHERE loan_date = (
        SELECT MAX(loan_date)
        FROM book_loans
    )
);
 
 -- 13. Books with loan count > 2

SELECT title
FROM books
WHERE book_id IN (
    SELECT book_id
    FROM book_loans
    GROUP BY book_id
    HAVING COUNT(*) > 2
);
 
 -- 14. Books whose copies less than average

SELECT title, total_copies
FROM books
WHERE total_copies < (
    SELECT AVG(total_copies)
    FROM books
);
 
 -- 15. Members who borrowed fantasy books

SELECT name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM book_loans
    WHERE book_id IN (
        SELECT book_id
        FROM books
        WHERE category_id = (
            SELECT category_id
            FROM categories
            WHERE category_name = 'Fantasy'
        )
    )
);
 
 -- 16. Authors who wrote books in multiple categories

SELECT name
FROM authors
WHERE author_id IN (
    SELECT author_id
    FROM books
    GROUP BY author_id
    HAVING COUNT(DISTINCT category_id) > 1
);
 
 -- 17. Books loaned but not returned

SELECT title
FROM books
WHERE book_id IN (
    SELECT book_id
    FROM book_loans
    WHERE return_date IS NULL
);
 
 -- 18. Members who borrowed books from Penguin publisher

SELECT name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM book_loans
    WHERE book_id IN (
        SELECT book_id
        FROM books
        WHERE publisher_id = (
            SELECT publisher_id
            FROM publishers
            WHERE name = 'Penguin Books'
        )
    )
);
 
 -- 19. Books reserved but not loaned

SELECT title
FROM books
WHERE book_id IN (
    SELECT book_id
    FROM reservations
)
AND book_id NOT IN (
    SELECT book_id
    FROM book_loans
);
 
 -- 20. Most borrowed book

SELECT title
FROM books
WHERE book_id = (
    SELECT book_id
    FROM book_loans
    GROUP BY book_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-----------------------------------------------------------------------------------------------------------------------------------------

 -- =====================================================
 -- CTE QUESTIONS (20)
 -- =====================================================

 -- 1. Using CTE calculate total loans per member

WITH loan_count AS (
    SELECT member_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY member_id
)
SELECT m.name, loan_count.total_loans
FROM loan_count
JOIN members m ON loan_count.member_id = m.member_id;

 -- 2. Find top 3 borrowed books using CTE

WITH book_loans_count AS (
    SELECT book_id, COUNT(*) AS loan_total
    FROM book_loans
    GROUP BY book_id
)
SELECT b.title, loan_total
FROM book_loans_count
JOIN books b ON book_loans_count.book_id = b.book_id
ORDER BY loan_total DESC
LIMIT 3;
 
 -- 3. Using CTE calculate overdue loans

WITH overdue_loans AS (
    SELECT *
    FROM book_loans
    WHERE return_date IS NULL
    AND due_date < CURRENT_DATE
)
SELECT *
FROM overdue_loans;
 
 -- 4. CTE to calculate books per category

WITH category_books AS (
    SELECT category_id, COUNT(*) AS total_books
    FROM books
    GROUP BY category_id
)
SELECT c.category_name, total_books
FROM category_books
JOIN categories c ON category_books.category_id = c.category_id;
 
 -- 5. CTE to find authors with multiple books

WITH author_books AS (
    SELECT author_id, COUNT(*) AS total_books
    FROM books
    GROUP BY author_id
)
SELECT a.name, total_books
FROM author_books
JOIN authors a ON author_books.author_id = a.author_id
WHERE total_books > 1;
 
 -- 6. CTE to compute average publish year

WITH avg_year AS (
    SELECT AVG(published_year) AS average_year
    FROM books
)
SELECT *
FROM avg_year;
 
 -- 7. CTE to rank books by loan count

WITH book_loans_rank AS (
    SELECT book_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY book_id
)
SELECT b.title,
       total_loans,
       RANK() OVER (ORDER BY total_loans DESC) AS rank
FROM book_loans_rank
JOIN books b ON book_loans_rank.book_id = b.book_id;
 
 -- 8. CTE to find members with more than 2 loans

WITH member_loans AS (
    SELECT member_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY member_id
)
SELECT m.name, total_loans
FROM member_loans
JOIN members m ON member_loans.member_id = m.member_id
WHERE total_loans > 2;
 
 -- 9. CTE to calculate reservations per book

WITH reservation_count AS (
    SELECT book_id, COUNT(*) AS total_reservations
    FROM reservations
    GROUP BY book_id
)
SELECT b.title, total_reservations
FROM reservation_count
JOIN books b ON reservation_count.book_id = b.book_id;
 
 -- 10. CTE to find latest loan per member

WITH latest_loans AS (
    SELECT member_id, MAX(loan_date) AS latest_loan
    FROM book_loans
    GROUP BY member_id
)
SELECT m.name, latest_loan
FROM latest_loans
JOIN members m ON latest_loans.member_id = m.member_id;

 -- 11. CTE to list available books

WITH available_books AS (
    SELECT *
    FROM books
    WHERE available_copies > 0
)
SELECT title, available_copies
FROM available_books;
 
 -- 12. CTE to list unavailable books

WITH unavailable_books AS (
    SELECT *
    FROM books
    WHERE available_copies = 0
)
SELECT title
FROM unavailable_books;
 
 -- 13. CTE to compute loans per staff

WITH staff_loans AS (
    SELECT staff_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY staff_id
)
SELECT s.name, total_loans
FROM staff_loans
JOIN staff s ON staff_loans.staff_id = s.staff_id;
 
 -- 14. CTE to calculate top categories by loans

WITH category_loans AS (
    SELECT b.category_id, COUNT(*) AS total_loans
    FROM book_loans bl
    JOIN books b ON bl.book_id = b.book_id
    GROUP BY b.category_id
)
SELECT c.category_name, total_loans
FROM category_loans
JOIN categories c ON category_loans.category_id = c.category_id
ORDER BY total_loans DESC;
 
 -- 15. CTE to calculate members active this year

WITH active_members AS (
    SELECT DISTINCT member_id
    FROM book_loans
    WHERE EXTRACT(YEAR FROM loan_date) = EXTRACT(YEAR FROM CURRENT_DATE)
)
SELECT m.name
FROM active_members
JOIN members m ON active_members.member_id = m.member_id;
 
 -- 16. CTE to compute average loans per member

WITH member_loans AS (
    SELECT member_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY member_id
)
SELECT AVG(total_loans) AS avg_loans
FROM member_loans;

 -- 17. CTE to find books never reserved

WITH reserved_books AS (
    SELECT DISTINCT book_id
    FROM reservations
)
SELECT title
FROM books
WHERE book_id NOT IN (
    SELECT book_id FROM reserved_books
);
 
 -- 18. CTE to find publishers with most books

WITH publisher_books AS (
    SELECT publisher_id, COUNT(*) AS total_books
    FROM books
    GROUP BY publisher_id
)
SELECT p.name, total_books
FROM publisher_books
JOIN publishers p ON publisher_books.publisher_id = p.publisher_id
ORDER BY total_books DESC;
 
 -- 19. CTE to rank members by number of loans

WITH member_loans AS (
    SELECT member_id, COUNT(*) AS total_loans
    FROM book_loans
    GROUP BY member_id
)
SELECT m.name,
       total_loans,
       RANK() OVER (ORDER BY total_loans DESC) AS rank
FROM member_loans
JOIN members m ON member_loans.member_id = m.member_id;
 
 -- 20. CTE to detect overdue members

WITH overdue_members AS (
    SELECT DISTINCT member_id
    FROM book_loans
    WHERE return_date IS NULL
    AND due_date < CURRENT_DATE
)
SELECT m.name
FROM overdue_members
JOIN members m ON overdue_members.member_id = m.member_id;

------------------------------------------------------------------------------------------------------------------------------