# encoding: utf-8
require 'spec_helper'

describe Ownership do
  it { should belongs_to(:page) }
  it { should belongs_to(:user) }
end
