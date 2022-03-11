*****TABLE 1************
ttest bills_presenter_total if dum2000==1 & alternate==0 & unit_individual==0, by(female)ttest bills_presenter_total if dum2003==1 & alternate==0 & unit_individual==0, by(female)ttest bills_presenter_total if dum2006==1 & alternate==0 & unit_individual==0, by(female)

ttest bills_prespassagerate if alternate==0 & dum2000==1, by(female)ttest bills_prespassagerate if alternate==0 & dum2003==1, by(female)ttest bills_prespassagerate if alternate==0 & dum2006==1, by(female)


*****Table 2, Model 1************************
nbreg bills_presenter_total female educ_level2 p_diputadolocal p_feddeputy p_senador committee_chair ///committee_secretary party_leader tier prddummy pandummy pvemdummy ptdummy convdummy nadummy ///minorparties_dum2 dum2003 dum2006 female2003 female2006 wnom1_dist_chambermed ///p_statepartyleader p_natpartyleader daysinoffice_log if alternate==0 & unit_individual==0

*****Table 3, Bill Sponsorship Expected Values***********************
estsimp nbreg bills_presenter_total female educ_level2 p_diputadolocal p_feddeputy p_senador committee_chair ///committee_secretary party_leader tier prddummy pandummy pvemdummy ptdummy convdummy nadummy ///minorparties_dum2 dum2003 dum2006 female2003 female2006 wnom1_dist_chambermed ///p_statepartyleader p_natpartyleader daysinoffice_log if alternate==0 & unit_individual==0

setx median*males, LVIIIsetx (female)0 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, ev*females, LVIIIsetx (female)1 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, ev*males, LIXsetx (female)0 (dum2003)1 (dum2006)0 (female2003)0 (female2006)0simqi, ev*females, LIXsetx (female)1 (dum2003)1 (dum2006)0 (female2003)1 (female2006)0simqi, ev*males, LXsetx (female)0 (dum2003)0 (dum2006)1 (female2003)0 (female2006)0simqi, ev*females, LXsetx (female)1 (dum2003)0 (dum2006)1 (female2003)0 (female2006)1simqi, ev


*****Table 2, Model 2**********************
reg bills_prespassagerate female educ_level2 p_diputadolocal p_feddeputy p_senador p_statepartyleader /// 
p_natpartyleader committee_chair ///committee_secretary party_leader tier prddummy pandummy pvemdummy ptdummy convdummy nadummy ///minorparties_dum2 dum2003 dum2006 female2003 female2006 wnom1_dist_chambermed bills_presenter_total ///
if alternate==0 & unit_individual==0

*****Table 3, Passage Rate Expected Values**********************estsimp reg bills_prespassagerate female educ_level2 p_diputadolocal p_feddeputy p_senador p_statepartyleader /// 
p_natpartyleader committee_chair ///committee_secretary party_leader tier prddummy pandummy pvemdummy ptdummy convdummy nadummy ///minorparties_dum2 dum2003 dum2006 female2003 female2006 wnom1_dist_chambermed bills_presenter_total ///
if alternate==0 & unit_individual==0

setx median*males, LVIIIsetx (female)0 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, ev*females, LVIIIsetx (female)1 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, ev*males, LIXsetx (female)0 (dum2003)1 (dum2006)0 (female2003)0 (female2006)0simqi, ev*females, LIXsetx (female)1 (dum2003)1 (dum2006)0 (female2003)1 (female2006)0simqi, ev*males, LXsetx (female)0 (dum2003)0 (dum2006)1 (female2003)0 (female2006)0simqi, ev*females, LXsetx (female)1 (dum2003)0 (dum2006)1 (female2003)0 (female2006)1simqi, ev

******Table 2, Model 3**********************
logit committee_chair female educ_level2 p_diputadolocal p_feddeputy p_senador p_statepartyleader /// 
p_natpartyleader jcp mesadirectiva ///tier prddummy pandummy pvemdummy ptdummy convdummy nadummy dum2003 dum2006 female2003 female2006 ///wnom1_dist_chambermed if minorparties_dum2==0 & alternate==0  & unit_individual==0


******Table 3, Committee Chair Expected Values**************
estsimp logit committee_chair female educ_level2 p_diputadolocal p_feddeputy p_senador p_statepartyleader /// 
p_natpartyleader jcp mesadirectiva ///tier prddummy pandummy pvemdummy ptdummy convdummy nadummy dum2003 dum2006 female2003 female2006 ///wnom1_dist_chambermed if minorparties_dum2==0 & alternate==0  & unit_individual==0setx median*males, LVIIIsetx (female)0 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, pr*females, LVIIIsetx (female)1 (dum2003)0 (dum2006)0 (female2003)0 (female2006)0simqi, pr*males, LIXsetx (female)0 (dum2003)1 (dum2006)0 (female2003)0 (female2006)0simqi, pr*females, LIXsetx (female)1 (dum2003)1 (dum2006)0 (female2003)1 (female2006)0simqi, pr*males, LXsetx (female)0 (dum2003)0 (dum2006)1 (female2003)0 (female2006)0simqi, pr*females, LXsetx (female)1 (dum2003)0 (dum2006)1 (female2003)0 (female2006)1simqi, pr

***** Table 4*******
tab female if alternate==0 & unit_individual==0 & dum2000==1
*15.77%
tab female if alternate==0 & unit_individual==0 & dum2003==1
*22.95%
tab female if alternate==0 & unit_individual==0 & dum2006==1
*22.75%

*Burden Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & burden_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & burden_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & burden_memA==1

ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & burden_memA==2
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & burden_memA==2
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & burden_memA==2

*Economic Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & economic_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & economic_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & economic_memA==1

ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & economic_memA==2
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & economic_memA==2
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & economic_memA==2

*Foreign Affairs/Defense Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & foreign_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & foreign_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & foreign_memA==1

ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & foreign_memA==2
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & foreign_memA==2
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & foreign_memA==2

*Power Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & power_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & power_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & power_memA==1

ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & power_memA==2
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & power_memA==2
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & power_memA==2

*Social Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & social_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & social_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & social_memA==1

ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & social_memA==2
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & social_memA==2
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & social_memA==2

*Women's Committees
ttest female == 0.1577 if alternate==0 & unit_individual==0 & dum2000==1 & women_memA==1
ttest female == 0.2295 if alternate==0 & unit_individual==0 & dum2003==1 & women_memA==1
ttest female == 0.2275 if alternate==0 & unit_individual==0 & dum2006==1 & women_memA==1




