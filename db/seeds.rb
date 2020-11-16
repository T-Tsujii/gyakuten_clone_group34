EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = "admin@example.com"
ADMIN_PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end


# テストユーザーが存在しないときだけ作成
AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |adminuser|
  adminuser.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

