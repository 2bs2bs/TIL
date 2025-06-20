#!/bin/bash

# 実行場所の確認
echo "⚠️ 注意：このスクリプトはカレントディレクトリ内のすべてのディレクトリに 'tmp_' を付けます。"
read -p "続行してよろしいですか？ (y/n): " confirm
if [[ "$confirm" != "y" ]]; then
  echo "中止しました。"
  exit 1
fi

# ディレクトリを対象にループ
for dir in */; do
  dirname="${dir%/}"

  # 除外対象
  if [[ "$dirname" == ".git" || "$dirname" == tmp_* ]]; then
    continue
  fi

  # 新しい名前
  newname="tmp_$dirname"

  echo "🔄 $dirname → $newname"
  mv "$dirname" "$newname"
done

echo "✅ 全ディレクトリに 'tmp_' を付けました。"
