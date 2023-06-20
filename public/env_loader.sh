#!/bin/sh

touch /usr/share/nginx/html/environment.js

{
    echo "window._env_ = {"
    echo "    REACT_APP_API_ENDPOINT: \"${REACT_APP_API_ENDPOINT}\","
    echo "    REACT_APP_SOME_ENV_1: \"${REACT_APP_SOME_ENV_1}\","
    echo "    REACT_APP_SOME_ENV_2: \"${REACT_APP_SOME_ENV_2}\""
    echo "};"
} >> /usr/share/nginx/html/environment.js