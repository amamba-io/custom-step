export WORKSPACE_ID=$(echo ${JOB_NAME} | awk -F '/' '{print $1}')
export MAIL_TOKEN=$(curl --post301 -k --location-trusted ${DCE_HOST}/apis/pipeline.amamba.io/v1alpha1/workspaces/${WORKSPACE_ID}/pipelines/${JOB_BASE_NAME}/runs/${BUILD_ID}/access_token --header "Authorization: Bearer ${DCE_TOKEN}" --data "{\\"expire\\":\\"24h\\",\\"id\\":\\"approved\\"}" | jq -r ".token")
export FILE_BODY=$(cat ${FILE_PATH} | envsubst)
envsubst </home/jenkins/mail-body.html> /tmp/output