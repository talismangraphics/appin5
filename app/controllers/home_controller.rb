class HomeController < ShopifyApp::AuthenticatedController

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    #@mailme = ExampleMailer.sample_email(@user).deliver
	@listVendor = checkVendor ("Cal Royal")
	@makeMySheet = createGoogleSpreadsheet()
	@greeting = "Wazzap"
  end
  def checkVendor (vendor)
    knownVendors = Array["Von Duprin","Cal Royal","Stanley Best"]
     "#{knownVendors}"
  end
  def createGoogleSpreadsheet()
    path = "export.txt"
    content = "data from the form"
    File.new(path, "w+") 
	File.open(path, "w+") do |f|
    f.write(content)
end 
  end
end
