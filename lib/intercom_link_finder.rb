class IntercomLinkFinder
  INTERCOM_REGEX = /https:\/\/app.intercom.io\/a\/apps\/(?<app_id>\S*)\/inbox\/(\S*\/)?conversation(s)?\/(?<conversation_id>\d*)/

  attr_reader :match_data

  def initialize(text)
    @match_data = INTERCOM_REGEX.match(text)
  end

  def app_id
    match_data[:app_id]
  end

  def conversation_id
    conversation_id = match_data[:conversation_id]
    puts "~~See converation id"
    puts conversation_id
  end

  def has_link?
    puts "matchdata #{match_data}"
    puts "app_id #{app_id}"
    puts "conversation_id #{conversation_id}"
    match_data && app_id && conversation_id
  end
end
