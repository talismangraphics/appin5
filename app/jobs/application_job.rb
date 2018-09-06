class ApplicationJob < ActiveJob::Base
  def checkVendor (vendor)
	  knownVendors = Array["Von Duprin","Cal Royal","Stanley Best"]
	    puts "#{knownVendors}"
  end
  def createGoogleSpreadsheet()
	 File.new("testfile.txt") 
  end
end
