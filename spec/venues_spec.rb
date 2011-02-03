require 'spec_helper'

describe VividSeats::Venue do
  context ".all" do
    it "returns an array of venues" do
      use_cached_requests(:venues) do
        subject.all.should have(8_495).venues
      end
    end

    it "returns an array of venues for the given region" do
      use_cached_requests(:venues, :record => :new) do
        subject.all(:regionId => 27).should have(67).venues
      end
    end
  end
end
