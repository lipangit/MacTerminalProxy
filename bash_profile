function proxy_check(){
    lsof -i:8118
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    /path/killport  8118
    echo -e "proxy_off"
}

function proxy_on(){
    proxy_off

     /usr/local/Cellar/privoxy/3.0.29/sbin/privoxy /path/privoxy.config
    export http_proxy='http://localhost:8118'
    export https_proxy='http://localhost:8118'

    echo -e "proxy_on"
}