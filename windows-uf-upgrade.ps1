echo "This is a silent upgrade script, you will not see any output when complete. Give the UF 10-20 minutes once ran then proceed to check versioning and that the splunkd service is running..."
sleep 10

echo "Stopping the Splunk service...."
cd "C:\Program Files\SplunkUniversalForwarder\bin"
./splunk stop
sleep 60

cd "C:\Path\to\SplunkInstaller"

echo "Starting Splunk Upgrade...."
msiexec.exe /i splunkforwarder-9.1.1-64e843ea36b1-x64-release.msi AGREETOLICENSE=yes SPLUNKUSERNAME=SplunkAdmin GENRANDOMPASSWORD=1 /quiet
sleep 30
