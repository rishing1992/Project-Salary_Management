conn salary_mgmt/dbase@xe;
CREATE OR REPLACE PROCEDURE run_enm_employees
-- http://182.70.219.212:8080/apex/salary_mgmt.run_enm_employees
AS

BEGIN
page_formatting('BEFORE');
	HTP.HTMLOPEN;
		HTP.HEADOPEN;
			HTP.TITLE('MAINTAIN EMPLOYEES');
		HTP.HEADCLOSE;
		HTP.BODYOPEN;
			HTP.FORMOPEN ('http://182.70.219.212:8080/apex/salary_mgmt.salary_manager.enter_and_maintain_employees', 'POST');
					HTP.TABLEOPEN;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('EMPLOYEE ID'); 
						HTP.TABLEDATA (HTF.FORMTEXT('P_EMPLOYEE_ID',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('FIRST_NAME'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_first_name',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('LAST_NAME'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_last_name',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('DATE_OF_BIRTH'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_date_of_birth',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('DEPARTMENT_ID'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_department_id',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('EMAIL'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_email',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('JOB_ID'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_job_id',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('EMPLOYEE_TYPE'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_employee_type',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('CONTACT_NO'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_contact_no',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('EFFECTIVE_START_DATE'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_effective_start_date',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('EFFECTIVE_END_DATE'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_effective_end_date',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					HTP.TABLEROWOPEN; 
						HTP.TABLEDATA ('MODE'); 
						HTP.TABLEDATA (HTF.FORMTEXT('p_mode',NULL,NULL,NULL)); 
					HTP.TABLEROWCLOSE;
					
				HTP.TABLECLOSE; 
			HTP.FORMCLOSE; 
		HTP.BODYCLOSE;
	HTP.HTMLCLOSE;	
page_formatting('AFTER');
END run_enm_employees;
/
GRANT EXECUTE ON salary_mgmt.run_enm_employees TO ANONYMOUS;
SHOW ERROR;
