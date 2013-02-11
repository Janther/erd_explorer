# encoding: utf-8
require 'spec_helper'

describe PagePart do
  it { should belong_to(:page) }
  it { should have_one(:domain, through: :page) }
end
