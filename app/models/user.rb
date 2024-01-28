class User < ApplicationRecord
    has_secure_password #パスワードのハッシュ化、検証、認証に関する機能が利用できるようになる

    #バリデーションルール
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :user_name, presence: true, length: { minimum: 3 }
end
