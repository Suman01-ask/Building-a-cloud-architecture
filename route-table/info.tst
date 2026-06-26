----------------------------Think of a ROute Table as your navigation system in the smartphone which take from point A to point B ----------------------------

you need to provide the network id access for public subnet, so that request can go to address destination.


----------REASON :: 


		
Server

↓

Where should I send packets?

↓

I don't know.


=========

--------------------------- Here's how you can do it---------------------------------------------

Open

Route Tables

Find the route table associated with your VPC.
Rename it:

Public-RT


Open

Routes

↓

Edit Routes

Add:

Destination

0.0.0.0/0

Target

Internet Gateway

↓

ShopKart-IGW

Save.

Now associate this route table with:

Public-Subnet

Go to:

Subnet Associations

↓

Edit

↓

Select Public-Subnet

Save.

---------------------------------------------RESULT------------------------------------------------
Now only the public subnet has Internet access

