/* MEDI database */
USE medi;

DROP TABLE IF EXISTS elements;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS forms;
DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

/* user data for login */
CREATE TABLE users (
	login varchar(30) PRIMARY KEY,
	name varchar(50) NOT NULL,
	passwd varchar(30) NOT NULL,
	cr_date date NOT NULL
) DEFAULT CHARACTER SET utf8;

/* available task to calculate */
CREATE TABLE tasks (
	task_id integer PRIMARY KEY,
	formula varchar(100) NOT NULL
) DEFAULT CHARACTER SET utf8;

/* task groups for tree */
CREATE TABLE groups (
	group_id integer PRIMARY KEY,
	parent_id integer REFERENCES groups(group_id),
	task_id integer REFERENCES tasks(task_id),
	name varchar(200) NOT NULL,
	ord integer NOT NULL unique
) DEFAULT CHARACTER SET utf8;	

/* list definitions for forms */
CREATE TABLE lists (
	list_id integer PRIMARY KEY,
	item_id integer NOT NULL,
	txt varchar(40) NOT NULL,
	value real
) DEFAULT CHARACTER SET utf8;

/* field definitions for all tasks 
	one table for all tasks/forms
	task_id - chapter number from MÉDI without main chapter e.g 8.3.1.1 -> 311
	field_id - ordinal number in the forms
	field_var - variable name if formula ins tasks table
	field_txt - text befor input field
	field_type - real/none/link/note
	field_length - not used yet
	field_list - not used yet
	field_help - help text for field or link or text for note
 */
CREATE TABLE forms (
	task_id integer REFERENCES tasks(task_id),
	field_id integer NOT NULL,
	field_var varchar(10),	
	field_txt varchar(60) NOT NULL,
	field_type varchar(10) NOT NULL,
	field_length integer,
	field_list integer REFERENCES lists(list_id),
	field_help varchar(550),
	PRIMARY KEY (task_id, field_id)
) DEFAULT CHARACTER SET utf8;

/* project definitions */
CREATE TABLE projects (
	project_id integer PRIMARY KEY,
	login varchar(30) REFERENCES users(login),
	name varchar(50) NOT NULL,
	project_date date NOT NULL
) DEFAULT CHARACTER SET utf8;

CREATE TABLE elements (
	element_id integer PRIMARY KEY,
	project_id integer REFERENCES projects(project_id),
	task_id integer REFERENCES tasks(task_id),
	m1 real,	/* elements for formula */
	m2 real,
	m3 real,
	m4 real,
	m5 real,
	e real,
	k real
) DEFAULT CHARACTER SET utf8;

-- GRANT ALL PRIVILEGES ON TABLE elements TO PUBLIC;
-- GRANT ALL PRIVILEGES ON TABLE projects TO PUBLIC;
-- GRANT SELECT ON TABLE lists TO PUBLIC;
-- GRANT SELECT ON TABLE forms TO PUBLIC;
-- GRANT SELECT ON TABLE tasks TO PUBLIC;
-- GRANT ALL PRIVILEGES ON TABLE users TO PUBLIC;
