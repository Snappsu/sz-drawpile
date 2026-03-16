  GNU nano 7.2                                                                                 setup/nginx/entrypoint.sh *                                                                                         
#!/bin/sh

if [ "$USE_CERTBOT" == "yes" ]
then
        echo "Activating certbot..."
        mkdir -p /var/www/certbot

        $(while :; do sh /opt/certbot.sh; sleep 12h; done;) &

        $(while inotifywait -e close_write /usr/share/nginx/certificates; do nginx -s reload; done) &
fi

apk add git
rm -rf /var/www/public_html/*
mkdir temp
git clone -b "$SITE_GIT_BRANCH" "$SITE_GIT" temp
cd temp
rm -rf .git
cd ..
cp -R temp/* /var/www/public_html/
rm -rf temp/

exec nginx -g "daemon off;"
