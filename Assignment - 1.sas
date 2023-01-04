/* QUE-01 */

data number;
Var1 = 123;
Var2 = 356;
Var3 = 923;
proc print data = number;
run;

/* QUE - 02 */

data profile;
input PAT_ID:$10. Enrol$ Bscore;
datalines;
PAT3000001 YES 99
PAT3000002 YES 101
PAT3000003 NO 125
;
proc print data = profile;
run;

/* QUE - 03 */
data NEW_PROFILE;
SET PROFILE;
proc print data = new_profile;
run;

/* QUE - 04 A. */
data class;
input StudentID:$20. Gender$ Major$ Exam1 Exam2;
datalines;
001 M BIO 80 84 
002 M EPI 75 73 
003 F EPI 90 86 
004 M BIO 83 85 
005 F EPI 94 94 
006 F EPI 88 84
;
proc print data = class;
run;

/* QUE - 04 B. */
proc print data = class;
  var Gender;
  run;
  
proc print data = class;
  var Major;
  run;
  

/* QUE - 05 A. */
data sample1;
set class;
if Exam1>88;
proc print data = sample1;
run;


/* QUE - 05 B. */

data sample2;
set class;
if Exam2>90;
proc print data = sample1;
run;

/* QUE - 05 C. */
data sample3;
set class;
if exam1>90 then marks="more than 90";
else if 88<=exam1<=90 then marks="b/w 88 & 90";
else if exam1<88 then marks="less than 88";
proc print data = sample3;
run;

/* or other method */

/* QUE - 05 C. */
data sample3;
set class;
if exam1>90 & 88<=exam1<=90 & exam1<88 then;
proc print data = sample3;
run;


/* QUE - 05 D. */
data  sample4;
set class;
if exam2>88 then category="Excellent";
else if exam2<88 then category="Average";
proc print data = sample4;
run;

/* QUE - 06 */
data mydat;
do until  i=1 to 5;
y = i**2;
output;
end;
run;


data sample1;
sum=0;
i=1;
do while(i<5);
sum=sum+i;
i+1;
output;
end;
run;


/* QUE - 07 */
data dataoperators;
input @1Marks1 @5Marks2;
add_res = Marks1 + Marks2;
expo_res = Marks1**Marks2;
rand_int = RANUNI(10);
max_number = Max(Marks1, Marks2);
min_number = Min(Marks1, Marks2);
EQ_=(marks1 = marks2);
datalines;
88 
90
;
proc print data=dataoperators;
run;






