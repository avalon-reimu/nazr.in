class Link < ActiveRecord::Base
  include Tokenable

  belongs_to :user

  def view!
    self.view_count += 1
    self.save
  end

  def dispatchable_url
    link_url(self, host: 'http://nazr.in')
  end
end
