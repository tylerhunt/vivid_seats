require 'spec_helper'

describe VividSeats::Performance do
  context ".all" do
    it "returns an array of performances" do
      use_cached_requests(:performances) do
        subject.all.should have(33_870).performances
      end
    end

    it "returns an array of performances for the given event" do
      use_cached_requests(:performances) do
        subject.all(:eventId => 788701).should have(1).performance
      end
    end
  end
end
