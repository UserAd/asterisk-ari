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
  class DeviceStateChanged < Event

    attr_reader :device_state

    def device_state=(val)
      @device_state ||= DeviceState.new(val)
    end


  end
end
