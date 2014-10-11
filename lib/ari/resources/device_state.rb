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
  class DeviceState < Resource

    attr_reader :name, :state


    # GET /deviceStates
    #
    # Device states
    #
    #
    def self.list(options = {})
      path = '/deviceStates'
      response = client(options).get(path, options)
      response.map { |hash| DeviceState.new(hash.merge(client: options[:client])) }
    end

    # GET /deviceStates/%{deviceName}
    #
    # Device state
    #
    #
    # Parameters:
    #
    # deviceName (required) - Name of the device
    #
    def self.get(options = {})
      raise ArgumentError.new("Parameter deviceName must be passed in options hash.") unless options[:deviceName]
      path = '/deviceStates/%{deviceName}' % options
      response = client(options).get(path, options)
      DeviceState.new(response.merge(client: options[:client]))
    end

    def get(options = {})
      self.class.get(options.merge(deviceStateId: self.id, client: @client))
    end

    # PUT /deviceStates/%{deviceName}
    #
    # Device state
    #
    # Change the state of a device controlled by ARI. (Note - implicitly creates the d
    #
    # Parameters:
    #
    # deviceName (required) - Name of the device
    # deviceState (required) - Device state value
    #
    def self.update(options = {})
      raise ArgumentError.new("Parameter deviceName must be passed in options hash.") unless options[:deviceName]
      raise ArgumentError.new("Parameter deviceState must be passed in options hash.") unless options[:deviceState]
      path = '/deviceStates/%{deviceName}' % options
      response = client(options).put(path, options)
    end

    def update(options = {})
      self.class.update(options.merge(deviceStateId: self.id, client: @client))
    end

    # DELETE /deviceStates/%{deviceName}
    #
    # Device state
    #
    #
    # Parameters:
    #
    # deviceName (required) - Name of the device
    #
    def self.delete(options = {})
      raise ArgumentError.new("Parameter deviceName must be passed in options hash.") unless options[:deviceName]
      path = '/deviceStates/%{deviceName}' % options
      response = client(options).delete(path, options)
    rescue Ari::RequestError => e
      raise unless e.code == '404'
    end

    def delete(options = {})
      self.class.delete(options.merge(deviceStateId: self.id, client: @client))
    end


  end
end

Ari::Client.send :define_method, 'device_states' do
  Ari::ListResource.new(self, Ari::DeviceState)
end
