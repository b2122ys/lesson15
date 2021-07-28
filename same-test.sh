#!/bin/bash
# テスト1正常動作の確認
# 同じ場合
echo "same" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh a a > /tmp/$$-result # 実際の出⼒
diff /tmp/$$-ans /tmp/$$-result || exit 1 # 出⼒を⽐較し、失敗したらエラー終了

echo "same" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh 1000 1000 > /tmp/$$-result # 実際の出⼒
diff /tmp/$$-ans /tmp/$$-result || exit 1 # 出⼒を⽐較し、失敗したらエラー終了

# 違う場合
echo "not same" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh a b > /tmp/$$-result # 実際の出⼒
diff /tmp/$$-ans /tmp/$$-result || exit 1 # 出⼒を⽐較し、失敗したらエラー終了

# 後始末
rm /tmp/$$-*

echo "処理は正常に終了しました"
