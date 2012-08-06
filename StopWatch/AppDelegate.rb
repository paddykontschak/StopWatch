#
#  AppDelegate.rb
#  StopWatch
#
#  Created by Patrick Kontschak on 12-08-06.
#  Copyright 2012 Patrick Kontschak. All rights reserved.
#

class AppDelegate
  attr_accessor :window
  attr_accessor :textField # Outlet
  def applicationDidFinishLaunching(a_notification)
    # Insert code here to initialize your application
  end
  
  def startTimer(sender)
    if @timer.nil?
      @time = 0.0
      @timer = NSTimer
      .scheduledTimerWithTimeInterval(0.1,
                                      target: self,
                                      selector: "timerHandler:",
                                      userInfo: nil,
                                      repeats: true)
    end
  end
  
  def stopTimer(sender)
    if @timer
      @timer.invalidate
      @timer = nil
    end
  end
  
  def timerHandler(userInfo)
    @time += 0.1
    string = sprintf("%.1f", @time)
    textField.setStringValue(string)
  end
end