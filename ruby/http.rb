
require "pathname"
require "json"

class HTTP

  @@headers = []
  @@methods = []
  @@phrases = {}
  @@relations = {}
  @@status_codes = []
  @@statuses = {}

  def self.headers
    self.require_http_information
    @@headers
  end

  def self.methods
    self.require_http_information
    @@methods
  end

  def self.phrases
    self.require_http_information
    @@phrases
  end

  def self.relations
    self.require_http_information
    @@relations
  end

  def self.status_codes
    self.require_http_information
    @@status_codes
  end

  def self.statuses
    self.require_http_information
    @@statuses
  end

  private

  def self.require_http_information
    if @@headers.empty?
      self.load_http_information
    end
  end

  def self.load_http_information
    self.load_headers
    self.load_methods
    self.load_relations
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

  def self.load_headers
    @@headers = self.load_json("headers.json")
  end

  def self.load_methods
    @@methods = self.load_json("methods.json")
  end

  def self.load_relations
    @@relations = self.load_json("relations.json")
  end

  def self.load_status_codes
    @@status_codes = self.load_json("status-codes.json")
  end

end

