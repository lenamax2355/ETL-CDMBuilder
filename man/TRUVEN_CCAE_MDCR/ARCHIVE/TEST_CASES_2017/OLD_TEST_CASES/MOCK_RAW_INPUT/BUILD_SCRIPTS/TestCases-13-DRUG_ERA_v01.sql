/*CCAE Sprint 6 Test Cases Table 13 Drug Era*/

/*Patients must be entered in the enrollment details table first so we know that they have valid observation periods. Otherwise
they will be dropped if the builder does not see that they have prescription benefits and their drug eras will not come through*/

/*1301*/
INSERT [dbo].[ENROLLMENT_DETAIL] ([AGE], [AGEGRP], [DATATYP], [DOBYR], [DTEND], [DTSTART], [EECLASS], [EESTATU], [EGEOLOC], [EMPREL], [ENROLID], [HLTHPLAN], [INDSTRY], [MEMDAYS], [MHSACOVG], [MSA], [PHYFLAG], [PLANKEY], [PLANTYP], [REGION], [RX], [SEQNUM], [SEX], [VERSION], [WGTKEY], [EFAMID], [YEAR]) VALUES (NULL, NULL, NULL, 1980, Cast(N'2012-12-31' as Date),	Cast (N'2012-01-01' as Date), NULL, NULL, N'11', NULL, 1301,	NULL, NULL,	NULL, NULL,	NULL, NULL,	NULL, NULL,	NULL, N'1',	NULL, N'1',	NULL, NULL, NULL, NULL)
/*1302*/
INSERT [dbo].[ENROLLMENT_DETAIL] ([AGE], [AGEGRP], [DATATYP], [DOBYR], [DTEND], [DTSTART], [EECLASS], [EESTATU], [EGEOLOC], [EMPREL], [ENROLID], [HLTHPLAN], [INDSTRY], [MEMDAYS], [MHSACOVG], [MSA], [PHYFLAG], [PLANKEY], [PLANTYP], [REGION], [RX], [SEQNUM], [SEX], [VERSION], [WGTKEY], [EFAMID], [YEAR]) VALUES (NULL,	NULL,	NULL,	1981,	Cast (N'2012-12-31' as Date),	Cast (N'2012-1-1' as Date),	NULL,	NULL,	N'11',	NULL,	1302,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	N'1',	NULL,	N'2',	NULL,	NULL,	NULL,	NULL)
/*1303*/
INSERT [dbo].[ENROLLMENT_DETAIL] ([AGE], [AGEGRP], [DATATYP], [DOBYR], [DTEND], [DTSTART], [EECLASS], [EESTATU], [EGEOLOC], [EMPREL], [ENROLID], [HLTHPLAN], [INDSTRY], [MEMDAYS], [MHSACOVG], [MSA], [PHYFLAG], [PLANKEY], [PLANTYP], [REGION], [RX], [SEQNUM], [SEX], [VERSION], [WGTKEY], [EFAMID], [YEAR]) VALUES (NULL,	NULL,	NULL,	1982,	Cast (N'2012-12-31' as Date),	Cast (N'2012-1-1' as Date),	NULL,	NULL,	N'11',	NULL,	1303,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	N'1',	NULL,	N'1',	NULL,	NULL,	NULL,	NULL)
/*1304*/
INSERT [dbo].[ENROLLMENT_DETAIL] ([AGE], [AGEGRP], [DATATYP], [DOBYR], [DTEND], [DTSTART], [EECLASS], [EESTATU], [EGEOLOC], [EMPREL], [ENROLID], [HLTHPLAN], [INDSTRY], [MEMDAYS], [MHSACOVG], [MSA], [PHYFLAG], [PLANKEY], [PLANTYP], [REGION], [RX], [SEQNUM], [SEX], [VERSION], [WGTKEY], [EFAMID], [YEAR]) VALUES (NULL,	NULL,	NULL,	1983,	Cast (N'2012-12-31' as Date),	Cast (N'2012-1-1' as Date),	NULL,	NULL,	N'11',	NULL,	1304,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	N'1',	NULL,	N'1',	NULL,	NULL,	NULL,	NULL)
/*1305*/
INSERT [dbo].[ENROLLMENT_DETAIL] ([AGE], [AGEGRP], [DATATYP], [DOBYR], [DTEND], [DTSTART], [EECLASS], [EESTATU], [EGEOLOC], [EMPREL], [ENROLID], [HLTHPLAN], [INDSTRY], [MEMDAYS], [MHSACOVG], [MSA], [PHYFLAG], [PLANKEY], [PLANTYP], [REGION], [RX], [SEQNUM], [SEX], [VERSION], [WGTKEY], [EFAMID], [YEAR]) VALUES (NULL,	NULL,	NULL,	1983,	Cast (N'2012-12-31' as Date),	Cast (N'2012-1-1' as Date),	NULL,	NULL,	N'11',	NULL,	1305,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	N'1',	NULL,	N'1',	NULL,	NULL,	NULL,	NULL)


