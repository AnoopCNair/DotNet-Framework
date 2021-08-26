Select Distinct
v_R_System.Name0 as 'Server Name',
v_R_System.AD_Site_Name0 as 'Location',
v_R_System.Resource_Domain_OR_Workgr0 as 'Domain',
v_Add_Remove_Programs.DisplayName0 as 'App Display Name',
v_Add_Remove_Programs.Version0 as 'App Version'
From v_R_System
Inner Join v_Add_Remove_Programs on v_R_System.ResourceID = v_Add_Remove_Programs.ResourceID 
Where (v_Add_Remove_Programs.DisplayName0 Like 'Microsoft .NET Framework%') 
and v_R_System.Active0 = '1'
