#!/bin/bash

# Enter your codes here. DO NOT INLUCDE THE "Cookies: " AND "X-CSRFToken: " HEADERS. THERE SHOULD BE NO SPACE AT THE START OR END
cookieCode="ajs_anonymous_id=%22a6393afd-84ab-4d3e-abc6-48d67ed0d7ce%22; __gads=ID=35cf8d943306c615-22f33c34aecc0006:T=1635889519:RT=1635889519:S=ALNI_MZU6nGDyJbX4A2pH0LY7e0vRM4hhw; _ga=GA1.2.2114222754.1635889519; _gid=GA1.2.1607443768.1635889520; _gcl_au=1.1.337080068.1635889520; _fbp=fb.1.1635889519772.1960872236; __hstc=179716859.29997a445fbca2ca03cb5aa257627786.1635889519850.1635889519850.1635889519850.1; hubspotutk=29997a445fbca2ca03cb5aa257627786; __hssrc=1; ab.storage.deviceId.81b5a720-d869-44a3-b051-fbf0e709467a=%7B%22g%22%3A%22e98be62a-121b-a5d5-eb24-5a2130c41393%22%2C%22c%22%3A1635889522406%2C%22l%22%3A1635889522406%7D; G_ENABLED_IDPS=google; __stripe_mid=45943808-0aff-4805-992d-3acf4998f5cd7ef62c; ab.storage.userId.81b5a720-d869-44a3-b051-fbf0e709467a=%7B%22g%22%3A%2259349421%22%2C%22c%22%3A1635889531969%2C%22l%22%3A1635889531969%7D; sessionid_2=4g10n9zjsk4njcqj1ghxj0mzdcnwdq72t; i18next=en; cookieconsent_status=allow; __stripe_sid=f7431825-8038-4927-9e9e-436acc35afd368a516; csrftoken=YHvM0eGtgT9gzjNHThTCKveivJyq1TnaLPGk4iRA8gFkLVfGfnp5TNVweYc5pHrR; _gat=1; ajs_user_id=%2259349421%22; ab.storage.sessionId.81b5a720-d869-44a3-b051-fbf0e709467a=%7B%22g%22%3A%223beb3bc9-0353-d61e-f982-7182e3fab632%22%2C%22e%22%3A1635963987989%2C%22c%22%3A1635963932426%2C%22l%22%3A1635963957989%7D
csrfToken="YHvM0eGtgT9gzjNHThTCKveivJyq1TnaLPGk4iRA8gFkLVfGfnp5TNVweYc5pHrR"

# -- Don't edit anything below this -- 

# Functions
function givePoints {
    curl "https://app.memrise.com/ajax/session_end/" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0" -H "Accept: application/json, text/javascript, */*; q=0.01" -H "Accept-Language: en-GB,en;q=0.5" --compressed -H "Referer: https://app.memrise.com/course/1553511/4-town-to-countryside-edexcel-9-1-french/garden/speed_review/?recommendation_id=75b8a96a-7116-41e4-a140-b6358fb489f1" -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" -H "X-CSRFToken: $csrfToken" -H "X-Requested-With: XMLHttpRequest" -H "Origin: https://app.memrise.com" -H "Connection: keep-alive" -H "Cookie: $cookieCode" -H "TE: Trailers" --data-raw "course_id=$id&total_points=0&bonus_points=$1&category_id=&session_type=speed_review&learnable_ids=[]"
}

# Interface code
echo "Memrise Hack - by Gabriella Kaitlyn"
echo " "
echo "To start with, please enter your course id below!"
read -p "ID : " id 5799586
echo "Epic, now enter how many points you want."
read -p "Points : " points 10000
echo "Attempting to give you the points!"

# The actual giving of the points
if [ $points -le 2000 ]
then
    echo "Below 2000, all have been given."
    givePoints $points
else 
    while [ $points -ne 0 ]; do 
        if [ $points -le 2000 ]
        then
            echo "Done final give of $points"
            givePoints $points
            points=0
        else
            givePoints 2000
            points=`expr $points - 2000`
            echo "Give 2000 more points. $points remaining"
            sleep 3s # So we don't get ratelimited
        fi    
    done
fi        

echo "Now go check your memrise!"
