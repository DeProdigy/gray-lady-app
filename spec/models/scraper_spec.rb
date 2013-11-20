require 'spec_helper'

describe Scraper do
  let(:scraper) do
    Scraper.new("http://nytimes.com")
  end


  describe ".new" do
    it "initializes with a url" do
      expect(scraper).to be
      expect(scraper).to_not raise_error
    end
    it "raises an error without a url" do
      expect { Scraper.new }.to raise_error(ArgumentError)
    end
  end

  describe "#get_hrefs" do
    it "should exist" do
      expect(scraper).to respond_to(:get_hrefs)
    end

    it "should use nokogiri to return an array of all the links on a page" do
      expect(scraper.get_hrefs).to be_kind_of(Array)
    end

    it "should include hrefs in the array" do
      scraper = Scraper.new("http://nytimes.com")
      expect(scraper.get_hrefs.first).to include("<a")
    end

  end
end










