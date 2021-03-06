$subscriptionName = "Marc Jellinek - Visual Studio Enterprise"
$resourceGroupName = "AzDataFactoryDemo_GenericSqlSink"
$location = 'eastus'

Connect-AzAccount `
    -Subscription $subscriptionName

Get-AzResourceGroup `
    -Name $resourceGroupName `
    -ErrorVariable notPresent `
    -ErrorAction SilentlyContinue

if($notPresent) {
    New-AzResourceGroup `
       -Name $resourceGroupName -Location $location
}
else {
    "Resource Group $resourceGroupName already exists, use another resource group name" | Out-Host
    $resourceGroupName = ""
}

#& "./0010_deployAzureDemoResources.ps1"
#& "./0020_deployTargetDatabaseObjects.ps1"
#& "./0040_deployDataFactory.ps1"
