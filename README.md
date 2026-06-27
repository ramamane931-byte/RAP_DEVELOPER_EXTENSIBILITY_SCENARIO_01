# RAP_DEVELOPER_EXTENSIBILITY_SCENARIO_01
SAP RAP Developer Extensibility Scenario: Extend Manage Sales Order standard Application


<img width="544" height="313" alt="image" src="https://github.com/user-attachments/assets/d566905e-4fcf-4106-8afa-21a7783d9d65" />


<img width="536" height="250" alt="image" src="https://github.com/user-attachments/assets/4a74e1c0-7137-44c3-848b-4add678abf22" />


### Steps to activate Standard SAP Sales order app:

When SAP deliver S/4HANA they deliver 1000s of standard apps, as a developer often we need to extend these application with new fields, new buttons, new screens. There is one app to manage sales orders which is a standard app delivered by SAP.

1. We can find all the apps on SAP Fiori App Reference library
https://fioriappslibrary.hana.ondemand.com/
3. Explore the Fiori Apps based on product, functional area, type of the app or Role
4. Take the information of role and activate the Fiori app using a task list (STC01) - SAP_FIORI_CONTENT_ACTIVATION
5. Check the generated Z role in PFCG, Grant it to yourself. If you are using ATS server – open the role Z_BR_INTERNAL_SALES_REP and grant to yourself
6. Launch the Fiori Launchpad to access the app now. - /n/ui2/flp
7. Launch the app - https://s4hana10.saraswatitechnologies.in:44310/sap/bc/ui2/flp?sap-client=800&sap-language=EN#SalesOrder-manageV2
<img width="3590" height="390" alt="image" src="https://github.com/user-attachments/assets/2b778b1d-485c-4a34-aec0-65c67ab33027" />

