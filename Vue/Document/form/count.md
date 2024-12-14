# count up 処理

1. [HTML処理](#html側の処理)
1. [scipt処理](#script側の処理)

## HTML側の処理
```
<div>
  <p>現在のカウント{{ count }}</p>
  <button @click="onCountUp">Count Up!!</button>
</div>
```

## script側の処理
```
<scirpt setup lang="ts">
const count = ref(0);
function onCountUp(): void{
  count.value++;
}
</script>
```