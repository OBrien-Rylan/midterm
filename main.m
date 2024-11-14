%Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 11/3/2024
% Updated On 11/13/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: midterm
% Date: 11/13/2024
% All Rights Reserved - MIT License

% Main script to demonstrate the functionality
db = StudentDatabase();  % Create a new StudentDatabase object

% Adding sample students
db = db.addStudent(Student(1, 'Marty', 18, 3.5, 'Chemical Engineering'));
db = db.addStudent(Student(2, 'Doc Brown', 21, 3.9, 'Quantum Physics'));
db = db.addStudent(Student(3, 'Biff', 19, 3.0, 'Business'));

% Performing searches
student = db.findStudentByID(1);  % Find student by ID
if ~isempty(student)
    student.displayInfo();  % Display student information
end

studentsCH = db.getStudentsByMajor('Chemical Engineering');  % Get students by major
for i = 1:length(studentsCH)
    studentsCH(i).displayInfo();  % Display information for each student
end

% Generating visualizations
visualizeData(db);  % Call the function to visualize data

% Saving and loading database
db.saveToFile('StudentDatabase.mat');  % Save the database to a file
db = db.loadFromFile('StudentDatabase.mat');  % Load the database from a file