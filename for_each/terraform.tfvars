bucket = {
  "terraform-example-1" = "US",
  "terraform-example-2" = "EU"
}

bucket_dynamic = {
  "terraform-example-3" = {
    location = "US",
    website = {
      main_page_suffix = "index.html"
    }
  },
  "terraform-example-4" = {
    location = "EU"
  }
}