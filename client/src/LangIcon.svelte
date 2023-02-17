<script>
  import { tweened } from 'svelte/motion';
  import { remToPixels, langListWidth } from './util/langListHelpers.js';
  export let src;
  export let speed;

  const position = tweened(remToPixels(-4), {
    duration: (langListWidth() / speed * 1000)
  });

  position.set(langListWidth() + remToPixels(4));
</script>

<img
  {src}
  alt="language icon"
  style={`left: ${$position}px;`}
/>

<style lang="sass">
  img
    width: 5vw
    min-width: 3rem
    position: absolute
</style>