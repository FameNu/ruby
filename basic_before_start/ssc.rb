# require 'rss'
# require 'open-uri'

# # BBC News RSS feed URL (replace with any specific BBC feed URL if needed)
# url = 'http://feeds.bbci.co.uk/news/rss.xml'

# # Open and parse the RSS feed
# begin
#   URI.open(url) do |rss|
#     feed = RSS::Parser.parse(rss)

#     # Print feed title
#     puts "Feed Title: #{feed.channel.title}"

#     # Loop through each item in the feed
#     feed.items.each do |item|
#       puts "Title: #{item.title}"
#       puts "Link: #{item.link}"
#       puts "Description: #{item.description}"
#       puts "Publication Date: #{item.pubDate}"
#       puts "URL: #{item.link}"
#       puts "------------------------------------"
#     end
#   end
# rescue OpenURI::HTTPError => e
#   puts "Failed to retrieve feed: #{e.message}"
# end

require 'rss'
require 'open-uri'

# BBC News RSS feed URL
url = 'http://feeds.bbci.co.uk/news/rss.xml'

# Open and parse the RSS feed
begin
  URI.open(url) do |rss|
    feed = RSS::Parser.parse(rss)

    # Open or create a text file to save the information
    File.open("bbc.txt", "w") do |file|
      # Write the feed title
      file.puts "Feed Title: #{feed.channel.title}\n\n"

      # Write each item in the feed
      feed.items.each do |item|
        file.puts "Title: #{item.title}"
        file.puts "Link: #{item.link}"
        file.puts "Description: #{item.description}"
        file.puts "Publication Date: #{item.pubDate}"
        file.puts "------------------------------------\n"
      end
    end

    puts "Feed information saved to bbc.txt"
  end
rescue OpenURI::HTTPError => e
  puts "Failed to retrieve feed: #{e.message}"
end
