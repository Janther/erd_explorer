# encoding: utf-8
require 'spec_helper'

describe Domain do
  it { should have_many(:pages) }
end
