CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'                  
    config.fog_credentials = {
      provider:              'AWS',                        
      aws_access_key_id:     ENV["AKIAUVZ354E5JVXZU572"],         

      aws_secret_access_key: ENV["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"],        

      region:                ENV["us-east-2"]    

    }
    config.fog_directory  = ENV["store200"] 


  else
    config.storage :file
  end
end

