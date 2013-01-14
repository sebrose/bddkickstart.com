require File.dirname(__FILE__) + '/../lib/event'

require 'active_support/core_ext'

describe Event do
  let(:start_date) { 3.days.ago }
  let(:event) { Event.new("Foo", start_date, "eventbrite", nil) }

  it "returns a set of three days for full date" do
    event.full_date.should == [start_date, start_date + 2.days]
  end

  it "returns the first day for fundamentals" do
    event.fundamentals_date.should == start_date
  end

  it "returns the second two days for applied" do
    event.applied_date.should == [start_date + 1.day, start_date + 2.days]
  end
end