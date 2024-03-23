*** exercise 3.1 ;
***  this re-creates the dataset that went into making the 2x2 table ;

%let n11 = 5244;
%let n12 = 785;
%let n21 = 25117;
%let n22 = 2348;

data temp (drop= i);
 format Papsmear $3. Race $5.;

 do i=1 to &n11;
  Papsmear="No";
  Race = "White";
  output;
 end;

 do i=1 to &n12;
  Papsmear="No";
  Race = "Black";
  output;
 end;

 do i=1 to &n21;
  Papsmear="Yes";
  Race = "White";
  output;
 end;

 do i=1 to &n22;
  Papsmear="Yes";
  Race = "Black";
  output;
 end;
run;
data temp;
    set temp;
    Person = _N_;
run;

*** note sas alphabetizes the the levels of each variable;
***   so the table has columns reversed from the original;
proc freq data=temp;
 tables Papsmear*Race;
run;
