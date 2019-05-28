# Get the private key from the environment variable
echo "Setting up QAT Connection..."
mkdir keys
echo $SFDC_SERVER_KEY | base64 -d > keys/server.key
# Authenticate to salesforce
echo "Authenticating..."
sfdx force:auth:jwt:grant --clientid $SFDC_QAT_CLIENTID --jwtkeyfile keys/server.key --username $SFDC_QAT_USER --setdefaultdevhubusername -a QAT
echo "QAT Authenticated..."