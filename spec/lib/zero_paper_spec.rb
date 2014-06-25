require 'spec_helper'
require 'its'
include REMOTE_API

describe REMOTE_API::ZeroPaper do
  subject(:zp_client) { REMOTE_API::ZeroPaper.new }
  let(:zp_client) { REMOTE_API::ZeroPaper.new }

  it { should be_connected }
  its(:do_login, 'ilton_unb@hotmail.com', 'u5ga6f123') { should be_true }
end