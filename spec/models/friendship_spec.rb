require 'rails_helper'
RSpec.describe Friendship, type: :model do
  describe 'ActiveRecord associations' do
    it 'belong to users' do
      expect { should belong_to(user) }
    end
    it 'belong to  friend' do
      expect { should belong_to(friend) }
    end
  end
end
