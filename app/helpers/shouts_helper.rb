module ShoutsHelper
  def youtube_embed(youtube_url, width)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
    %Q{<iframe title="YouTube video player" width="#{ width }" height="#{ width}" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>} 
  end

  def compare_type_convert(compare_type)
    if compare_type == "greater_than"
      return_compare = '>'  
    elsif compare_type == "less_than"
      return_compare = '<'
    else
      return_compare = '='
    end
    return_compare
  end
end
