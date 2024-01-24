resource "google_storage_bucket" "dynamic_bucket" {
  for_each = var.bucket_dynamic

  name          = "${random_string.random.id}-${each.key}"
  location      = each.value.location
  force_destroy = true

  uniform_bucket_level_access = true

  dynamic "website" {
    for_each = lookup(each.value, "website", {})

    content {
      main_page_suffix = website.value
    }
  }
}