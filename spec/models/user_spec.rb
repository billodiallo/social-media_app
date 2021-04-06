require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(id: 1, name: 'billo', email: 'billodiallonet@gmail.com', password: '123456') }
  context 'should create new user successfully' do
    it 'should return user name' do
      expect(user.name).to eq('billo')
    end
    it 'should return user email' do
      expect(user.email).to eq('billodiallonet@gmail.com')
    end
    it 'should return user id' do
      expect(user.id).to eq(1)
    end
    it 'should create new user' do
      expect(user.password).to eq('123456')
    end
  end

  describe 'ActiveRecord associations' do
    it 'has many posts' do
      expect { should has_many(posts) }
    end
    it 'has many comments' do
      expect { should has_many(comments) }
    end
    it 'has many like' do
      expect { should has_many(likes) }
    end
    it 'has many  confirmed friendship' do
      expect { should has_many(confirmed_friendships) }
    end
    it 'has many friends' do
      expect { should has_many(friends) }
    end
    it 'has many inverse_friendships' do
      expect { should has_many(inverse_friendships).with_foreign_key }
    end
  end
end
