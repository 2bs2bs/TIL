# ベースイメージの指定
FROM python:3.11-slim

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係ファイルをコピー
COPY requirements.txt .

# パッケージのインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションコードをコピー
COPY . .

# コンテナ起動時に実行するコマンド
CMD ["python", "main.py"]