%Hunter Burningham
%CS 2130 - Spring 2022

%Program - Boolean Algebra: Prolog for logic gates

%--- FACTS ---
&all the options for NOT truth table
mynot(0,1).
mynot(1,0).

%all the options for AND " " 
myand(0,0,0).
myand(0,1,0).
myand(1,0,0).
myand(1,1,1).

%all the options for OR
myor(0,0,0).
myor(0,1,1).
myor(1,0,1).
myor(1,1,1).

%---- Rules ----
%variables inside parenthesis simulate channels between gates, given as inputs/outputs for each simulated gate 
outputf(W, X, Y, Z, F) :- myand(W, X, T1),
    myor(X,T2, T3), myand(T1,T3,T4),
	mynot(Y, T2),  myor(Z,Y,T5), mynot(T5,T6), myor(T4,T6,F).
