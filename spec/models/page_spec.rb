# encoding: utf-8
require 'spec_helper'

describe Page do
  it { should belong_to(:domain) }
  it { should have_one(:slug) }
  it { should have_many(:page_parts) }
  it { should have_many(:ownerships) }
  it { should have_many(:users).through(:ownerships) }
end
