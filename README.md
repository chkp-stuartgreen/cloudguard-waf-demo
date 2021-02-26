# Check Point CloudGuard AppSec demo
 
 This is a simple dockerfile / docker-compose environment for deploy a Check Point AppSec embedded nano-agent demo.  
 It will deploy two containers, an NGINX reverse proxy with the nano-agent installed and the OWASP JuiceShop app.  
You will have two ways to access the stack:  
* Port 80: Protected by AppSec  
* Port 3000: Direct to JuiceShop (unprotected)  
  
##Instructions:
 
* Clone the repository
* From a machine with docker and docker-compose installed, run:  
`  docker-compose build --build-arg token=<add your nano-agent token here>`  
`  docker-compose up --detach`  
__Insert awesome demo here :)__  
`  docker-compose down `  
 


