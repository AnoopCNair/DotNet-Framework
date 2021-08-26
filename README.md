# DotNet-Framework
Find Dotnet Framework
You can check the latest updates from https://www.anoopcnair.com/sccm-report-for-dotnet-framework/

Select Distinct
v_R_System.Name0 as 'Server Name',
v_R_System.AD_Site_Name0 as 'Location',
v_R_System.Resource_Domain_OR_Workgr0 as 'Domain',
v_Add_Remove_Programs.DisplayName0 as 'App Display Name',
v_Add_Remove_Programs.Version0 as 'App Version'
From v_R_System
Inner Join v_Add_Remove_Programs on v_R_System.ResourceID = v_Add_Remove_Programs.ResourceID 
Where (v_Add_Remove_Programs.DisplayName0 Like 'Microsoft .NET Framework%') 
AND (v_Add_Remove_Programs.DisplayName0 NOT Like '%update%') 
AND (v_Add_Remove_Programs.DisplayName0 NOT Like '%language%') 
AND (v_Add_Remove_Programs.Version0 IS NOT NULL)
and v_R_System.Active0 = '1'
