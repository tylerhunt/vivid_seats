require 'spec_helper'

describe VividSeats::Category do
  context ".all" do
    it "returns an array of categories" do
      use_cached_requests(:categories) do
        subject.all.should have(61).categories
      end
    end
  end
end
