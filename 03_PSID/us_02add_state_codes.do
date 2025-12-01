* Recode PSID State Codes to FIPS State Codes
* Applied for waves where PSID codes were used (typically before 1994)

* PSID Code -> FIPS Code
* 1 Alabama -> 01
* 2 Arizona -> 04
* 3 Arkansas -> 05
* 4 California -> 06
* 5 Colorado -> 08
* 6 Connecticut -> 09
* 7 Delaware -> 10
* 8 District of Columbia -> 11
* 9 Florida -> 12
* 10 Georgia -> 13
* 11 Idaho -> 16
* 12 Illinois -> 17
* 13 Indiana -> 18
* 14 Iowa -> 19
* 15 Kansas -> 20
* 16 Kentucky -> 21
* 17 Louisiana -> 22
* 18 Maine -> 23
* 19 Maryland -> 24
* 20 Massachusetts -> 25
* 21 Michigan -> 26
* 22 Minnesota -> 27
* 23 Mississippi -> 28
* 24 Missouri -> 29
* 25 Montana -> 30
* 26 Nebraska -> 31
* 27 Nevada -> 32
* 28 New Hampshire -> 33
* 29 New Jersey -> 34
* 30 New Mexico -> 35
* 31 New York -> 36
* 32 North Carolina -> 37
* 33 North Dakota -> 38
* 34 Ohio -> 39
* 35 Oklahoma -> 40
* 36 Oregon -> 41
* 37 Pennsylvania -> 42
* 38 Rhode Island -> 44
* 39 South Carolina -> 45
* 40 South Dakota -> 46
* 41 Tennessee -> 47
* 42 Texas -> 48
* 43 Utah -> 49
* 44 Vermont -> 50
* 45 Virginia -> 51
* 46 Washington -> 53
* 47 West Virginia -> 54
* 48 Wisconsin -> 55
* 49 Wyoming -> 56
* 50 Alaska -> 02
* 51 Hawaii -> 15
* 99 NA/DK -> .

recode state_res ///
    (1=1) (2=4) (3=5) (4=6) (5=8) (6=9) (7=10) (8=11) (9=12) (10=13) ///
    (11=16) (12=17) (13=18) (14=19) (15=20) (16=21) (17=22) (18=23) (19=24) (20=25) ///
    (21=26) (22=27) (23=28) (24=29) (25=30) (26=31) (27=32) (28=33) (29=34) (30=35) ///
    (31=36) (32=37) (33=38) (34=39) (35=40) (36=41) (37=42) (38=44) (39=45) (40=46) ///
    (41=47) (42=48) (43=49) (44=50) (45=51) (46=53) (47=54) (48=55) (49=56) ///
    (50=2) (51=15) (99=.) (else=.) ///
    if intyear < 1994
