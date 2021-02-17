# frozen_string_literal: true

require_relative "clubhouse_api_support/version"
    
# App/API Information
API_URL = "https://www.clubhouseapi.com/api"
API_BUILD_ID = "304"
API_BUILD_VERSION = "0.1.28"
API_UA = f"clubhouse/{API_BUILD_ID} (iPhone; iOS 13.5.1; Scale/3.00)"

# Some useful information for commmunication
PUBNUB_PUB_KEY = "pub-c-6878d382-5ae6-4494-9099-f930f938868b"
PUBNUB_SUB_KEY = "sub-c-a4abea84-9ca3-11ea-8e71-f2b83ac9263d"

TWITTER_ID = "NyJhARWVYU1X3qJZtC2154xSI"
TWITTER_SECRET = "ylFImLBFaOE362uwr4jut8S8gXGWh93S1TUKbkfh7jDIPse02o"

AGORA_KEY = "938de3e8055e42b281bb8c6f69c21f78"
SENTRY_KEY = "5374a416cd2d4009a781b49d1bd9ef44@o325556.ingest.sentry.io/5245095"
INSTABUG_KEY = "4e53155da9b00728caa5249f2e35d6b3"
AMPLITUDE_KEY = "9098a21a950e7cb0933fb5b30affe5be"

require 'securerandom'

module ClubhouseApiSupport
  class Error < StandardError; end
  # Your code goes here...
  class Connector 
    # Useful header information
    HEADERS = {
      "CH-Languages": "en-JP,ja-JP",
      "CH-Locale": "en_JP",
      "Accept": "application/json",
      "Accept-Language": "en-JP;q=1, ja-JP;q=0.9",
      "Accept-Encoding": "gzip, deflate",
      "CH-AppBuild": "#{API_BUILD_ID}",
      "CH-AppVersion": "#{API_BUILD_VERSION}",
      "User-Agent": "#{API_UA}",
      "Connection": "close",
      "Content-Type": "application/json; charset=utf-8",
      "Cookie": "__cfduid=#{SecureRandom.hex(21)}#{rand(1..9)}"}
    }


    def initialize(user_id='', user_token='', user_device='')
      HEADERS
    end
  end
end
