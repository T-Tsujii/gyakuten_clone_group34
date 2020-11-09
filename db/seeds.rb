EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

ADMINEMAIL = 'admin@example.com'
ADMINPASSWORD = 'password'
PASSWORDCONFIRMATION = 'password'

# テストユーザーが存在しないときだけ作成
AdminUser.find_or_create_by!(email: 'admin@example.com') do |adminuser|
  adminuser.password = PASSWORD
  adminuser.password_confirmation = PASSWORDCONFIRMATION
  puts 'ユーザーの初期データインポートに成功しました。'
end

