#!/bin/bash


R1_START=10
R2_START=10

### 
###
###


IDS=(
b827eb45c685.68c90b04e18d.1
b827eb45c685.68c90b04e180.1
);

ARR=(
10   7    0    0.8
6    6    0.5  2
5    3    1.5  3
2    2    3    4
1    1    0    0 
);



for ((y=0; y, ${#IDS[*]}; y+=1));
do

for ((i=0; i<${#ARR[*]}; i+=4)); 
do

   #echo "RAND Start: ${ARR[$i+2]}"
   #echo "RAND LN: ${ARR[$i+3]}"
   START=${ARR[$i+2]}
   LN=${ARR[$i+3]}
   for x in `eval echo {${ARR[$i]}..${ARR[$i+1]}}`
   do
     dataset_date=`date`
     TODAY=`date -d "$dataset_date - $x days" +%Y-%m-%d`
     YEAR=`date -d "$dataset_date - $x days" +%Y`
     MONTH=`date -d "$dataset_date - $x days" +%m`
     DAY=`date -d "$dataset_date - $x days" +%d`

 for hour in {0..23}
   do
   lhour=`printf "%02d" $hour`
      for min in {0..59}
      do
        lmin=`printf "%02d" $min`
     rn1=` eval getrand ${START} ${LN}`
     rn2=` eval getrand ${START} ${LN}`
     rn3=` eval getrand ${START} ${LN}`

        echo "insert into sensors_rel values( 'b827eb45c685.68c90b04e18d.1', 
        '$YEAR-$MONTH-$DAY $lhour:$lmin:0.00000', $rn1, $rn2, $rn3);"
      done
 done




   done


done

done


