require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'ActiveRecord associations' do
    it 'belong to user' do
      expect { should belong_to(user) }
    end
    it 'belong to post' do
      expect { should belong_to(post) }
    end
  end
  describe 'Validations' do
    it 'validate presence of content' do
      expect { should validate_presence_of(:content) }
    end
  end
end
