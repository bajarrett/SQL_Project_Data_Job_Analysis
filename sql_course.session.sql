CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50));

    SELECT * FROM job_applied

    INSERT INTO job_applied (job_id, application_sent_date, custom_resume, resume_file_name, cover_letter_sent, cover_letter_file_name, status)
    VALUES
    (1, '2023-10-01', TRUE, 'resume1.pdf', TRUE, 'cover_letter1.pdf', 'applied'),
    (2, '2023-10-02', FALSE, NULL, FALSE, NULL, 'applied'),
    (3, '2023-10-03', TRUE, 'resume3.pdf', TRUE, 'cover_letter3.pdf', 'interview'),
    (4, '2023-10-04', FALSE, NULL, TRUE, 'cover_letter4.pdf', 'rejected'),
    (5, '2023-10-05', TRUE, 'resume5.pdf', FALSE, NULL, 'applied');

    ALTER TABLE job_applied
    ADD contact VARCHAR(255);

    UPDATE job_applied
    SET contact = 'Erlich Bauchman'
    WHERE job_id = 1;

    UPDATE job_applied 
    SET contact = 'Richard Hendricks'
    WHERE job_id = 2;
    
    UPDATE job_applied
    SET contact = 'Gilfoyle'
    WHERE job_id = 3;
   
    UPDATE job_applied
    SET contact = 'Dinesh Chugtai'
    WHERE job_id = 4;
   
    UPDATE job_applied
    SET contact = 'Jared Dunn'
    WHERE job_id = 5;          

    ALTER TABLE job_applied
    RENAME COLUMN contact TO contact_name;

    ALTER TABLE job_applied
    ALTER COLUMN contact_name
    SET DATA TYPE text;

    ALTER TABLE job_applied 
    DROP COLUMN contact_name;

    DROP TABLE job_applied; 