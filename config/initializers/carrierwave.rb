
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      #シークレットキーアクセスキーを環境変数にセット(環境変数はherokuに渡す)
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY_ID'],
      :region                => ENV['S3_REGION']
    }
    config.fog_directory = ENV['S3_BUCKET']
    config.fog_public = true
  end
end
