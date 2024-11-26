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
(10, 'Bùi Thị J', 'j.bui@example.com', '123-456-7899', 5, 4, 30000.00, 3),
(11, 'Nguyễn Văn E', 'e.nguyen@example.com', '123-456-7894', 1, 1, 48000.00, NULL),
(12, 'Trần Thị F', 'f.tran@example.com', '123-456-7895', 1, 2, 54000.00, 11),
(13, 'Lê Văn G', 'g.le@example.com', '123-456-7896', 2, 1, 76000.00, NULL),
(14, 'Phạm Thị H', 'h.pham@example.com', '123-456-7897', 2, 2, 62000.00, 13),
(15, 'Mai Văn I', 'i.mai@example.com', '123-456-7898', 3, 1, 85000.00, NULL),
(16, 'Trương Thị J', 'j.truong@example.com', '123-456-7899', 3, 2, 52000.00, 15),
(17, 'Ngô Văn K', 'k.ngo@example.com', '123-456-7800', 4, 1, 95000.00, NULL),
(18, 'Đỗ Thị L', 'l.do@example.com', '123-456-7801', 4, 2, 73000.00, 17),
(19, 'Lý Văn M', 'm.ly@example.com', '123-456-7802', 5, 1, 57000.00, NULL),
(20, 'Nguyễn Thị N', 'n.nguyen@example.com', '123-456-7803', 5, 2, 64000.00, 19),
(21, 'Phan Văn O', 'o.phan@example.com', '123-456-7804', 1, 1, 59000.00, NULL),
(22, 'Trịnh Thị P', 'p.trinh@example.com', '123-456-7805', 1, 2, 67000.00, 21),
(23, 'Vũ Văn Q', 'q.vu@example.com', '123-456-7806', 2, 1, 72000.00, NULL),
(24, 'Nguyễn Thị R', 'r.nguyen@example.com', '123-456-7807', 2, 2, 58000.00, 23),
(25, 'Đỗ Văn S', 's.do@example.com', '123-456-7808', 3, 1, 78000.00, NULL),
(26, 'Lê Thị T', 't.le@example.com', '123-456-7809', 3, 2, 60000.00, 25),
(27, 'Nguyễn Văn U', 'u.nguyen@example.com', '123-456-7810', 4, 1, 83000.00, NULL),
(28, 'Trần Thị V', 'v.tran@example.com', '123-456-7811', 4, 2, 69000.00, 27),
(29, 'Lương Văn W', 'w.luong@example.com', '123-456-7812', 5, 1, 52000.00, NULL),
(30, 'Vũ Thị X', 'x.vu@example.com', '123-456-7813', 5, 2, 72000.00, 29);


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
(2, 3),
(11, 1),
(11, 2),
(12, 1),
(12, 3),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 3),
(15, 4),
(16, 1),
(17, 1),
(18, 3),
(19, 4),
(20, 2),
(21, 1),
(22, 4),
(23, 3),
(24, 1),
(25, 2),
(26, 3),
(27, 4);
