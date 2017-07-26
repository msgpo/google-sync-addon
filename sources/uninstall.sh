#!/sbin/sh

if [[ -z "$INSTALLER" ]]; then
  ui_msg()
  {
    echo "$1"
  }

  ui_msg 'Uninstalling...'

  SYS_PATH='/system'
  PRIVAPP_PATH="${SYS_PATH}/app"
  if [[ -d "${SYS_PATH}/priv-app" ]]; then PRIVAPP_PATH="${SYS_PATH}/priv-app"; fi
fi

DELETE_LIST="
${PRIVAPP_PATH}/GoogleBackupTransport/
${PRIVAPP_PATH}/GoogleBackupTransport.apk

${SYS_PATH}/app/GoogleContactsSyncAdapter/
${SYS_PATH}/app/GoogleContactsSyncAdapter.apk

${SYS_PATH}/app/GoogleCalendarSyncAdapter/
${SYS_PATH}/app/GoogleCalendarSyncAdapter.apk

${SYS_PATH}/app/IchnaeaNlpBackend/
${SYS_PATH}/app/IchnaeaNlpBackend.apk

${SYS_PATH}/app/NominatimGeocoderBackend/
${SYS_PATH}/app/NominatimGeocoderBackend.apk
"

rm -rf ${DELETE_LIST}  # Filenames cannot contain spaces

if [[ -z "$INSTALLER" ]]; then
  ui_msg 'Done.'
fi
