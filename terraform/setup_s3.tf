data "twc_s3_preset" "personal-blog-preset" {
  location = "ru-1"

  disk = 10 * 1024

  price_filter {
    from = 50
    to   = 100
  }
}

resource "twc_s3_bucket" "personal-blog-bucket" {
  name       = "personal-blog"
  preset_id  = data.twc_s3_preset.personal-blog-preset # 2669
  type       = "public"
  project_id = 637725
}

resource "twc_s3_bucket_subdomain" "personal-blog-bucket-subdomain" {
  bucket_id = twc_s3_bucket.personal-blog-bucket.id

  ## This example requires valid domain name with CNAME record to s3.timeweb.com
  subdomain = var.domain

  release_cert = true
}
