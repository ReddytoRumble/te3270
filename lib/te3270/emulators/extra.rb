require 'win32ole'

class Extra

  attr_reader :system, :session, :screen

  def connect
    begin
      @system = WIN32OLE.connect('EXTRA.System')
    rescue
      @system = WIN32OLE.new('EXTRA.System')
    end

    @session = system.ActiveSession
    @screen = session.Screen
  end


end