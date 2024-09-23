# ベースイメージとしてNode.jsを指定
FROM node:16.8

# 作業ディレクトリを作成
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# TypeScriptをインストール
RUN npm install --save-dev typescript @types/node

# アプリケーションのソースコードをコピー
COPY . .

# TypeScriptをコンパイル
RUN npx tsc 

CMD ["node", "dist/index.js"]