terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
    }
  }
}

locals {
  #svctags = ["ActionGroup","ApiManagement","ApplicationInsightsAvailability","AppConfiguration","AppService","AppServiceManagement","AzureActiveDirectory","AzureActiveDirectoryDomainServices","AzureAdvancedThreatProtection","AzureArcInfrastructure","AzureAttestation","AzureBackup","AzureBotService","AzureCloud","AzureCognitiveSearch","AzureConnectors","AzureContainerRegistry","AzureCosmosDB","AzureDatabricks","AzureDataExplorerManagement","AzureDataLake","AzureDevSpaces","AzureDevOps","AzureDigitalTwins","AzureEventGrid","AzureFrontDoor.Frontend","AzureFrontDoor.Backend","AzureFrontDoor.FirstParty","AzureInformationProtection","AzureIoTHub","AzureKeyVault","AzureLoadBalancer","AzureMachineLearning","AzureMonitor","AzureOpenDatasets","AzurePlatformDNS","AzurePlatformIMDS","AzurePlatformLKM","AzureResourceManager","AzureSignalR","AzureSiteRecovery","AzureTrafficManager","AzureUpdateDelivery","BatchNodeManagement","CognitiveServicesManagement","DataFactory","DataFactoryManagement","Dynamics365ForMarketingEmail","EOPExternalPublishedIPs","EventHub","GatewayManager","GuestAndHybridManagement","HDInsight","Internet","LogicApps","LogicAppsManagement","MicrosoftAzureFluidRelay","MicrosoftCloudAppSecurity","MicrosoftContainerRegistry","PowerBI","PowerQueryOnline","ServiceBus","ServiceFabric","Sql","SqlManagement","Storage","StorageSyncService","WindowsAdminCenter","WindowsVirtualDesktop","VirtualNetwork"]
  #reference: https://docs.microsoft.com/en-us/azure/virtual-network/service-tags-overview
}

resource "azurerm_network_security_rule" "nsgrule" {
  name                         = var.name
  resource_group_name          = var.resourceGroupName
  network_security_group_name  = var.networkSecurityGroupName
  priority                     = var.priority
  direction                    = var.direction
  access                       = var.access
  protocol                     = var.protocol
  source_port_range            = var.sourcePortRange != null ? var.sourcePortRange : null
  source_port_ranges           = var.sourcePortRanges != null ? var.sourcePortRanges : null
  destination_port_range       = var.destinationPortRange != null ? var.destinationPortRange : null
  destination_port_ranges      = var.destinationPortRanges != null ? var.destinationPortRanges : null
  source_address_prefix        = var.sourceAddressPrefix != null ? var.sourceAddressPrefix : null
  source_address_prefixes      = var.sourceAddressPrefixes != null ? var.sourceAddressPrefixes : null
  destination_address_prefix   = var.destinationAddressPrefix != null ? var.destinationAddressPrefix : null
  destination_address_prefixes = var.destinationAddressPrefixes != null ? var.destinationAddressPrefixes : null
}