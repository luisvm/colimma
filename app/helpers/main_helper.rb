module MainHelper

  def concat_links(*args)
    options = args.extract_options!
    raise "You need to pass link names and links respectively" if options[:link_names].blank? or options[:links].blank?
    raise "You need to pass the same number of link names and links" unless options[:link_names].size == options[:links].size
    links = []
    options[:links].each_with_index do |link, index|
      links << link_to(options[:link_names][index], link)
      links << ' / ' unless options[:links].size == index.next
    end
    return links
  end

end

