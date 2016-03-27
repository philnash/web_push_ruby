require "web_push/version"


module WebPush
  # Yields the module itself so that it can be configured using a block
  #
  # @example Set the gcm_api_key to "TEST"
  #   WebPush.configure do |config|
  #     config.gcm_api_key = "TEST"
  #   end
  #
  # @yield self
  # @return self
  def self.configure(&block)
    yield self
    self
  end

  # Attribute reader for the gcm_api_key, a Google Cloud Messaging API key.
  #
  # @return [String] Returns the gcm_api_key
  def self.gcm_api_key; @gcm_api_key; end

  # Set the gcm_api_key.
  #
  # @param [String] A Google Cloud Messaging API key
  # @return [String] Returns the API key that was set
  def self.gcm_api_key=(gcm_api_key)
    @gcm_api_key = gcm_api_key
  end
end
