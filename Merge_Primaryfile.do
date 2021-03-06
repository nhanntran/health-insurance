*****Project: Health insurance ****
*****Author(s): Nhan Tran
***** Start date: 8/29/2021*****



***** DATA PREPARATION - DEMOGRAPHIC & HEALTHCARE INFORMATION*****




/*For 2010*/
use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc1a.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m1a_id.dta", replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc3a.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m3a.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc3b.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m3b.dta", replace
clear


use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4a1.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a1.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4a2.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a2.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4a3.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a3.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4a4.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a4.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4a5.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a5.dta", replace
clear


*Merge
use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m1a_id.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a1.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a2.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a3.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a4.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4a5.dta"
drop _merge
merge 1:m id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m3a.dta"
drop if _merge==2 
drop _merge
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m3b.dta" 
drop _merge
gen year=2010
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\merge_2010.dta" , replace
clear


/*For 2012*/
use "E:\Research\Health_insurance\data\VHLSS 2012\Muc1A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m1a.dta", replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2012\Muc3A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m3a.dta", replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2012\Muc3B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m3b.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc3B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m3b.dta", replace



*Merge
use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m1a.dta", clear
merge 1:m id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m3a.dta"
drop _merge
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m3b.dta" 
drop _merge
gen year=2012
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\merge_2012.dta", replace
clear

/*For 2014*/
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc1A.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m1a.dta",replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc3A.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3a.dta", replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc3B.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3b.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc3C.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3c.dta", replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4a.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4a.dta", replace
clear

*Merge
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m1a.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4a.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3a.dta"
drop _merge
merge 1:m id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3b.dta"
drop if _merge==2
drop _merge
merge m:1  id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m3c.dta" 
drop _merge
gen year=2014
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\merge_2014.dta", replace
clear


/*For 2016*/
use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc1A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m1a.dta",replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc3A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m3a.dta",replace
clear
use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc3B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m3b.dta",replace
clear

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4a.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso matv), punct(-)
sort id_num1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4a.dta",replace
clear


*Merge
use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m1a.dta" , clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4a.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m3a.dta" 
drop if _merge==2
drop _merge
merge 1:m id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m3b.dta" 
drop _merge
gen year=2016
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\merge_2016.dta", replace
clear

