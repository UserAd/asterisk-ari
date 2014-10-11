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
  class Recording < Resource


    # GET /recordings/stored
    #
    # Recordings
    #
    #
    def self.list_stored(options = {})
      path = '/recordings/stored'
      response = client(options).get(path, options)
      response.map { |hash| StoredRecording.new(hash.merge(client: options[:client])) }
    end
    class << self; alias_method :listStored, :list_stored; end

    # GET /recordings/stored/%{recordingName}
    #
    # Individual recording
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.get_stored(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/stored/%{recordingName}' % options
      response = client(options).get(path, options)
      StoredRecording.new(response.merge(client: options[:client]))
    end
    class << self; alias_method :getStored, :get_stored; end

    def get_stored(options = {})
      self.class.get_stored(options.merge(recordingId: self.id, client: @client))
    end

    # DELETE /recordings/stored/%{recordingName}
    #
    # Individual recording
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.delete_stored(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/stored/%{recordingName}' % options
      response = client(options).delete(path, options)
    rescue Ari::RequestError => e
      raise unless e.code == '404'
    end
    class << self; alias_method :deleteStored, :delete_stored; end

    def delete_stored(options = {})
      self.class.delete_stored(options.merge(recordingId: self.id, client: @client))
    end

    # POST /recordings/stored/%{recordingName}/copy
    #
    # Copy an individual recording
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording to copy
    # destinationRecordingName (required) - The destination name of the recording
    #
    def self.copy_stored(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      raise ArgumentError.new("Parameter destinationRecordingName must be passed in options hash.") unless options[:destinationRecordingName]
      path = '/recordings/stored/%{recordingName}/copy' % options
      response = client(options).post(path, options)
      StoredRecording.new(response.merge(client: options[:client]))
    end
    class << self; alias_method :copyStored, :copy_stored; end

    def copy_stored(options = {})
      self.class.copy_stored(options.merge(recordingId: self.id, client: @client))
    end

    # GET /recordings/live/%{recordingName}
    #
    # A recording that is in progress
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.get_live(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}' % options
      response = client(options).get(path, options)
      LiveRecording.new(response.merge(client: options[:client]))
    end
    class << self; alias_method :getLive, :get_live; end

    def get_live(options = {})
      self.class.get_live(options.merge(recordingId: self.id, client: @client))
    end

    # DELETE /recordings/live/%{recordingName}
    #
    # A recording that is in progress
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.cancel(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}' % options
      response = client(options).delete(path, options)
    rescue Ari::RequestError => e
      raise unless e.code == '404'
    end

    def cancel(options = {})
      self.class.cancel(options.merge(recordingId: self.id, client: @client))
    end

    # POST /recordings/live/%{recordingName}/stop
    #
    # 
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.stop(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}/stop' % options
      response = client(options).post(path, options)
    end

    def stop(options = {})
      self.class.stop(options.merge(recordingId: self.id, client: @client))
    end

    # POST /recordings/live/%{recordingName}/pause
    #
    # 
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.pause(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}/pause' % options
      response = client(options).post(path, options)
    end

    def pause(options = {})
      self.class.pause(options.merge(recordingId: self.id, client: @client))
    end

    # DELETE /recordings/live/%{recordingName}/pause
    #
    # 
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.unpause(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}/pause' % options
      response = client(options).delete(path, options)
    rescue Ari::RequestError => e
      raise unless e.code == '404'
    end

    def unpause(options = {})
      self.class.unpause(options.merge(recordingId: self.id, client: @client))
    end

    # POST /recordings/live/%{recordingName}/mute
    #
    # 
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.mute(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}/mute' % options
      response = client(options).post(path, options)
    end

    def mute(options = {})
      self.class.mute(options.merge(recordingId: self.id, client: @client))
    end

    # DELETE /recordings/live/%{recordingName}/mute
    #
    # 
    #
    #
    # Parameters:
    #
    # recordingName (required) - The name of the recording
    #
    def self.unmute(options = {})
      raise ArgumentError.new("Parameter recordingName must be passed in options hash.") unless options[:recordingName]
      path = '/recordings/live/%{recordingName}/mute' % options
      response = client(options).delete(path, options)
    rescue Ari::RequestError => e
      raise unless e.code == '404'
    end

    def unmute(options = {})
      self.class.unmute(options.merge(recordingId: self.id, client: @client))
    end


  end
end

Ari::Client.send :define_method, 'recordings' do
  Ari::ListResource.new(self, Ari::Recording)
end
