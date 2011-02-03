require 'spec_helper'

describe VividSeats::API do
  let(:api) { VividSeats::API }

  shared_examples_for "an API call" do
    it "has a 200 response" do
      subject.code.should == 200
    end

    it "has a JSON content type" do
      subject.content_type.should == 'application/json'
    end
  end

  context ".categories" do
    subject do
      use_cached_requests(:categories) do
        api.categories
      end
    end

    it_behaves_like "an API call"
  end

  context ".events" do
    subject do
      use_cached_requests(:events) do
        api.events
      end
    end

    it_behaves_like "an API call"
  end

  context ".performances" do
    subject do
      use_cached_requests(:performances) do
        api.performances
      end
    end

    it_behaves_like "an API call"
  end

  context ".performers" do
    subject do
      use_cached_requests(:performers) do
        api.performers
      end
    end

    it_behaves_like "an API call"
  end

  context ".regions" do
    subject do
      use_cached_requests(:regions) do
        api.regions
      end
    end

    it_behaves_like "an API call"
  end

  context ".venues" do
    subject do
      use_cached_requests(:venues) do
        api.venues
      end
    end

    it_behaves_like "an API call"
  end
end
