require 'rails_helper'

RSpec.describe Like, type: :model do
   describe 'ActiveRecord associations' do
    it 'has many comments' do
      expect { should belong_to(users) }
    end
    it 'belong to  like' do
      expect { should belong_to(posts) }
    end
    it 'belong to like' do
      expect { should validate_uniqueness_of(user_id).scoped_to(:post_id) }
    end
  end
  

end