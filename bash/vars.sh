
volume_source=\\blah\blah
environment_id=dev1
domain=fms
storage_type=smb
unique_identifier=

if [[ "${storage_type}" = "smb" ]]; then
  unique_identifier=$volume_source | sed -r 's/\/+/-/g'
  volume_handle="${environment_id}.${domain}.smb-vh${unique_identifier}" 
fi

#echo ${${volume_source:1}//\//-} #$volume_handle
echo ${${volume_source:1}\-}
# if [[ -z $volume_handle || -z $environment_id ]]; then
#   echo "volume_handle, and environment_id are required properties to run this task"
#   exit 1
# fi