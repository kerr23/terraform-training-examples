output "buckets" {
  value = merge(
    { for k, v in google_storage_bucket.bucket : v.name => v.self_link },
    { for k, v in google_storage_bucket.dynamic_bucket : v.name => v.self_link }
  )
}