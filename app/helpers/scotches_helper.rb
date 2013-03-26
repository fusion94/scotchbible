module ScotchesHelper
  def join_tags(scotch)
    scotch.tags.map { |t| t.name }.join(", ")
  end
end
