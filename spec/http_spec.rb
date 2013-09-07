
describe HTTP do

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
  end

end

