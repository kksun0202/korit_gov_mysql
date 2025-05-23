insert into treatment_tb(treatment_name)
select
	treatment
from
	sample_clinic_tb
group by
	treatment
order by
	treatment;
    
insert into department_tb(department_name)
select
	department
from
	sample_clinic_tb
group by
	department
order by
	department;
    
insert into patient_tb
select
	0,
	patient_name,
    gender,
    birth_date
from
	sample_clinic_tb
order by
	patient_name,
    gender,
    birth_date;
    