# Check Point CloudGuard WAF demo
 
 This is a simple docker-compose stack for deploying a Check Point CloudGuard WAF demo environment.  
 It will deploy four containers:
- [Check Point CloudGuard WAF (Standalone)](https://www.checkpoint.com/cloudguard/waf/)
   - This container provides the NGINX reverse proxy and WAF agent in a single image
- [OWASP Juiceshop](https://hub.docker.com/r/bkimminich/juice-shop)
  - A deliberately vulnerable application for learning about web application attacks
- [DVWA - Damn Vulnerable Web App](https://hub.docker.com/r/vulnerables/web-dvwa)
  - Another test application similar to Juiceshop, but with a more guided approach to testing specific vulnerabilities
- [Vampi](https://github.com/erev0s/VAmPI)
  - A vulnerable web API demo app with built-in UI for testing out API calls without a tool like Postman

## Instructions:
 
* Configure a new profile in your [Check Point Infinity Portal](https://portal.checkpoint.com) tenant under WAF. This needs to be a Docker standalone type profile. Copy the token and keep it safe.
* Create an asset for each of the applications above. The URL can be anything you like, so long as your client can resolve it (either through DNS or host file entry). The upstream / origin for each of the applications is **http://dvwa**, **http://juiceshop:3000/** and **http://vampi/**. 
* If you run this locally, you will be able to access those ports directly on the containers, bypassing the WAF to show a with / without comparisson. **If you're hosting somewhere publicly accessible, make sure your security groups allow or prevent access to these as required.** 

* Make sure you have Docker (or equivalent) installed and also docker-compose (included by default in most recent Docker packages)
* Clone this repository
* Add a file named '.env' in the same directory as the docker-compose.yml file.
* Add the following to the file:
```bash
COMPOSE_PROJECT_NAME=waf-demo
token=cp-123-123-123-123-123-123-123
```

**COMPOSE_PROJECT_NAME** will prepend the container names with your chosen string here.
**token** is the token from your CloudGuard WAF profile.
* Run ```docker compose up``` to launch the containers and view the logs in the foreground
OR
run `docker compose up -d` to launch containers but run on the background.
You can run `docker compose logs --follow` to see the outputs from each of the containers and `docker compose down` to stop all of the containers.
* If you have any problems with the agent, check its status using `docker compose exec cloudguard-waf cpnano -s`