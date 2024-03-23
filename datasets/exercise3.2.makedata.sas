*** exercise 3.2 ;
***  this re-creates the dataset that went into making the 2x2 table ;

%let n11 = 1763;
%let n12 = 489;
%let n21 = 403;
%let n22 = 670;

data temp (drop= i);
 format FirstScreen $7. SecondScreen $7.;

 do i=1 to &n11;
  FirstScreen ="Present";
  SecondScreen = "Present";
  output;
 end;

 do i=1 to &n12;
  FirstScreen ="Present";
  SecondScreen = "Absent";
  output;
 end;

 do i=1 to &n21;
  FirstScreen = "Absent";
  SecondScreen = "Present";
  output;
 end;

 do i=1 to &n22;
  FirstScreen = "Absent";
  SecondScreen = "Absent";
  output;
 end;
run;
data temp;
    set temp;
    Pair = _N_;
run;

*** note sas alphabetizes the the levels of each variable;
***   so the table has columns and rows reversed from the original;
proc freq data=temp;
 tables FirstScreen*SecondScreen;
run;
