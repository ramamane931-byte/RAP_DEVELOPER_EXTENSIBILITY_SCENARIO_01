## 4. Extending Standard Fiori App end to end with Embedded Steampunk

### Open the application and developer tools (F12) and click on the Go button. And check the Odata service.

<img width="940" height="522" alt="image" src="https://github.com/user-attachments/assets/65688b98-e7ed-4307-9bf6-057f70662cf7" />


#### Way 1: Related behaviour definition has been found:

<img width="584" height="681" alt="image" src="https://github.com/user-attachments/assets/1107bb22-40bc-4cc1-8ada-37bb883525c6" />


#### Way 2: Go to Business Accelerator Hub:

<img width="940" height="458" alt="image" src="https://github.com/user-attachments/assets/43a2b9a0-c0f0-4f53-9f22-03fe2cbec3e5" />


<img width="940" height="511" alt="image" src="https://github.com/user-attachments/assets/b03e0ddf-ddc6-4953-a3b5-9c42611c25b9" />


<img width="940" height="560" alt="image" src="https://github.com/user-attachments/assets/7c882338-af18-4f6a-8ce8-c06006f5f9b4" />


#### Way 3: Go to FIORI App Library:

<img width="940" height="398" alt="image" src="https://github.com/user-attachments/assets/5c22fd20-96f7-4a82-a887-85f5f7d48e38" />


<img width="940" height="339" alt="image" src="https://github.com/user-attachments/assets/2f7d6692-f5ee-4b41-b163-edd54297c4ff" />


<img width="940" height="371" alt="image" src="https://github.com/user-attachments/assets/bf051336-cd00-4de2-a28d-b1dc77aaa0d0" />




### Open the same data definition: C_SalesOrderManage

<img width="940" height="871" alt="image" src="https://github.com/user-attachments/assets/3e63aad1-53b6-4a26-af93-eb1aeb3a63d4" />


### Check these points for Extensibility

<img width="940" height="799" alt="image" src="https://github.com/user-attachments/assets/6c489bb1-ba37-4010-9624-dbdb6e653409" />


<img width="940" height="761" alt="image" src="https://github.com/user-attachments/assets/a92b511b-c63f-4152-8906-5539f532b798" />


<img width="938" height="875" alt="image" src="https://github.com/user-attachments/assets/0b2a0d28-da93-4672-acf9-2b8dff627cb5" />


<img width="940" height="854" alt="image" src="https://github.com/user-attachments/assets/a23443e3-9083-43dc-a2ca-1f7ab150486d" />


<img width="940" height="610" alt="image" src="https://github.com/user-attachments/assets/f4fb0976-8410-40b3-9ed9-45c53bc2bafc" />


<img width="871" height="668" alt="image" src="https://github.com/user-attachments/assets/2c910004-add4-4439-ba11-c0c6a8cd60e1" />


#### ------------------------------------------------------------------------------------------------------------------------------

### Extend the structure with append include to add custom field - sdsalesdoc_incl_eew_ps


<img width="940" height="426" alt="image" src="https://github.com/user-attachments/assets/ac2664b4-af66-4c40-91b0-f4e17bb18f55" />


<img width="940" height="411" alt="image" src="https://github.com/user-attachments/assets/d3543d27-3dc1-43ca-810a-3c6336d46c63" />



### Append structure name should be with postfix ‘SDH’.

<img width="940" height="407" alt="image" src="https://github.com/user-attachments/assets/c2245367-5021-4f9d-a361-9c5531d8a35c" />



### From above append structure the zz fields are available in the standard table VBAK.

<img width="940" height="538" alt="image" src="https://github.com/user-attachments/assets/63e0bcfa-1677-44f1-86b6-d73412f3c398" />

#### ------------------------------------------------------------------------------------------------------------------------------

### Extend first CDS entity using vbak E_SalesDocumentBasic


<img width="940" height="475" alt="image" src="https://github.com/user-attachments/assets/fe10c6be-8b82-43c8-ad11-d72967581ade" />


<img width="940" height="574" alt="image" src="https://github.com/user-attachments/assets/c1f02d85-aa07-4817-a682-c4553ccbf5e8" />


<img width="940" height="259" alt="image" src="https://github.com/user-attachments/assets/8ac318fa-fab1-400f-a5c3-0f7d3285be56" />


### Appended fields visible in the view E_SalesDocumentBasic as well.


<img width="940" height="195" alt="image" src="https://github.com/user-attachments/assets/1e7e1b81-6445-4cc2-ba9d-c6136c186d05" />

#### ------------------------------------------------------------------------------------------------------------------------------

### Extend first CDS entity using R_SalesOrderTP:

<img width="940" height="539" alt="image" src="https://github.com/user-attachments/assets/3f896713-5792-43be-83a4-8c49a48bd040" />


<img width="940" height="589" alt="image" src="https://github.com/user-attachments/assets/c68d02ed-d4c1-4e24-8011-77e280e51635" />


<img width="940" height="355" alt="image" src="https://github.com/user-attachments/assets/4bb5f22b-4b46-4cc1-acf5-3770b5154d0d" />


#### ------------------------------------------------------------------------------------------------------------------------------

