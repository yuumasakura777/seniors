
require "rails_helper"

RSpec.describe User do
  describe '#create' do

    #名前、メールアドレス、パスワード、パスワード(確認)があれば有効
    it "is valid with a name, email, password and password_confirmation" do
      @user = User.new(
        name: "test",
        email: "test@gmail.com",
        password: "yuuma777",
        password_confirmation: "yuuma777"
      )
      expect(@user).to be_valid
    end

    #名前がなければ無効
    it "is invalid without name" do
      @user=User.new(name: nil)
      expect(@user.valid?).to eq(false)
    end

    #メールアドレスがなければ無効
    it "is invalid without email" do
      @user=User.new(email: nil)
      expect(@user.valid?).to eq(false)
    end

    #パスワードがなければ無効
    it "is invalid without password" do
      @user=User.new(password: nil)
      expect(@user.valid?).to eq(false)
    end

    #パスワードがなければ無効
    it "is invalid without password_confirmation" do
      @user=User.new(password_confirmation: nil)
      expect(@user.valid?).to eq(false)
    end

    

  end
end
