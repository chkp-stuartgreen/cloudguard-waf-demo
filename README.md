# Check Point CloudGuard AppSec demo
 
 This is a simple dockerfile / docker-compose environment for deploy a Check Point AppSec embedded nano-agent demo.  
 It will deploy three containers, an NGINX reverse proxy, an agent-container (the nano-agent) and the OWASP JuiceShop app.  
You will have two ways to access the stack:  
* Port 80: Protected by AppSec  
* Port 3000: Direct to JuiceShop (unprotected)  
  
##Instructions:
 
* Clone the repository
* From a machine with docker and docker-compose installed, run:  
`  export TOKEN=<your agent token>`
`  docker-compose build
`  docker-compose up --detach`  
__Insert awesome demo here :)__  
`  docker-compose down `
 


