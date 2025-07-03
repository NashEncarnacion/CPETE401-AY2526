CREATE TABLE authors (
    author_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    biography TEXT,
    date_of_birth DATE,
    PRIMARY KEY (author_id)
);

CREATE TABLE publishers (
    publisher_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country_of_origin VARCHAR(100),
    PRIMARY KEY publisher_id
);

CREATE TABLE books (
    book_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    publication_date DATE,
    price DECIMAL(10,2),
    publisher_id INT UNSIGNED,
    PRIMARY KEY (book_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id) ON DELETE SET NULL
);

CREATE TABLE book_authors (
    book_id BIGINT UNSIGNED NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE,
);

CREATE TABLE patients (
    patient_id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    phone_number VARCHAR(20),
    record_created DATE
);

CREATE TABLE doctors (
    doctor_id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    specialty VARCHAR(20),
    year_licensed YEAR
);

CREATE TABLE appointments (
    appointment_id INT,
    schedule DATETIME,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Canceled', 'No-Show') DEFAULT 'Scheduled'
);

CREATE TABLE departments (
    department_id INT,
    name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(10),
    course_title VARCHAR(50),
    credits INT,
    prerequisite_course_id INT
);
