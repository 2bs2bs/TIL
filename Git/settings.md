## gitが入っているかどうか確認
    ```
    git -v

    git --version
    ```

## git 登録
    ### ユーザー名
    ```
    git config --global user.name "github　ユーザー名"
    ```

    ### メールアドレス
    ```
    git config --global user.email メールアドレス
    ```

    ### それぞれ登録できているかどうか確認
    ```
    git config user.name
    git config user.email
    ```

    ### 登録内容を一括で確認
    ```
    git config --list
    ```

    保存されているのは以下
    `~/.gitconfig`