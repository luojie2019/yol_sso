module YolSso
  class Configuration

    OPTIONS = [:host, :agentid, :redis, :corpsecret].freeze

    attr_accessor :host

    attr_accessor :agentid

    attr_accessor :redis

    attr_accessor :corpsecret

  end
end
