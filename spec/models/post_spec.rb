require 'rails_helper'
RSpec.describe Post, type: :model do
  describe 'ActiveRecord associations' do
    it 'has many comments' do
      expect { should has_many(comments) }
    end
    it 'has many like' do
      expect { should has_many(likes) }
    end
  end
end
