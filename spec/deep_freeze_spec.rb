require 'spec_helper'

describe DeepFreeze do
  it "should prevent nested objects from being modified" do
    hsh = {:a => {:b => :c}}.deep_freeze
    expect { hsh[:a] = nil }.to raise_error
    expect { hsh[:a][:b] = nil }.to raise_error
  end
end
