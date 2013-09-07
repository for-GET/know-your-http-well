
describe HTTP do

  subject(:headers) { HTTP.headers }
  subject(:methods) { HTTP.methods }
  subject(:phrases) { HTTP.phrases }
  subject(:status_codes) { HTTP.status_codes }
  subject(:statuses) { HTTP.statuses }

  describe "headers" do
    it "is an array" do
      expect(headers).to be_an(Array)
    end
    it "contains a set of hashes" do
      expect(headers[0]).to be_a(Hash)
    end
  end

  describe "methods" do
    it "is an array" do
      expect(methods).to be_an(Array)
    end
    it "contains a set of hashes" do
      expect(methods[0]).to be_a(Hash)
    end
  end

  describe "phrases" do
    it "is a hash" do
      expect(phrases).to be_a(Hash)
    end
    it "has the correct phrase for 404" do
      expect(phrases[404]).to eq "Not Found"
    end
  end

  describe "status_codes" do
    it "is an array" do
      expect(status_codes).to be_an(Array)
    end
    it "contains a set of hashes" do
      expect(status_codes[0]).to be_a(Hash)
    end
  end

  describe "statuses" do
    it "is a hash" do
      expect(statuses).to be_a(Hash)
    end
    it "has the correct status for :not_found" do
      expect(statuses[:not_found]).to eq 404
    end
  end

end

