#!/bin/bash

# 実行確認
echo "⚠️ 注意：このスクリプトはカレントディレクトリ内の 'tmp_' プレフィックスを外します。"
read -p "続行してよろしいですか？ (y/n): " confirm
if [[ "$confirm" != "y" ]]; then
  echo "中止しました。"
  exit 1
fi

# 直下のディレクトリをループ
for dir in tmp_*/; do
  # プレフィックス付きディレクトリが存在しない場合はスキップ
  [[ ! -d "$dir" ]] && continue

  # 後ろのスラッシュを除去
  original="${dir%/}"

  # tmp_ を外した名前
  newname="${original#tmp_}"

  echo "🔄 $original → $newname"
  mv "$original" "$newname"
done

echo "✅ すべてのディレクトリから 'tmp_' プレフィックスを外しました。"
