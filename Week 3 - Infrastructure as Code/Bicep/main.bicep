param name string = 'uniquestoragename9932021'
param location string = 'eastus'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2020-08-01-preview' = {
  name: 'uniquestoragename9932021' 
  location: 'eastus'
  kind: 'Storage'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    allowBlobPublicAccess:false
    
  }
}
output id string = storageaccount.id