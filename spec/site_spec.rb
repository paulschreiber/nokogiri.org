# coding: utf-8
describe "nokogiri.org" do
  feature "legacy URLs" do
    it "should support legacy help link" do
      visit "/tutorials/getting_help.html"
      expect(page.status_code).to eq(200)
    end

    it "should support legacy installation link" do
      visit "/tutorials/installing_nokogiri.html"
      expect(page.status_code).to eq(200)
    end

    it "should support legacy security link" do
      visit "/tutorials/security.html"
      expect(page.status_code).to eq(200)
    end
  end

  feature "tidelift URLs" do
    let(:tidelift_url) { "https://tidelift.com/subscription/pkg/rubygems-nokogiri?utm_source=rubygems-nokogiri&utm_medium=referral&utm_campaign=website" }

    it "should link to tidelift from home page" do
      visit "/"
      expect(page).to have_link("Get support for Nokogiri with a Tidelift subscription", href: tidelift_url)
    end
  end
end
