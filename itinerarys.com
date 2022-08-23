server {
       listen 80;
       listen [::]:80;

       server_name itinerarys.com;

       root /var/www/itinerarys.com;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
       }
}