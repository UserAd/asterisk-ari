# frozen_string_literal: true

#------------------------------------------------------------------------------
#
#  WARNING !
#
#  This is a generated file. DO NOT EDIT THIS FILE! Your changes will
#  be lost the next time this file is regenerated.
#
#  This file was generated using asterisk-ari-client ruby gem.
#
#------------------------------------------------------------------------------

module Ari
  class ChannelHold < Event
    attr_reader :channel, :musicclass

    def channel=(val)
      @channel ||= Channel.new(val)
    end
  end
end
