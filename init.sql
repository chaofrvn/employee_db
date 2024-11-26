CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(100)
);

-- Tạo bảng Positions
CREATE TABLE positions (
    position_id INT PRIMARY KEY,
    position_name VARCHAR(50) NOT NULL,
    min_salary DECIMAL(12,2),
    max_salary DECIMAL(12,2)
);

-- Tạo bảng Employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    dept_id INT,
    position_id INT,
    salary DECIMAL(12,2),
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id),
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

-- Tạo bảng Projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);


INSERT INTO departments (dept_id, dept_name, location) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Finance', 'San Francisco'),
(3, 'IT', 'Los Angeles'),
(4, 'Marketing', 'Chicago'),
(5, 'Sales', 'Miami');


INSERT INTO positions (position_id, position_name, min_salary, max_salary) VALUES
(1, 'Manager', 60000.00, 120000.00),
(2, 'Team Leader', 50000.00, 80000.00),
(3, 'Developer', 40000.00, 70000.00),
(4, 'Analyst', 45000.00, 75000.00),
(5, 'Intern', 25000.00, 35000.00);


INSERT INTO employees (emp_id, name, email, phone, dept_id, position_id, salary, manager_id) VALUES
(1, 'Nguyễn Văn A', 'a.nguyen@example.com', '123-456-7890', 1, 1, 80000.00, NULL),
(2, 'Trần Thị B', 'b.tran@example.com', '123-456-7891', 2, 2, 60000.00, 1),
(3, 'Lê Văn C', 'c.le@example.com', '123-456-7892', 3, 3, 70000.00, 1),
(4, 'Phạm Thị D', 'd.pham@example.com', '123-456-7893', 4, 4, 55000.00, 2),
(5, 'Vũ Văn E', 'e.vu@example.com', '123-456-7894', 5, 3, 65000.00, 1),
(6, 'Ngô Văn F', 'f.ngo@example.com', '123-456-7895', 1, 2, 45000.00, 1),
(7, 'Đỗ Thị G', 'g.do@example.com', '123-456-7896', 2, 1, 90000.00, NULL),
(8, 'Trịnh Văn H', 'h.trinh@example.com', '123-456-7897', 3, 5, 50000.00, 2),
(9, 'Lý Văn I', 'i.ly@example.com', '123-456-7898', 4, 3, 40000.00, 2),
(10, 'Bùi Thị J', 'j.bui@example.com', '123-456-7899', 5, 4, 30000.00, 3);


INSERT INTO projects (project_id, project_name, start_date, end_date) VALUES
(1, 'Project Alpha', '2023-01-15', '2023-06-15'),
(2, 'Project Beta', '2023-02-01', '2023-07-01'),
(3, 'Project Gamma', '2023-03-10', '2023-08-10'),
(4, 'Project Delta', '2023-04-20', '2023-09-20');


INSERT INTO employee_projects (emp_id, project_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(1, 2),
(2, 3);
