# Check Point CloudGuard AppSec demo
 
 This is a simple docker-compose environment for deploying a Check Point CloudGuard AppSec demo.  
 It will deploy two containers, an NGINX reverse proxy with embedded nano-agent and the OWASP JuiceShop app.  

You will have two ways to access the stack:  
* Port 80: Protected by AppSec  
* Port 3000: Direct to JuiceShop (unprotected)  
  
## Instructions:
 
* Make sure you have docker (or equivalent) installed and also docker-compose. (Newer format 'docker compose' commands should work too)
* Clone the repository
* If you are planning to use a DNS entry for your hostname - you'll need to pass this in the .env file.
* Add the token from your AppSec profile to the .env file.
* Run the following commands from within your appsec-demo directory:
```
docker-compose build
docker-compose up
```
[DEMO HERE]

```
docker-compose down
```
 


> Notes: 

> The NGINX config requires you to provide a host header otherwise you'll get a 404. The host header (eg, entry in your host file) should be *juiceshop.local*
