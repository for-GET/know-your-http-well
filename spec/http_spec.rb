
describe HTTP do

  describe "statuses" do
    subject(:statuses) { HTTP.statuses }

    it "is a hash" do
      expect(statuses).to be_a(Hash)
    end

  end

end