***** DATA PREPARATION - INCOME (WAGE & AGRICULTURAL INCOME)*****
//2010
use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b0.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b0c5= total(m4b0c5-m4b0c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b0.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b11.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b11c7=total(m4b11c7), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b11.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b12.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b12c6=total(m4b12c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b12.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b13.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b13c6=total(m4b13c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b13.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b14.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b14c6=total(m4b14c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b14.dta",replace


use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b15.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b15c2=total(m4b15c2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b15.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b16.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b16c2e=total(m4b16c2e-m4b16c2e1-m4b16c2e2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b16.dta",replace 


use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b21.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b21c4b=total(m4b21c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b21.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b22b.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b22c19=total(m4b22c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b22b.dta",replace



use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b31.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b31c5=total(m4b31c5), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b31.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b32B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b32c17=total(m4b32c17), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b32b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b41.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b41c4=total(m4b41c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b41.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b42b.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b42c14=total(m4b42c14), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b42b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b51.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b51c4b=total(m4b51c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b51.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4b52.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b52c19=total(m4b52c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b52.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4c1.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4c1c18=total(m4c1c18), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4c1.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4c2.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4c2c33=total(m4c2c33), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4c2.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data\muc4d.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
gen inc_m4d= m4dc2_01+m4dc2_02+m4dc2_03+m4dc2_04+m4dc2_05+m4dc2_06+m4dc2_07+m4dc2_08+m4dc2_09+m4dc2_10+m4dc2_11+m4dc2_12+m4dc2_13+m4dc2_14+m4dc2_15+m4dc2_16+m4dc2_17+m4dc2_18+m4dc2_19+m4dc2_20
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4d.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b11.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b12.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b13.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b14.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b15.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b16.dta"
drop _merge
replace inc_m4b11c7=0 if inc_m4b11c7==.
replace inc_m4b12c6=0 if inc_m4b12c6==.
replace inc_m4b13c6=0 if inc_m4b13c6==.
replace inc_m4b14c6=0 if inc_m4b14c6==.
replace inc_m4b15c2=0 if inc_m4b15c2==.
replace exp_m4b16c2e=0 if exp_m4b16c2e==.
gen net_inc_agri=inc_m4b11c7+inc_m4b12c6+inc_m4b13c6+inc_m4b14c6+inc_m4b15c2-exp_m4b16c2e
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\trongtrot.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b21.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b22b.dta"
drop _merge
replace inc_m4b21c4b=0 if inc_m4b21c4b==.
replace exp_m4b22c19=0 if exp_m4b22c19==.
gen net_inc_chan_nuoi=inc_m4b21c4b-exp_m4b22c19
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\channuoi.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b31.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b32b.dta"
drop _merge
replace inc_m4b31c5=0 if inc_m4b31c5==.
replace exp_m4b32c17=0 if exp_m4b32c17==.
gen net_inc_dichvu=inc_m4b31c5-exp_m4b32c17
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\dichvu.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b41.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b42b.dta"
drop _merge
replace inc_m4b41c4=0 if inc_m4b41c4==.
replace exp_m4b42c14=0 if exp_m4b42c14==.
gen net_inc_forest=inc_m4b41c4-exp_m4b42c14
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\lamnghiep.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b51.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b52.dta"
drop _merge
replace inc_m4b51c4b=0 if inc_m4b51c4b==.
replace exp_m4b52c19=0 if exp_m4b52c19==.
gen net_inc_thuysan=inc_m4b51c4b-exp_m4b52c19
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\thuysan.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4c1.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4c2.dta"
drop _merge
replace inc_m4c1c18=0 if inc_m4c1c18==.
replace exp_m4c2c33=0 if exp_m4c2c33==.
gen net_inc_others=  inc_m4c1c18-exp_m4c2c33
drop m4c* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\other_agri.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4b0.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\trongtrot.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\channuoi.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\dichvu.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\lamnghiep.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\thuysan.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\other_agri.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\m4d.dta"
drop _merge
drop m4d* m4b*
replace inc_m4b0c5=0 if inc_m4b0c5==.
replace net_inc_agri=0 if net_inc_agri==.
replace net_inc_chan_nuoi=0 if net_inc_chan_nuoi==.
replace net_inc_dichvu=0 if net_inc_dichvu==.
replace net_inc_thuysan=0 if net_inc_thuysan==.
replace net_inc_forest=0 if net_inc_forest==.
replace net_inc_others=0 if net_inc_others==.
replace inc_m4d=0 if inc_m4d==.
gen total_business_income=inc_m4b0c5+ net_inc_agri+net_inc_chan_nuoi+net_inc_dichvu+net_inc_forest+ net_inc_others+ net_inc_thuysan+inc_m4d
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\business_income_2010.dta",replace





//2012
//2012
use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B0.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b0c5= total(m4b0c5-m4b0c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b0.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B11.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b11c7=total(m4b11c7), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b11.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B12.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b12c6=total(m4b12c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b12.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B13.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b13c6=total(m4b13c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b13.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B14.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b14c6=total(m4b14c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b14.dta",replace


use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B15.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b15c2=total(m4b15c2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b15.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B16.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b16c2e=total(m4b16c2e-m4b16c2e1-m4b16c2e2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b16.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B21.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b21c4b=total(m4b21c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b21.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B22B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b22c19=total(m4b22c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b22b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B31.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b31c5=total(m4b31c5), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b31.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B32B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b32c17=total(m4b32c17), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b32b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B41.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b41c4=total(m4b41c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b41.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B42B.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b42c14=total(m4b42c14), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b42b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B51.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b51c4b=total(m4b51c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b51.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4B52.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b52c19=total(m4b52c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b52.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4C1.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4c1c18=total(m4c1c18), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4c1.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4C2.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4c2c33=total(m4c2c33), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4c2.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Muc4D.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
gen inc_m4d= m4dc2_01+m4dc2_02+m4dc2_03+m4dc2_04+m4dc2_05+m4dc2_06+m4dc2_07+m4dc2_08+m4dc2_09+m4dc2_10+m4dc2_11+m4dc2_12+m4dc2_13+m4dc2_14+m4dc2_15+m4dc2_16+m4dc2_17+m4dc2_18+m4dc2_19+m4dc2_20
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4d.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b11.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b12.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b13.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b14.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b15.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b16.dta"
drop _merge
replace inc_m4b11c7=0 if inc_m4b11c7==.
replace inc_m4b12c6=0 if inc_m4b12c6==.
replace inc_m4b13c6=0 if inc_m4b13c6==.
replace inc_m4b14c6=0 if inc_m4b14c6==.
replace inc_m4b15c2=0 if inc_m4b15c2==.
replace exp_m4b16c2e=0 if exp_m4b16c2e==.
gen net_inc_agri=inc_m4b11c7+inc_m4b12c6+inc_m4b13c6+inc_m4b14c6+inc_m4b15c2-exp_m4b16c2e
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\trongtrot.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b21.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b22b.dta"
drop _merge
replace inc_m4b21c4b=0 if inc_m4b21c4b==.
replace exp_m4b22c19=0 if exp_m4b22c19==.
gen net_inc_chan_nuoi=inc_m4b21c4b-exp_m4b22c19
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\channuoi.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b31.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b32b.dta"
drop _merge
replace inc_m4b31c5=0 if inc_m4b31c5==.
replace exp_m4b32c17=0 if exp_m4b32c17==.
gen net_inc_dichvu=inc_m4b31c5-exp_m4b32c17
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\dichvu.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b41.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b42b.dta"
drop _merge
replace inc_m4b41c4=0 if inc_m4b41c4==.
replace exp_m4b42c14=0 if exp_m4b42c14==.
gen net_inc_forest=inc_m4b41c4-exp_m4b42c14
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\lamnghiep.dta"


use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b51.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b52.dta"
drop _merge
replace inc_m4b51c4b=0 if inc_m4b51c4b==.
replace exp_m4b52c19=0 if exp_m4b52c19==.
gen net_inc_thuysan=inc_m4b51c4b-exp_m4b52c19
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\thuysan.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4c1.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4c2.dta"
drop _merge
replace inc_m4c1c18=0 if inc_m4c1c18==.
replace exp_m4c2c33=0 if exp_m4c2c33==.
gen net_inc_others=  inc_m4c1c18-exp_m4c2c33
drop m4c* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\other_agri.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4b0.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\trongtrot.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\channuoi.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\dichvu.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\lamnghiep.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\thuysan.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\other_agri.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\m4d.dta"
drop _merge
drop m4d* m4b*
replace inc_m4b0c5=0 if inc_m4b0c5==.
replace net_inc_agri=0 if net_inc_agri==.
replace net_inc_chan_nuoi=0 if net_inc_chan_nuoi==.
replace net_inc_dichvu=0 if net_inc_dichvu==.
replace net_inc_thuysan=0 if net_inc_thuysan==.
replace net_inc_forest=0 if net_inc_forest==.
replace net_inc_others=0 if net_inc_others==.
replace inc_m4d=0 if inc_m4d==.
gen total_business_income=inc_m4b0c5+ net_inc_agri+net_inc_chan_nuoi+net_inc_dichvu+net_inc_forest+ net_inc_others+ net_inc_thuysan+inc_m4d
save "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\business_income_2012.dta",replace


//2014
//2014
/* use "", clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b0c5= total(m4b0c5-m4b0c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "",replace */

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B11.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b11c7=total(m4b11c7), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b11.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B12.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b12c6=total(m4b12c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b12.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B13.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b13c6=total(m4b13c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b13.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B14.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b14c6=total(m4b14c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b14.dta",replace


use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B15.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b15c2=total(m4b15c2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b15.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B16.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b16c2e=total(m4b16c2e-m4b16c2e1-m4b16c2e2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b16.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B21.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b21c4b=total(m4b21c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b21.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B22.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b22c19=total(m4b22c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b22b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B31.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b31c5=total(m4b31c5), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b31.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B32.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b32c17=total(m4b32c17), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b32b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B41.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b41c4=total(m4b41c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b41.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B42A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b42c14=total(m4b42c14), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b42b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B51.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b51c4b=total(m4b51c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b51.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4B52.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b52c19=total(m4b52c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b52.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4C1.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4c1c18=total(m4c1c18), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4c1.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4C2.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4c2c33=total(m4c2c33), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4c2.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\VHLSS2014_Households\Muc4D.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
gen inc_m4d= m4dc2_01+m4dc2_02+m4dc2_03+m4dc2_04+m4dc2_05+m4dc2_06+m4dc2_07+m4dc2_08+m4dc2_09+m4dc2_10+m4dc2_11+m4dc2_12+m4dc2_13+m4dc2_14+m4dc2_15+m4dc2_16+m4dc2_17+m4dc2_18+m4dc2_19+m4dc2_20
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4d.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b11.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b12.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b13.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b14.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b15.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b16.dta"
drop _merge
replace inc_m4b11c7=0 if inc_m4b11c7==.
replace inc_m4b12c6=0 if inc_m4b12c6==.
replace inc_m4b13c6=0 if inc_m4b13c6==.
replace inc_m4b14c6=0 if inc_m4b14c6==.
replace inc_m4b15c2=0 if inc_m4b15c2==.
replace exp_m4b16c2e=0 if exp_m4b16c2e==.
gen net_inc_agri=inc_m4b11c7+inc_m4b12c6+inc_m4b13c6+inc_m4b14c6+inc_m4b15c2-exp_m4b16c2e
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\trongtrot.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b21.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b22b.dta"
drop _merge
replace inc_m4b21c4b=0 if inc_m4b21c4b==.
replace exp_m4b22c19=0 if exp_m4b22c19==.
gen net_inc_chan_nuoi=inc_m4b21c4b-exp_m4b22c19
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\channuoi.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b31.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b32b.dta"
drop _merge
replace inc_m4b31c5=0 if inc_m4b31c5==.
replace exp_m4b32c17=0 if exp_m4b32c17==.
gen net_inc_dichvu=inc_m4b31c5-exp_m4b32c17
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\dichvu.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b41.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b42b.dta"
drop _merge
replace inc_m4b41c4=0 if inc_m4b41c4==.
replace exp_m4b42c14=0 if exp_m4b42c14==.
gen net_inc_forest=inc_m4b41c4-exp_m4b42c14
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\lamnghiep.dta"


use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b51.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b52.dta"
drop _merge
replace inc_m4b51c4b=0 if inc_m4b51c4b==.
replace exp_m4b52c19=0 if exp_m4b52c19==.
gen net_inc_thuysan=inc_m4b51c4b-exp_m4b52c19
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\thuysan.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4c1.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4c2.dta"
drop _merge
replace inc_m4c1c18=0 if inc_m4c1c18==.
replace exp_m4c2c33=0 if exp_m4c2c33==.
gen net_inc_others=  inc_m4c1c18-exp_m4c2c33
drop m4c* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\other_agri.dta", replace

/*use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4b0.dta", clear ///////////////// Why there is no mb40.dta */
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\trongtrot.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\channuoi.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\dichvu.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\lamnghiep.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\thuysan.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\other_agri.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\m4d.dta"
drop _merge
drop m4d* 
/* replace inc_m4b0c5=0 if inc_m4b0c5==.*/
replace net_inc_agri=0 if net_inc_agri==.
replace net_inc_chan_nuoi=0 if net_inc_chan_nuoi==.
replace net_inc_dichvu=0 if net_inc_dichvu==.
replace net_inc_thuysan=0 if net_inc_thuysan==.
replace net_inc_forest=0 if net_inc_forest==.
replace net_inc_others=0 if net_inc_others==.
replace inc_m4d=0 if inc_m4d==.
gen total_business_income=/*inc_m4b0c5 + */ net_inc_agri+net_inc_chan_nuoi+net_inc_dichvu+net_inc_forest+ net_inc_others+ net_inc_thuysan+inc_m4d
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\business_income_2014.dta",replace

//2016
use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B0.dta", clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b0c5= total(m4b0c5-m4b0c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b0.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B11.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b11c7=total(m4b11c7), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b11.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B12.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b12c6=total(m4b12c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b12.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B13.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b13c6=total(m4b13c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b13.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B14.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b14c6=total(m4b14c6), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b14.dta",replace


use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B15.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b15c2=total(m4b15c2), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b15.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B16.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b16c2e=total(m4b16c2e), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b16.dta",replace 

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B21.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b21c4b=total(m4b21c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b21.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B22.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b22c19=total(m4b22c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b22b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B31.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b31c5=total(m4b31c5), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b31.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B32.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b32c17=total(m4b32c17), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b32b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B41.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b41c4=total(m4b41c4), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b41.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B42A.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b42c14=total(m4b42c14), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b42b.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B51.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4b51c4b=total(m4b51c4b), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b51.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4B52.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4b52c19=total(m4b52c19), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b52.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4C1.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen inc_m4c1c18=total(m4c1c18), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4c1.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4C2.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
egen exp_m4c2c33=total(m4c2c33), by(tinh huyen xa diaban hoso)
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4c2.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data VHLSS 2016\Muc4D.dta",clear
egen id_num1 = concat(tinh huyen xa diaban hoso), punct(-)
sort id_num1
gen inc_m4d= m4dc2_01+m4dc2_02+m4dc2_03+m4dc2_04+m4dc2_05+m4dc2_06+m4dc2_07+m4dc2_08+m4dc2_09+m4dc2_10+m4dc2_11+m4dc2_12+m4dc2_13+m4dc2_14+m4dc2_15+m4dc2_16+m4dc2_17+m4dc2_18+m4dc2_19+m4dc2_20
bysort id_num1: gen pid=_n
drop if pid!=1
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4d.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b11.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b12.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b13.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b14.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b15.dta"
drop _merge
merge 1:1 id_num1 using  "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b16.dta"
drop _merge
replace inc_m4b11c7=0 if inc_m4b11c7==.
replace inc_m4b12c6=0 if inc_m4b12c6==.
replace inc_m4b13c6=0 if inc_m4b13c6==.
replace inc_m4b14c6=0 if inc_m4b14c6==.
replace inc_m4b15c2=0 if inc_m4b15c2==.
replace exp_m4b16c2e=0 if exp_m4b16c2e==.
gen net_inc_agri=inc_m4b11c7+inc_m4b12c6+inc_m4b13c6+inc_m4b14c6+inc_m4b15c2-exp_m4b16c2e
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\trongtrot.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b21.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b22b.dta"
drop _merge
replace inc_m4b21c4b=0 if inc_m4b21c4b==.
replace exp_m4b22c19=0 if exp_m4b22c19==.
gen net_inc_chan_nuoi=inc_m4b21c4b-exp_m4b22c19
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\channuoi.dta",replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b31.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b32b.dta"
drop _merge
replace inc_m4b31c5=0 if inc_m4b31c5==.
replace exp_m4b32c17=0 if exp_m4b32c17==.
gen net_inc_dichvu=inc_m4b31c5-exp_m4b32c17
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\dichvu.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b41.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b42b.dta"
drop _merge
replace inc_m4b41c4=0 if inc_m4b41c4==.
replace exp_m4b42c14=0 if exp_m4b42c14==.
gen net_inc_forest=inc_m4b41c4-exp_m4b42c14
drop m4b* exp_* inc_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\lamnghiep.dta", replace


use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b51.dta",clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b52.dta"
drop _merge
replace inc_m4b51c4b=0 if inc_m4b51c4b==.
replace exp_m4b52c19=0 if exp_m4b52c19==.
gen net_inc_thuysan=inc_m4b51c4b-exp_m4b52c19
drop m4b* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\thuysan.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4c1.dta", clear
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4c2.dta"
drop _merge
replace inc_m4c1c18=0 if inc_m4c1c18==.
replace exp_m4c2c33=0 if exp_m4c2c33==.
gen net_inc_others=  inc_m4c1c18-exp_m4c2c33
drop m4c* inc_* exp_*
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\other_agri.dta", replace

use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4b0.dta", clear 
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\trongtrot.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\channuoi.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\dichvu.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\lamnghiep.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\thuysan.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\other_agri.dta"
drop _merge
merge 1:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\m4d.dta"
drop _merge
drop m4d* m4b*
replace inc_m4b0c5=0 if inc_m4b0c5==.
replace net_inc_agri=0 if net_inc_agri==.
replace net_inc_chan_nuoi=0 if net_inc_chan_nuoi==.
replace net_inc_dichvu=0 if net_inc_dichvu==.
replace net_inc_thuysan=0 if net_inc_thuysan==.
replace net_inc_forest=0 if net_inc_forest==.
replace net_inc_others=0 if net_inc_others==.
replace inc_m4d=0 if inc_m4d==.
gen total_business_income=inc_m4b0c5+ net_inc_agri+net_inc_chan_nuoi+net_inc_dichvu+net_inc_forest+ net_inc_others+ net_inc_thuysan+inc_m4d
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\business_income_2016.dta",replace



*******************************************Merge demographic data &  business income*********************************

//2010

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\merge_2010.dta", clear
drop id_num1
egen id_num1= concat(tinh huyen xa diaban hoso), punct(-)
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\business_income_2010.dta"
drop _merge
drop id_num1 m1ac1 m1ac1a m1ac8 m1ac9 m1ac10 m1ac11n m1ac11t m4ac4c m4ac4m m4ac5 m4ac6 m4ac7 m4ac8a m4ac8b m4ac9 m4ac10 m4ac13a m4ac13b m4ac13c m4ac14 m4ac15a m4ac15m m4ac16c m4ac16m m4ac16 m4ac17 m4ac18 m4ac19 m4ac20 m4ac21 m4ac22 m4ac25 m4ac26 m3c2
rename m4ac3 occ1
rename m4ac11 wage1
rename m4ac12a wage_bonus1
rename m4ac12b wage_others1
rename m4ac15 occ2
rename m4ac23 wage2
rename m4ac24a wage_bonus2
rename m4ac24b wage_others2
rename m4ac28a unemploy_ins
rename m4ac28b resign_aid
rename m4ac28c pension
rename m4ac28d early_retire
rename m4ac28e one_time_aid
rename m3c3a csyt
rename m3c3b csyt_ten
rename m3c4 mucdich
rename m3c5a outpatient_visit
rename m3c5b outpatient_exp
rename m3c6a inpatient_visit
rename m3c6b inpatient_exp
rename m3c9 byht
rename m3c10a loai_bhyt
rename m3c10b loai_bhyt2
rename m3c11 chiphi_mua_bhyt
rename m3c12a outpatient_use
rename m3c12b inpatient_use
rename m3c13 oop_exp
rename m3c14 health_equip
rename m3c15 health_aid
egen id_num1= concat(tinh huyen xa diaban hoso matv), punct(-)
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\final_2010.dta",replace

//2012
use "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\merge_2012.dta",clear
drop id_num1
drop _merge
egen id_num1= concat(tinh huyen xa diaban hoso), punct(-)
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2012\Data_Processing\business_income_2012.dta"
drop _merge
drop id_num1 m1ac7 m1ac8 m1ac9 m1ac10 m1ac11n m1ac11t m4ac4m m4ac4c m4ac4 m4ac5 m4ac6 m4ac7 m4ac8a m4ac8b m4ac9 m4ac10 m4ac13a m4ac13b m4ac13c m4ac14 m4ac15a m4ac15m m4ac16c m4ac16m m4ac16 m4ac17 m4ac18 m4ac19 m4ac20 m4ac21 m4ac22 m4ac25 m4ac26 m4a2c* m3c2
rename m4ac3 occ1
rename m4ac11 wage1
rename m4ac12a wage_bonus1
rename m4ac12b wage_others1
rename m4ac15 occ2
rename m4ac23 wage2
rename m4ac24a wage_bonus2
rename m4ac24b wage_others2
rename m4ac28a unemploy_ins
rename m4ac28b resign_aid
rename m4ac28c pension
rename m4ac28d early_retire
rename m4ac28e one_time_aid
rename m3c3a csyt
rename m3c3b csyt_ten
rename m3c4 mucdich
rename m3c5a outpatient_visit
rename m3c5b outpatient_exp
rename m3c6a inpatient_visit
rename m3c6b inpatient_exp
rename m3c9 byht
rename m3c10a loai_bhyt
rename m3c10b loai_bhyt2
rename m3c11 chiphi_mua_bhyt
rename m3c12a outpatient_use
rename m3c12b inpatient_use
rename m3c13 oop_exp
rename m3c14 health_equip
rename m3c15 health_aid
egen id_num1= concat(tinh huyen xa diaban hoso matv), punct(-)
save "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\final_2012.dta",replace

//2014 (Run business income_2014 again without m4b0.dta)
use "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\merge_2014.dta",clear
drop id_num1
egen id_num1=concat(tinh huyen xa diaban hoso), punct(-)
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\business_income_2014.dta"
drop _merge
drop id_num1 m1ac7* m1ac8 m1ac9 m1ac10 m1ama1 m1ac15* m4ac4c m4ac4m m4ac4 m4ac5 m4ac6 m4ac7 m4ama1 m4ac8* m4ac9 m4ac10 m4ac13* m4ama2 m4ac14 m4ac15a m4ac15m m4ac16c m4ac16m m4ac16 m4ac17 m4ac18 m4ac19 m4ama3 m4ac20 m4ac21 m4ac22 m4ac25 m4ac26 m4ama4
rename m4ac3 occ1
rename m4ac11 wage1
rename m4ac12a wage_bonus1
rename m4ac12b wage_others1
rename m4ac15 occ2
rename m4ac23 wage2
rename m4ac24a wage_bonus2
rename m4ac24b wage_others2
rename m4ac28a unemploy_ins
rename m4ac28b resign_aid
rename m4ac28c pension
rename m4ac28d early_retire
rename m4ac28e one_time_aid
rename m3c3a csyt
rename m3c3b csyt_ten
rename m3c4 mucdich
rename m3c5a outpatient_visit
rename m3c5b outpatient_exp
rename m3c6a inpatient_visit
rename m3c6b inpatient_exp
rename m3c9 byht
rename m3c10a loai_bhyt
rename m3c10b loai_bhyt2
rename m3c11 chiphi_mua_bhyt
rename m3c12a outpatient_use
rename m3c12b inpatient_use
rename m3c13 oop_exp
rename m3c14 health_equip
rename m3c15 health_aid
egen id_num1= concat(tinh huyen xa diaban hoso matv), punct(-)
save "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\final_2014.dta", replace

//2016 
use "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\merge_2016.dta", clear
drop id_num1
egen id_num1=concat(tinh huyen xa diaban hoso), punct(-)
merge m:1 id_num1 using "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\business_income_2016.dta"
drop _merge
drop id_num1 m1ac7* m1ac8 m1ac9 m1ac10 m1ama1 m1ac15* m1ac16 m4ac4c m4ac4m m4ac4 m4ac5 m4ac6 m4ac7 m4ama1 m4ac8* m4ac9 m4ac10 m4ac13* m4ac14 m4ama2 m4ac15 m4ac16 m4ac17 m4ac19* m4ac20 m4ama3 m4ac21 m4ac22 m4ac23 m4ac24 m4ac25 m4ama4 m4ac28 m4ac29
rename m4ac3 occ1
rename m4ac11 wage1
rename m4ac12a wage_bonus1
rename m4ac12b wage_others1
rename m4ac18 occ2
rename m4ac26 wage2
rename m4ac27a wage_bonus2
rename m4ac27b wage_others2
rename m4ac31a unemploy_ins
rename m4ac31b resign_aid
rename m4ac31c pension
rename m4ac31d early_retire
rename m4ac31e one_time_aid
rename m3c3a csyt
rename m3c3b csyt_ten
rename m3c4 mucdich
rename m3c5a outpatient_visit
rename m3c5b outpatient_exp
rename m3c6a inpatient_visit
rename m3c6b inpatient_exp
rename m3c9 byht
rename m3c10a loai_bhyt
rename m3c10b loai_bhyt2
rename m3c11 chiphi_mua_bhyt
rename m3c12a outpatient_use
rename m3c12b inpatient_use
rename m3c13 oop_exp
rename m3c14 health_equip
rename m3c15 health_aid

egen id_num1= concat(tinh huyen xa diaban hoso matv), punct(-)
save "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\final_2016.dta",replace

*******************************Append data from 2010-2016**************************************************** Check lai ma cac variable

use "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\final_2010.dta",clear
append using "E:\Research\Health_insurance\data\VHLSS 2010\VHLSS 2010\Data 2010\Data_processing\final_2012.dta"
append using "E:\Research\Health_insurance\data\VHLSS 2014\VHLSS 2104\Data_Processing\final_2014.dta"
append using  "E:\Research\Health_insurance\data\VHLSS 2016\Data_Processing\final_2016.dta"
save "E:\Research\Health_insurance\data\data_2010-2016.dta", replace


******************************* Data************************
use "E:\Research\Health_insurance\data\data_2010-2016.dta", clear
egen xa_id=concat(tinh huyen xa), punct(-)
merge m:1 xa_id using "E:\summer2021\Project 600\stata\stata\dsxa_new.dta"
drop province* district* treat_580 xa_name cb* communeID_GIS communeN_GIS communeN1_GIS communeN_2017 communeID_2009 communeN_2009
drop if _merge==2
drop _merge
save "E:\Research\Health_insurance\data\data_2010-2016.dta", replace




use "E:\Research\Health_insurance\data\data_2010-2016.dta",clear
replace wage1=0  if wage1==.
replace wage_bonus1=0 if wage_bonus1==.
replace wage_others1=0 if wage_others1==.
replace wage2=0  if wage2==.
replace wage_bonus2=0 if wage_bonus2==.
replace wage_others2=0 if wage_others2==.
replace unemploy_ins=0 if unemploy_ins==.
replace resign_aid=0 if resign_aid==.
replace pension=0 if pension==.
replace early_retire=0 if early_retire==.
replace one_time_aid=0 if one_time_aid==.

gen all_wage= wage1+ wage_bonus1+wage_others1+ wage2+ wage_bonus2+ wage_others2+ unemploy_ins+resign_aid+pension+early_retire+one_time_aid
// Wage by household
egen wage_household= total(all_wage), by(tinh huyen xa diaban hoso year)
gen income_hh= wage_household+ total_business_income
// The number of household member
rename m1ac3 relate
drop if relate==8|relate==9|relate==7
egen sotv=count(id_num1), by(tinh huyen xa diaban hoso year)
gen income_capita= income_hh/sotv

replace byht=0 if byht==2

winsor income_capita , gen(income_capita_n) p(0.01)
hist income_capita_n

//number of children
egen no_child=total(relate==3), by(tinh huyen xa diaban hoso year)

gen single=0
replace single=1 if m1ac6==1 & m1ac5>18

gen rural=0
replace rural=1 if communeTypeN_1=="X??"

gen insurance=0
replace insurance=1 if loai_bhyt==2|loai_bhyt==3

rdplot insurance income_capita_n if rural==0,c(6000) graph_options(title(RD plot) ytitle(Covered by any insurance package) xtitle(Income per capita))

//McCrary (2008) test
DCdensity income_capita_n if rural==1, breakpoint(4800) generate(Xj Yj r0 fhat se_fhat) graphname(DCdensity_example.eps)

//Lee(2010) test
net install rddensity, from(https://raw.githubusercontent.com/rdpackages/rddensity/master/stata) replace
rddensity income_capita_n if rural==0,c(6000)

//RDD
rdbwselect outpatient_visit income_capita_n, c(4800) fuzzy(insurance) covs(m1ac5 m1ac2) kernel(uniform)
rdrobust outpatient_visit income_capita_n, c(4800) fuzzy(insurance) h(1013 1013) kernel(uniform)

// RD multi package

 net install rdmulti, from(https://raw.githubusercontent.com/rdpackages/rdmulti/master/stata) replace

