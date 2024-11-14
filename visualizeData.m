%Author Name: Rylan O'Brien
% Email: robrien17@rowan.edu
% Created On 11/3/2024
% Updated On 11/13/2024
% Course: MATLAB Programming - Fall 2024
% Assignment: midterm
% Date: 11/13/2024
% All Rights Reserved - MIT License

function visualizeData(database)
    % GPA Distribution Histogram
    gpas = [database.Students.GPA];
    figure;
    histogram(gpas);
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Frequency');
    
    % Average GPA by Major
    majors = unique({database.Students.Major});
    avgGPA = zeros(1, length(majors));
    for i = 1:length(majors)
        majorStudents = database.getStudentsByMajor(majors{i});
        avgGPA(i) = mean([majorStudents.GPA]);
    end
    figure;
    bar(categorical(majors), avgGPA);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
    
    % Age Distribution
    ages = [database.Students.Age];
    figure;
    histogram(ages);
    title('Age Distribution');
    xlabel('Age');
    ylabel('Frequency');
end