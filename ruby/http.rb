
require "json"

class HTTP

  @@phrases = {}
  @@statuses = {}

  def self.phrases
    @@phrases
  end

  def self.statuses
    if @@statuses.empty?
      self.load_http_information
    end
    @@statuses
  end

  private

  def self.load_http_information
    this_file = Pathname.new(__FILE__).realpath
    status_file = File.expand_path("../../js/status-codes.json", this_file)
    status_json = File.read(status_file)
    status_codes = JSON.parse(status_json)

    @@statuses = {}

    status_codes.each do |item|
      code = item["code"].to_i
      if code.to_s != item["code"]
        next
      end

      phrase = item["phrase"]
      phrase.downcase!
      phrase.gsub! /[^A-Z]/i, "_"
      phrase = phrase.to_sym

      @@statuses[phrase] = code
    end
  end

end

