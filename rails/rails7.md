# Rails7での注意点

記載しないと正常な反応を示さないことがある
例えば、flash_messageが表示されないなど

## render
```
render :new, status: :unprocessable_entity
```

## delete関連

### controller
```
def destroy
  logout
  redirect_to root_path, status: :see_other, notice: 'Logout successful'
end
```

### view
```
<%= link_to 'delete', post_path(post), data: { turbo_method: :delete, turbo_confirm: t('defaults.delete_confirm') } 
```

