require 'spec_helper'

describe VividSeats::Event do
  context ".all" do
    it "returns an array of events" do
      use_cached_requests(:events) do
        subject.all.should have(26_904).events
      end
    end

    it "returns an array of events for the given category" do
      use_cached_requests(:events) do
        subject.all(:categoryId => 74).should have(474).events
      end
    end
  end
end
