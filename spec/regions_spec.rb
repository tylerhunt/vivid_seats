require 'spec_helper'

describe VividSeats::Region do
  context ".all" do
    it "returns an array of regions" do
      use_cached_requests(:regions) do
        subject.all.should have(47).regions
      end
    end
  end
end
