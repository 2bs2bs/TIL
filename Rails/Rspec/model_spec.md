# Modelのテストの書き方

## テストの作成方法
	```
	rails g rspec:model テストするモデル名
	```
### テストのグループ化
  ```
  describe 'クラス名やメソッドの処理内容などを記載する' do
    context '状況や条件などを記載する' do
      it 'テストケースの説明' do
      end
    end
  end
  ```

### 検証メソッド
  値を検証するためにexpectメソッドを利用する

  ```
  expect(テスト対象の値).to マッチャー(期待する値)
  ```

### マッチャー
  Rspecのマッチャーはテストコード内で期待される値と実際の値を比較するために使用する

  よく使われるマッチャー
  - eq</br>
    2つの値が等しいかどうか
    ```
    expect(テスト対象の値).to eq(期待する値)
    ```
  - be</br>
    真偽値のtrue/falseやオブジェクトが特定の条件を満たすかどうかを判定する
    ```
    expect(テスト対象の値).to be true     # trueであるかどうか
    expect(テスト対象の値).to be fals     # falseであるかどうか
    expect(テスト対象の値).to be_nil      # nilであるかどうか
    ```
  - be_empty
    配列や文字列、ハッシュ値が空であるかどうかを検証する
    要素や文字列、キーとペアが存在しない状態を指す
    ```
      expect(テスト対象の配列[]).to be_empty
      expect(テスト対象の文字列).to be_empty
      expect(テスト対象のハッシュ{}).to be_empty
    ```
  - be_valid
    オブジェクトがバリデーションに通るかどうかを検証
    主にActive Recordモデルのテストで使用される
    オブジェクトがバリデーションに通った際にテストが成功する
    `be_empty`と組み合わせてエラーメッセージが空であることを検証すれば更に信憑性の高いテストになる。
    ```
    expect(テスト対象のオブジェクト).to be_valid
    ```
    ```
    expect(テスト対象のオブジェクト).to be_valid
    expect(テスト対象のオブジェクトのエラーの配列).to be_empty
    ```
  - be_invalid
    be_validの反対でバリデーションに通らない状態であることでテストが通るようになっている。
    ```
    expect(テスト対象のオブジェクト).to be_invalid
    ```

