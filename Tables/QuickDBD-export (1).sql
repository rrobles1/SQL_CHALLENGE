-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE "Employees" (
    "emp_id" INT   NOT NULL,
    "birth_date" VARCHAR  NOT NULL,
    "first_name" VARCHAR  NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "Departments" (
    "dept_id" VARCHAR  NOT NULL,
    "dept_name" VARCHAR  NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_id"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_id" INT   NOT NULL,
    "dept_id" VARCHAR  NOT NULL,
    "from_date" VARCHAR  NOT NULL,
    "to_date" VARCHAR  NOT NULL
);

CREATE TABLE "Dept_manager" (
    "dept_id" VARCHAR  NOT NULL,
    "emp_id" INT   NOT NULL,
    "from_date" VARCHAR  NOT NULL,
    "to_date" VARCHAR  NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_id" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR  NOT NULL,
    "to_date" VARCHAR  NOT NULL
);

CREATE TABLE "Titles" (
    "emp_id" INT   NOT NULL,
    "title" VARCHAR  NOT NULL,
    "from_date" VARCHAR NOT NULL,
    "to_date" VARCHAR  NOT NULL
);

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_id" FOREIGN KEY("dept_id")
REFERENCES "Departments" ("dept_id");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_id" FOREIGN KEY("dept_id")
REFERENCES "Departments" ("dept_id");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_id" FOREIGN KEY("emp_id")
REFERENCES "Employees" ("emp_id");

