export APP_PINSERVER_PORT="8096"
export APP_PINSERVER_WEB_PORT="8081"

local app_pinserver_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}/hostname"

export APP_PINSERVER_HIDDEN_SERVICE="$(cat "${app_pinserver_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"