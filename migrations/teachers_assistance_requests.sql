/*

id: A unique identifier
name: The name of the teacher
start_date: The date that the teacher started working.
end_date: The date that the teacher stopped working.
is_active: If the teacher is actively teaching right now.

*/


CREATE TABLE teachers (
	  id SERIAL PRIMARY KEY NOT NULL,
	  name VARCHAR(255) NOT NULL,
	  start_date DATE,
	  end_date DATE,
    is_active BOOLEAN NOT NULL
);


/*
id: A unique identifier
assignment_id: The id of the assignment the request was made from
student_id: The id of the student making the request
teacher_id: The id of the teacher responding to the request
created_at: The timestamp when the request was made
started_at: The timestamp when the assistance started
completed_at: The timestamp when the assistance was completed
student_feedback: Feedback about the student given by the teacher
teacher_feedback: Feedback about the teacher given by the student
*/

CREATE TABLE assistance_requests (
	  id SERIAL PRIMARY KEY NOT NULL,
	  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
	  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
	  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    started_at TIMESTAMP,
    completed_at TIMESTAMP,
	  student_feedback VARCHAR(255),
	  teacher_feedback VARCHAR(255)
);

