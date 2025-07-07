CREATE TABLE authors (
    author_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    biography TEXT,
    date_of_birth DATE
);

CREATE TABLE publishers (
    publisher_id INT,
    name VARCHAR(150),
    country_of_origin VARCHAR(60)
);

CREATE TABLE books (
    book_id BIGINT,
    title VARCHAR(255),
    isbn VARCHAR(17),
    publication_date DATE,
    price DECIMAL(10,2)
);

CREATE TABLE patients (
    patient_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    record_created DATE
);

CREATE TABLE doctors (
    doctor_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    year_licensed YEAR
);

CREATE TABLE appointments (
    appointment_id INT,
    schedule DATETIME,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Canceled', 'No-Show')
);

CREATE TABLE departments (
    department_id INT,
    name VARCHAR(100),
    office_location VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(10),
    course_title VARCHAR(100),
    credits INT
);