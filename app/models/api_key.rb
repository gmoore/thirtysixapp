class ApiKey < ActiveRecord::Base
  def self.generate
    api_key = ApiKey.new
    api_key.key_text = SecureRandom.hex(20)
    api_key.save
    api_key
  end
end