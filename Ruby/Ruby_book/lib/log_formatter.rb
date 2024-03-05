require 'net/http'
require 'uri'
require 'json'

module LogFormatter
  def self.format_log
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    json = Net::HTTP.get(uri)
    log_data = JSON.parse(json,symbolize_name: true)
    pp log_data
  end
end