/*1301 - Two drugs with same ingredient within 30 day span, should be one drug era*/
INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('00'+'00463303410',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        Cast ('02-04-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('00'+'00463303410',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        Cast ('02-22-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

/*1302 - Two drugs with same ingredient with > 30 days between should be two drug eras*/
INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('00'+'00463303410',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        Cast ('09-21-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('00'+'00463303410',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        Cast ('12-08-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

/*1303 - Drug_end_date in CDM should be drug_start_date + days_supply*/
INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('00'+'00349835305',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 
        Cast ('12-08-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

/*1304 - Drug_end_date in CDM should be the same as drug_start_date because of the drug_type_concept_id; 2012-03-30 */
INSERT [dbo].[INPATIENT_SERVICES] (ADMDATE, ADMTYP, AGE, AGEGRP, CAP_SVC, CASEID, COB, COINS, COPAY, DATATYP, DEDUCT, DISDATE, DOBYR, DSTATUS, DX1, DX2,
                          DX3, DX4, DX5, EECLASS, EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, FACHDID, FACPROF, HLTHPLAN, INDSTRY, MDC, MHSACOVG, MSA, 
                         NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PDX, PHYFLAG, PLANKEY, PLANTYP, PPROC, PROC1, PROCMOD, PROCTYP, PROVID, QTY, REGION, REVCODE, 
                         RX, SEQNUM, SEX, STDPLAC, STDPROV, SVCDATE, SVCSCAT, TSVCDAT, VERSION, WGTKEY, YEAR, EFAMID, DRG)
VALUES        (NULL, NULL, NULL, NULL, NULL, 13041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
						  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1304, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL,  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                          NULL, NULL, NULL, NULL, NULL, Cast('2012-03-26' as Date), NULL, Cast('2012-03-30' as Date), NULL, NULL, 2012, NULL, NULL)

INSERT [dbo].[INPATIENT_ADMISSIONS] (ADMDATE, ADMTYP, AGE, AGEGRP, CASEID, DATATYP, DAYS, DISDATE, DOBYR, DSTATUS, DX1, DX10, DX11, DX12, DX13, DX14, 
                         DX15, DX2, DX3, DX4, DX5, DX6, DX7, DX8, DX9, EECLASS, EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, HLTHPLAN, HOSPNET, HOSPPAY, 
                         INDSTRY, MDC, MHSACOVG, MSA, PDX, PHYFLAG, PHYSID, PHYSNET, PHYSPAY, PLANKEY, PLANTYP, PPROC, PROC1, PROC10, PROC11, PROC12, PROC13, 
                         PROC14, PROC15, PROC2, PROC3, PROC4, PROC5, PROC6, PROC7, PROC8, PROC9, REGION, RX, SEQNUM, SEX, STATE, TOTCOB, TOTCOINS, TOTCOPAY, 
                         TOTDED, TOTNET, TOTPAY, VERSION, WGTKEY, YEAR, EFAMID, DRG)
VALUES       (NULL, NULL, NULL, NULL, 13041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1304, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90376, NULL, NULL, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
                         NULL, NULL, NULL, NULL, NULL, 2012, NULL, NULL)

/*1305 - Drug with two ingredients should have two drug eras*/
INSERT [dbo].[DRUG_CLAIMS](AGE, AGEGRP, AWP, CAP_SVC, COB, COINS, COPAY, DATATYP, DAWIND, DAYSUPP, DEACLAS, DEDUCT, DISPFEE, DOBYR, EECLASS, 
        EESTATU, EGEOLOC, EIDFLAG, EMPREL, ENRFLAG, ENROLID, GENERID, GENIND, HLTHPLAN, INDSTRY, INGCOST, MAINTIN, METQTY, MHSACOVG, MSA, 
        NDCNUM, NETPAY, NTWKPROV, PAIDNTWK, PAY, PDDATE, PHARMID, PHYFLAG, PLANKEY, PLANTYP, QTY, REFILL, REGION, RXMR, SALETAX, SEQNUM, SEX, 
        SVCDATE, THERCLS, THERGRP, VERSION, WGTKEY, YEAR, EFAMID)
VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, 
        NULL, NULL, NULL, NULL, NULL, 1305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
        right('0000'+'00008419001',11), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 
        Cast ('05-01-2012' as date), NULL, NULL, NULL, NULL, 2012, NULL)

select * from drug_claims where enrolid like '13%'
 