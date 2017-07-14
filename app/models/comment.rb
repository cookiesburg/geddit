class Comment<ApplicationRecord
  belongs_to :user
  belongs_to :post, optional:true
  belongs_to :comment, optional:true

  def parent
    if comment
      comment.text
    else
      post.title
    end
  end
end