require 'spec_helper'

describe VividSeats::Performer do
  context ".all" do
    it "returns an array of performers" do
      use_cached_requests(:performers) do
        subject.all.should have(25_114).performers
      end
    end

    it "returns an array of performers for the given category" do
      use_cached_requests(:performers) do
        subject.all(:categoryId => 74).should have(1_597).performers
      end
    end
  end
end
