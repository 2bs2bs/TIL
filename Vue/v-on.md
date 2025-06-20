# v-on 
```
v-on:イベント名="イベント発生時に実行するメソッド名"

省略形
@イベント名="イベント発生時に実行するメソッド名"
```

```
v-on:click="onButtonClick"

~~~
<script>
const count = ref(0);
function onButtonClick(): number { count++ };
</script>
```