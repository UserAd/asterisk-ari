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
  class ChannelEnteredBridge < Event

    attr_reader :bridge, :channel

    def bridge=(val)
      @bridge ||= Bridge.new(val)
    end

    def channel=(val)
      @channel ||= Channel.new(val)
    end


  end
end
