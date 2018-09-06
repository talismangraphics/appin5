class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    #@mailme = ExampleMailer.sample_email(@user).deliver
	@listVendor = checkVendor ("Cal Royal")
  end
  def checkVendor (vendor)
    knownVendors = Array["Von Duprin","Cal Royal","Stanley Best"]
     "#{knownVendors}"
  end
  def createGoogleSpreadsheet()
    File.new("testfile.txt") 
  end
end
