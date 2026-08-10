resource "azurerm_storage_account" "stg" {
    for_each = var.storage
     name = each.value.name
     location = each.value.location
     resource_group_name = each.value.resouce_group_name
     account_tier = each.value.account.tier
     account_replication_type = each.value.account.replication_type

}
