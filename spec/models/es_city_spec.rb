require 'spec_helper'

describe EsCity do
  # province
  it { should validate_presence_of(:province) }
end
