#
# These need to be set for the various sed statements. If you have new subsitutions to add, here is where
# you would define them but if they require some secret piece of information you'll need to update the pipeline
# definition in ol-infrastructure to make the vars available.
# 
# RESOURCE_NAME : the name (directory) where this repo can be found within the context of the concourse pipeline 
# RULE_DIRECTORY : What kind of rules are we syncing (cortex-rules or loki-rules)
# ENVIRONMENT_NAME : The environment name (ci, qa, production).
# 

echo "executing sed statements for secret interpolation/etc"
sed -i -e "s/%% ENVIRONMENT_NAME %%/$ENVRIONMENT_NAME/" $RESOURCE_NAME/$RULE_DIRECTORY/*
echo "executing cortextool"
