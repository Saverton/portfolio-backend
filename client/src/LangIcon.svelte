<script>
  import { tweened } from 'svelte/motion';
  import { remToPixels, langListWidth } from './util/langListHelpers.js';
  export let src;

  const position = tweened(remToPixels(-4), {
    duration: (langListWidth() / 75 * 1000)
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
    width: 4rem
    position: absolute
</style>