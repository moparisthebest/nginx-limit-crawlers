
This nginx config limits requests per second for any user-agent and/or IP that match a list of user-agents, I adapted it from [ai-bots-crawlers](https://github.com/kurren/ai-bots-crawlers) but instead of blocking, I'm rate limiting to 5 requests per minute.

To use:
```sh
cd /etc/nginx/
git clone https://code.moparisthebest.com/moparisthebest/nginx-limit-crawlers
```
Then add this include in /etc/nginx/nginx.conf :

```
http {
    include /etc/nginx/nginx-limit-crawlers/limit-crawler.conf;
    
    # leave all the rest of the lines alone
}
```
