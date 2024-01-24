resource "random_string" "random" {
  length    = 4
  lower     = true
  min_lower = 4
  special   = false
}

resource "google_storage_bucket" "bucket" {
  for_each = var.bucket

  name          = "${random_string.random.id}-${each.key}"
  location      = each.value
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
  }
}