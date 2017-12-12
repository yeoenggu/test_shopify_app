ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b470f327549b564183141ed465502162"
  config.secret = "77613133be8c657f2e190028cd86a970"
  config.scope = "read_products, read_orders, read_script_tags, write_script_tags"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.webhooks = [
    {topic: 'orders/create', address: 'https://8d0ac83a.ngrok.io/order', format: 'json'},
    {topic: 'app/uninstalled', address: 'https://8d0ac83a.ngrok.io/uninstall', format: 'json'},
  ]
end
