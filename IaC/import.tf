import {
  id = "/subscriptions/70612abe-819d-4e7f-8b16-ef74e921f18b/resourceGroups/voter-dev-rg/providers/Microsoft.Network/virtualNetworks/voter-dev-vnet/subnets/voter-dev-subnet"
  to = azurerm_subnet.webapp_subnet
}

import {
  id = "/subscriptions/70612abe-819d-4e7f-8b16-ef74e921f18b/resourceGroups/voter-dev-rg/providers/Microsoft.Network/virtualNetworks/voter-dev-vnet/subnets/voter-dev-sql-subnet"
  to = azurerm_subnet.sql_subnet
}

import {
  id = "/subscriptions/70612abe-819d-4e7f-8b16-ef74e921f18b/resourceGroups/voter-dev-rg/providers/Microsoft.Network/virtualNetworks/voter-dev-vnet/subnets/voter-dev-pep"
  to = azurerm_subnet.pep_subnet
}