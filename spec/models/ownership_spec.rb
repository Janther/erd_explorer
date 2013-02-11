# encoding: utf-8
require 'spec_helper'

describe Ownership do
  it { should belong_to(:page) }
  it { should belong_to(:user) }
end
