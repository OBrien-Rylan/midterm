%Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 11/3/2024
% Updated On 11/13/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: midterm
% Date: 11/13/2024
% All Rights Reserved - MIT License


classdef StudentDatabase
    properties
        Students    % Array to hold Student objects
    end
    
    methods
        % Constructor method to initialize an empty StudentDatabase
        function res = StudentDatabase()
            res.Students = [];
        end
        
        % Method to add a new student to the database
        function res = addStudent(currentObj, student)
            currentObj.Students = [currentObj.Students, student];
            res = currentObj;
        end
        
        % Method to find a student by their ID
        function res = findStudentByID(currentObj, id)
            student = [];
            for i = 1:length(currentObj.Students)
                if currentObj.Students(i).ID == id
                    student = currentObj.Students(i);
                    break;
                end
            end
            res = student;
        end
        
        % Method to get a list of students by their major
        function res = getStudentsByMajor(currentObj, major)
            students = [];
            for i = 1:length(currentObj.Students)
                if strcmp(currentObj.Students(i).Major, major)
                    students = [students, currentObj.Students(i)];
                end
            end
            res = students;
        end
        
        % Method to save the database to a .mat file
        function res = saveToFile(currentObj, filename)
            save(filename, 'currentObj');
            res = 1; % Indicate success
        end
        
        % Method to load the database from a .mat file
        function res = loadFromFile(currentObj, filename)
            loadedData = load(filename);
            res = loadedData.currentObj;
        end
    end
end