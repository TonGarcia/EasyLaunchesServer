require 'spec_helper'
require 'its'
include REMOTE_API

describe REMOTE_API::ZeroPaper do
  subject(:zp_client) { REMOTE_API::ZeroPaper.new }
  let(:zp_client) { REMOTE_API::ZeroPaper.new }

  it { should be_conected }
  its(:auth_user) { should be_true }
end