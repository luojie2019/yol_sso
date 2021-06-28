require 'roxml'
require 'multi_xml'
require 'ostruct'
require 'net/http'
require 'json'

require "yol_sso/version"

require "yol_sso/models/configuration"
require "yol_sso/models/encrypt_message"
require "yol_sso/helpers/prpcrypt"

require "yol_sso/connection"
require "yol_sso/client"

module YolSso

  class << self

    # A Sso configuration object. See Sso::Configuration.
    attr_writer :configuration

    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

  end
end
