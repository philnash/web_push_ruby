require 'spec_helper'

describe WebPush do
  it 'has a version number' do
    expect(WebPush::VERSION).not_to be nil
  end

  it 'has a gcm_api_key attribute' do
    api_key = "TEST"
    WebPush.gcm_api_key = api_key
    expect(WebPush.gcm_api_key).to be(api_key)
  end

  it 'can be configured with a gcm_api_key' do
    api_key = "TEST"
    WebPush.configure do |config|
      config.gcm_api_key = api_key
    end
    expect(WebPush.gcm_api_key).to be(api_key)
  end
end
