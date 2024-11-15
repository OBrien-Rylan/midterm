%Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 11/3/2024
% Updated On 11/13/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: midterm
% Date: 11/13/2024
% All Rights Reserved - MIT License

classdef Student
    properties
        ID      % Student ID
        Name    % Student Name
        Age     % Student Age
        GPA     % Student GPA
        Major   % Student Major
    end
    
    methods
        % Constructor method to initialize a Student object
        function obj = Student(id, name, age, gpa, major)
            obj.ID = id;
            obj.Name = name;
            obj.Age = age;
            obj.GPA = gpa;
            obj.Major = major;
        end
        
        % Method to display student information
        function displayInfo(obj)
            fprintf('ID: %d\nName: %s\nAge: %d\nGPA: %.2f\nMajor: %s\n', obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end
        
        % Method to update the GPA of a student
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
        end
    end
end
