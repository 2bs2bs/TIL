
---

### 📄 `TIL運用方針.md`

````markdown
# TIL（Today I Learned）運用方針メモ

## 🎯 目的

- 日々の学びやナレッジを素早く記録し、自分用のリファレンスとして活用する
- 学びの過程・試行錯誤・Tipsなど、軽量なアウトプットをためていく場

---

## 📦 リポジトリ構成の方針

### ✅ TILに向いている内容

- 単発的な学びや技術トピック（例: Gitコマンド、Linuxコマンド、テスト技法）
- 軽量な実験コードや補助スクリプト（例: `tree.sh`、`prefix_tmp.sh`）
- 知識の断片的な整理 (`.md` メモ形式が多い)

### 🚫 TILに向いていない内容

- 本格的なアプリ開発
- プロダクションレベルのライブラリやツール
→ 別のリポジトリに格納して管理

---

## 📁 ディレクトリ命名規則

- 原則として **すべて小文字 + スネークケース** で統一する（例: `software_testing`, `trial_production`）
- 可読性・GitHubでの視認性を優先し、命名は簡潔に
- 複数単語はアンダースコアで区切る（`test_techniques`, `vue_components` など）

---

## 📁 ナレッジ vs スクリプトの分離

### `linux/` の構成例（整理後）

```plaintext
linux/
├── commands/         # cp.md, mv.md, curl.md などのナレッジ系
├── scripts/          # 実用シェルスクリプト類（prefix_tmp.sh, remove_tmp_prefix.sh など）
├── vim/              # vim関連ナレッジ
├── 00_linux_command_list.md
````

---

## 🛠 スクリプトの管理

* 頻繁に使うもの → `scripts/` に配置
* スクリプト例：

  * `prefix_tmp.sh`：全ディレクトリに `tmp_` を付ける
  * `remove_tmp_prefix.sh`：`tmp_` を削除して元の名前に戻す

---

## 📚 READMEに索引をつける

```markdown
## 目次（ディレクトリ一覧）

- [javascript](./javascript)
- [python](./python)
- [vue](./vue)
- [linux](./linux)
  - [commands](./linux/commands)
  - [scripts](./linux/scripts)
- [software_testing](./software_testing)
- その他 → [.archive/](./.archive)
```

---

## 📁 使用頻度の低いものの整理

### アーカイブ方針

| 対象          | 処理                                    |
| ----------- | ------------------------------------- |
| もう使わない      | `.archive/`, `legacy/` に退避            |
| たまに見るかも     | `.z_unused/` や `inactive_topics/` へ移動 |
| 今も使っているが低頻度 | READMEからリンクするなど工夫                     |

### `.archive/` 例

```plaintext
.archive/
├── java/
├── runteq_report/
├── trial_production/
```

---

## ✅ 最終まとめ

* TIL は「学びの苗床」：雑にどんどん書いてOK
* 本番用コードは専用リポジトリに切り出す
* スクリプト・ナレッジはディレクトリ分離で迷わない構成に
* 表示の最適化（README索引・アーカイブ）で未来の自分を助ける

```

---
