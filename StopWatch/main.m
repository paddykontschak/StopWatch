//
//  main.m
//  StopWatch
//
//  Created by Patrick Kontschak on 12-08-06.
//  Copyright (c) 2012 Patrick Kontschak. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
  return macruby_main("rb_main.rb", argc, argv);
}
