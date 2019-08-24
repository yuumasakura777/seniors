
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


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



if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage=:fog
    config.fog_provider='fog/google'
    config.fog_credentials = {
      :provider                         => 'Google',
      :google_storage_access_key_id     => 'GOOGYB5ECIN746O6TBZ3TZCR',
      :google_storage_secret_access_key => 'HBsMpAKKamsm8XDfcrPUfp5MXcVvcvo6eKqGpZPY'
      }
      config.fog_directory = 'seniors'
  end
end
