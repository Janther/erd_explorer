# encoding: utf-8
require 'spec_helper'

describe User do
  it { should have_and_belong_to_many(:roles) }
  it { should have_many(:invitees).class_name('User') }
  it { should belong_to(:inviter).class_name('User') }
  it { should have_one(:slug) }
  it { should have_many(:ownerships) }
  it { should have_many(:pages).through(:ownerships) }
end
