class BlogPost < ActiveRecord::Base
  def self.latest
    return self.order("created_at").last
  end

  def self.latest_n(limit)
    return self.order("created_at DESC").first(limit)
  end

end
