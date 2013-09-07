
require "json"

class HTTP

  @@methods = []
  @@phrases = {}
  @@status_codes = []
  @@statuses = {}

  def self.methods
    if @@methods.empty?
      self.load_http_information
    end
    @@methods
  end

  def self.phrases
    if @@phrases.empty?
      self.load_http_information
    end
    @@phrases
  end

  def self.status_codes
    if @@status_codes.empty?
      self.load_http_information
    end
    @@status_codes
  end

  def self.statuses
    if @@statuses.empty?
      self.load_http_information
    end
    @@statuses
  end

  private

  def self.load_http_information
    self.load_methods
    self.load_status_codes

    @@status_codes.each do |item|
      code = item["code"].to_i
      if code.to_s != item["code"]
        next
      end

      phrase = item["phrase"].dup
      phrase.downcase!
      phrase.gsub! /[^A-Z]/i, "_"
      phrase = phrase.to_sym

      @@statuses[phrase] = code
      @@phrases[code] = item["phrase"]
    end
  end

  def self.load_json(filename)
    this_file = Pathname.new(__FILE__).realpath
    json_filename = File.expand_path("../../js/#{filename}", this_file)
    json_contents = File.read(json_filename)
    JSON.parse(json_contents)
  end

  def self.load_methods
    @@methods = self.load_json("methods.json")
  end

  def self.load_status_codes
    @@status_codes = self.load_json("status-codes.json")
  end

end

