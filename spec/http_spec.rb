
describe HTTP do

  describe "status_codes" do
    subject(:status_codes) { HTTP.status_codes }

    it "is a hash" do
      expect(status_codes).to be_a(Hash)
    end
  end

  describe "statuses" do
    subject(:statuses) { HTTP.statuses }

    it "is a hash" do
      expect(statuses).to be_a(Hash)
    end

    it "has the correct status for :not_found" do
      expect(statuses[:not_found]).to eq 404
    end
  end

  describe "phrases" do
    subject(:phrases) { HTTP.phrases }

    it "is a hash" do
      expect(phrases).to be_a(Hash)
    end

    it "has the correct phrase for 404" do
      expect(phrases[404]).to eq "Not Found"
    end
  end

end

