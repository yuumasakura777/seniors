
#require 'carrierwave/storage/abstract'
#require 'carrierwave/storage/file'
#require 'carrierwave/storage/fog'


#if Rails.env.production?
  #CarrierWave.configure do |config|
    #config.storage = :fog
    #config.fog_provider = 'fog/aws'
    #config.fog_credentials = {
      #:provider              => 'AWS',
      #:aws_access_key_id     => 'S3_ACCESS_KEY_ID',
      #:aws_secret_access_key => 'S3_SECRET_KEY_ID',
      #:region                => 'S3_REGION'
    #}
    #config.fog_directory = 'mikagamit777'
    #config.fog_public = true
  #end
#end




CarrierWave.configure do |config|
config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOGLE_ACCESS_TOKEN',
    :google_storage_secret_access_key => 'GOOGLE_SECRET_ACCESS_TOKEN'
    }
    config.fog_directory = 'seniors'
end
