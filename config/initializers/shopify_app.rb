ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "9b74edfb724ae4ca81cbf04940bb2cc7"
  config.secret = "9c7074d7506a58cffe93f95c4c08f135"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
