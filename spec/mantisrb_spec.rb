require_relative 'spec_helper'

describe Mantis::Session do

  before do
    @session = create_session
  end

  describe "Mantis" do

  it "should strip all :\"@xsi:type\" elements" do
    @session.config.statuses.each { |t| t.keys.wont_include :"@xsi:type" }
  end
  end # Mantis
end # Mantis::Session
