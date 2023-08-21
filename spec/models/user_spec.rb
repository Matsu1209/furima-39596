require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'ユーザー新規登録' do
    it 'ニックネームが空では登録できない' do
      user = User.new(nick_name:'', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Nick name can't be blank")
    end
    it 'メールアドレスが空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it 'パスワードが空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it 'パスワード（再入力）が不一致では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass456')
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it '姓が空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Last name can't be blank")
    end
    it '名が空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("First name can't be blank")
    end
    it '姓カナが空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Last name kana can't be blank")
    end
    it '名カナが空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'',last_name_kana:'セイ', birthday:'1930-02-04', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("First name kana can't be blank")
    end
    it '生年月日が空では登録できない' do
      user = User.new(nick_name:'ニックネーム', first_name:'名', last_name:'姓', first_name_kana:'メイ',last_name_kana:'セイ', birthday:'', email:'test@example', password:'pass123', password_confirmation:'pass123')
      user.valid?
      expect(user.errors.full_messages).to include("Birthday date can't be blank")
    end
  end

end
