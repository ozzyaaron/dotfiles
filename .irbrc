begin
  require "awesome_print"
  AwesomePrint.irb!

  IRB.conf[:SAVE_HISTORY] = 200
  IRB.conf[:HISTORY_FILE] = "~/.irb-history"
rescue
end
