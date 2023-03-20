class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  def short_content
    post=self.object
    "#{post.content[0...40]}..."
  end
end
