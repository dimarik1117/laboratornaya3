CREATE TABLE chair
(
	chair_id int PRIMARY KEY,
	title varchar NOT NULL,
	deanery varchar NOT NULL
);

CREATE TABLE student_group
(
	student_group_id int PRIMARY KEY,
	title varchar NOT NULL,
	chair int REFERENCES chair(chair_id) NOT NULL
);

CREATE TABLE student
(
	student_id int PRIMARY KEY,
	student_name varchar NOT NULL,
	passport_data varchar NOT NULL,
	student_group int REFERENCES student_group(student_group_id) NOT NULL
)