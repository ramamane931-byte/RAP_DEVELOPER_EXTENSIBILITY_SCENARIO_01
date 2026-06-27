## 3. Create package and RAP objects to display extra button on the Sales Order Standard app screen.

### Create package:

<img width="940" height="373" alt="image" src="https://github.com/user-attachments/assets/f98b4378-07f5-45e4-804a-2cc7a99442c5" />


### Create Data Elements:
Data Element: ZATS_AB_GIFTCARDNUM	NUMC	10
Data Element: ZATS_AB_GIFTCARDAMT	CURR	12,2
Data Element: ZATS_AB_GIFTCARDDESC	CHAR	40

<img width="940" height="317" alt="image" src="https://github.com/user-attachments/assets/03919152-fc19-4f98-88c2-49e2e5e23408" />


### Create Database table to store Gift card master data:

<img width="876" height="492" alt="image" src="https://github.com/user-attachments/assets/1129dc9b-39dc-42cf-ab8b-b32fd908711d" />


### Define the RAP BO:

<img width="913" height="514" alt="image" src="https://github.com/user-attachments/assets/0f50eaca-5f79-4d9d-9288-a07dc007a7fe" />


### BDEF for our BO as managed:

<img width="940" height="795" alt="image" src="https://github.com/user-attachments/assets/e9b04000-2b78-44ab-bba2-97ec0815752e" />


### BO Projection layer - BO projection:

<img width="701" height="467" alt="image" src="https://github.com/user-attachments/assets/d1165863-092e-40b1-8598-aa3913a60447" />


### BO Projection layer - BDEF projection:

<img width="869" height="489" alt="image" src="https://github.com/user-attachments/assets/a728fa55-f4bf-40d8-a526-9689f8d974a6" />


### Use Quick fix to generate the implementation class for RAP BO & activate:


### Create a value help entity:

<img width="940" height="671" alt="image" src="https://github.com/user-attachments/assets/a350a274-0909-4fcd-849e-2ada30c82282" />


### Create Metadata extension for Fiori App on Giftcard Application on Consumption view:

<img width="834" height="717" alt="image" src="https://github.com/user-attachments/assets/1401ffe8-f5a1-4c73-901f-528913c4755d" />


<img width="664" height="835" alt="image" src="https://github.com/user-attachments/assets/8d8f3717-f8b1-44ce-b615-059f08888612" />


### Create Service definition:

<img width="940" height="247" alt="image" src="https://github.com/user-attachments/assets/6891219f-9b76-44fc-a644-d19c6f720401" />


### Create Service binding for Odata V4

<img width="940" height="387" alt="image" src="https://github.com/user-attachments/assets/317ca8e6-1cf0-40f5-a33b-63778ddbd678" />


### Result: Entity Set ‘Giftcard’

<img width="940" height="295" alt="image" src="https://github.com/user-attachments/assets/6386e0d3-fa9b-4228-99bc-981316960ca8" />


### How to search a particular type of an object: ‘aapl:SD type:ddls’ this will show all data definitions objects.
### And in addition of ‘*VH’ [aapl:SD type:ddls *VH] it will show all the Value Help CDS entities.

<img width="543" height="519" alt="image" src="https://github.com/user-attachments/assets/a0624bf6-d4f8-4f2f-b179-8837f479d2dd" />
<img width="532" height="509" alt="image" src="https://github.com/user-attachments/assets/ae62ee37-c2d0-4c4f-99dd-4ec9bc58a20d" />



















