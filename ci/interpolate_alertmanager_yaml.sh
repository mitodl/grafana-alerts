# These need to be set for the various sed statements. If you have new subsitutions to add, here is where
# you would define them but if they require some secret piece of information you'll need to update the pipeline
# definition in ol-infrastructure to make the vars available.
# 
# RESOURCE_NAME : the name (directory) where this repo can be found within the context of the concourse pipeline 
# OPS_TEAM_OPS_GENIE_API_KEY : The API token from OpsGenie for real notifications.
# TESTING_OPS_GENIE_API_KEY : The API token from OpsGenie for testing notifications.
# ENVIRONMENT_NAME : The environment name (ci, qa, production).
# SLACK_NOTIFICATIONS_OCW_MISC_API_URL : The Slack webhook URL for the channel #notifications-ocw-misc, escape the back slashes. 
# 

echo "executing sed statements for secret interpolation/etc"
sed -i -e "s/%% OPS_TEAM_OPS_GENIE_API_KEY %%/$OPS_TEAM_OPS_GENIE_API_KEY/" $RESOURCE_NAME/alertmanager.yaml
sed -i -e "s/%% TESTING_OPS_GENIE_API_KEY %%/$TESTING_OPS_GENIE_API_KEY/" $RESOURCE_NAME/alertmanager.yaml
sed -i -e "s/%% ENVIRONMENT_NAME %%/$ENVIRONMENT_NAME/" $RESOURCE_NAME/alertmanager.yaml
sed -i -e "s/%% SLACK_NOTIFICATIONS_OCW_MISC_API_URL %%/$SLACK_NOTIFICATIONS_OCW_MISC_API_URL/" $RESOURCE_NAME/alertmanager.yaml
sed -i -e "s/%% ROOTLY_BEARER_TOKEN %%/$ROOTLY_BEARER_TOKEN/" $RESOURCE_NAME/alertmanager.yaml
echo "executing cortextool"
