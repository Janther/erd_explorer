# encoding: utf-8
require 'spec_helper'

describe Slug do
  it { should belong_to(:sluggable) }
end
