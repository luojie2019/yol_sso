module YolSso
  class Configuration

    OPTIONS = [:host, :agentid, :redis].freeze

    attr_accessor :host

    attr_accessor :agentid

    attr_accessor :redis

  end
end
