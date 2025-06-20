#!/bin/bash

# 処理対象ディレクトリ
TARGET_DIR="./"

# 安全のため、対象がGit管理下かチェック
if [ ! -d ".git" ]; then
  echo "このディレクトリはGitリポジトリではありません。中止します。"
  exit 1
fi

echo "ディレクトリ名をsnake_caseに統一してリネーム開始..."

# すべてのディレクトリを走査
for dir in */; do
  # 最後のスラッシュを削除
  original_name="${dir%/}"

  # 無視したいディレクトリはここに追加（例: .git など）
  if [[ "$original_name" == ".git" || "$original_name" == "." ]]; then
    continue
  fi

  # snake_case化（大文字→小文字 / 空白や記号→アンダースコア）
  snake_case_name=$(echo "$original_name" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/_/g' | sed -E 's/^_+|_+$//g')

  # 変更がある場合のみ実行
  if [[ "$original_name" != "$snake_case_name" ]]; then
    temp_name="${snake_case_name}_tmp"

    echo "🌀 Renaming: $original_name → $snake_case_name"

    # ステップ① 一時名に変更（Gitがrenameを検知しない場合の対策）
    git mv "$original_name" "$temp_name"

    # ステップ② 正式なsnake_case名に変更
    git mv "$temp_name" "$snake_case_name"
  fi
done

echo "✅ git add & commit & push を実行します..."
git add -A
git commit -m "Rename directories to snake_case"
git push

echo "🎉 完了！"
