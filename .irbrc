begin
  require "amazing_print"
  AmazingPrint.irb!

  IRB.conf[:SAVE_HISTORY] = 200
  IRB.conf[:HISTORY_FILE] = "~/.irb-history"
rescue
end