### Extend first CDS entity using R_SalesOrderTP C_SalesOrderManage

<img width="940" height="558" alt="image" src="https://github.com/user-attachments/assets/82307dcf-f3b8-4493-a61b-18d7b4996c1d" />


<img width="940" height="625" alt="image" src="https://github.com/user-attachments/assets/822f0f41-88e6-4317-adcd-09aca986ea1f" />


<img width="940" height="283" alt="image" src="https://github.com/user-attachments/assets/786c1281-ac28-413c-9104-7931933bb18a" />


<img width="940" height="196" alt="image" src="https://github.com/user-attachments/assets/eeb0239f-728a-49c6-85fa-2bd0707fe2c8" />



### Click on the Go button and open developer tools(F12):


<img width="940" height="143" alt="image" src="https://github.com/user-attachments/assets/2e5a2bfc-6b37-462f-a209-2745f9f192b6" />



### Check for $batch and double click on it:


<img width="940" height="383" alt="image" src="https://github.com/user-attachments/assets/247f5f41-b9a0-49e0-a1c6-3f61173ddc89" />



### Replace ‘$batch?sap-client=100’ to ‘$metadata’:


<img width="940" height="244" alt="image" src="https://github.com/user-attachments/assets/d7616fd1-35b8-402f-8662-444306f9fd56" />



### And then search for append structure fields, those must found:


<img width="940" height="369" alt="image" src="https://github.com/user-attachments/assets/3ae04e1c-652d-46ab-88fe-f75bd14bf7c2" />

#### ------------------------------------------------------------------------------------------------------------------------------

### Create abstract cds entity (never persist data in db, used as a skeleton to create popup) Abstract entity to show popup on UI Screen

<img width="940" height="385" alt="image" src="https://github.com/user-attachments/assets/cf28cbb6-168f-4081-9934-2b95b50d98d9" />


### Press Ctrl+6 to open SAP GUI in the eclipse

<img width="940" height="364" alt="image" src="https://github.com/user-attachments/assets/ba842a5f-968e-4c63-a9aa-5bf02e0e2468" />


### How to clear caches:

<img width="940" height="432" alt="image" src="https://github.com/user-attachments/assets/493425da-2176-4e6a-b0c0-6bd6d248c1ba" />


<img width="940" height="450" alt="image" src="https://github.com/user-attachments/assets/60a0281d-523b-4661-9e98-0c1cf76fa540" />


### Adapt UI – Key user Extensibility: Added new group and added new filed in the newly added group: Gift Card Details:

<img width="940" height="428" alt="image" src="https://github.com/user-attachments/assets/a7e4ebd5-110c-46df-adf9-de1ca0cc83f8" />

#### ------------------------------------------------------------------------------------------------------------------------------

### Create Behaviour Extension for R_SalesorderTP

<img width="823" height="491" alt="image" src="https://github.com/user-attachments/assets/9974e76c-0407-4373-8db1-c1f4255c690e" />


<img width="940" height="512" alt="image" src="https://github.com/user-attachments/assets/56e5be3c-a706-4888-9302-7fa57e34fd06" />


<img width="940" height="629" alt="image" src="https://github.com/user-attachments/assets/cf353dd4-a2e6-4f87-968e-cb8f219264f1" />


<img width="845" height="459" alt="image" src="https://github.com/user-attachments/assets/3d90fdc8-fbfb-4d0d-9e12-8d38a7d6c990" />


<img width="778" height="582" alt="image" src="https://github.com/user-attachments/assets/b2478eea-5b0a-42a9-b9ba-14aa5737034d" />


<img width="875" height="513" alt="image" src="https://github.com/user-attachments/assets/e37312fb-8c34-4cb3-9ca1-d333a9924e20" />


<img width="940" height="447" alt="image" src="https://github.com/user-attachments/assets/a57fc937-c635-4a66-a27d-b6adf1b20f51" />


#### ------------------------------------------------------------------------------------------------------------------------------


### Implement the Behaviour Class


<img width="940" height="312" alt="image" src="https://github.com/user-attachments/assets/5ccbd594-21d1-4174-9bed-d22bc9a8f6ca" />


<img width="940" height="429" alt="image" src="https://github.com/user-attachments/assets/eb88a3f6-7c86-4842-b5d7-4c246a49e240" />


### Important Step to create Projection Behaviour definition extension for C_SALESORDERMANAGE:


<img width="940" height="288" alt="image" src="https://github.com/user-attachments/assets/034f4978-a986-40ea-a370-3139dbf41645" />


<img width="940" height="441" alt="image" src="https://github.com/user-attachments/assets/8769bcd3-bb92-46a1-9e36-dfd30a6e657f" />


### Check the FIORI App once again for the appended fields:


<img width="940" height="326" alt="image" src="https://github.com/user-attachments/assets/b8c4eaf1-b434-4dab-a92d-e2d31505524c" />


<img width="940" height="406" alt="image" src="https://github.com/user-attachments/assets/836170cb-142e-4c8d-b279-b1e8b86c4b1e" />


<img width="940" height="433" alt="image" src="https://github.com/user-attachments/assets/61b29365-8fe3-4715-82d1-b62fe7c97725" />






























































































