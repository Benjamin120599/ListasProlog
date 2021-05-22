%student(id ,name([Last, First]), grades([a1, a2, a3, test])).

student(1001, name([allteron, alice]), grades([92,75,100,85])).
student(1002, name([boberson, bob]), grades([50,64,73,66])).
student(1003, name([charleston, charlie]), grades([65,75,85,100])).
student(1004, name([davidson, dave]), grades([10,92,34,87])).
student(1005, name([ellenovitch, ellen]), grades([72,87,82,70])).

%How did alice do on assigment 1?
student1(A1) :- student(_, name([_,alice]), grades([A1|_])).

%How did alice do on assigment 2?
student2(A2) :- student(_, name([_,alice]), grades([_, A2|_])).

%How did student 1002 do on the test?
student3(Test) :- student(1002, _, grades([_, _, _, Test])).
student4 :- student(1002, _, grades(L)), last(L, Test), Test==100.

%Who got 100 on the test?
student5 :- student(_, name(Name), grades(L)), last(L, Test), Test==100.

%Did anyone get 100 on anything?
student6 :- student(_, name(Name), grades(L)), member(100,L).

%What is each student's average grade? (assume equal wighting)
student7 :- student(_, name(Name), grades([A1, A2, A3, Test])), Average is (A1+A2+A3+Test)/4. 