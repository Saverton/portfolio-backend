<script>
  import { onDestroy, onMount } from 'svelte';
  import { languageImages } from './test-data/languageImages.js';
  import { docIsHidden } from './util/langListHelpers.js';
  import LangIcon from './LangIcon.svelte';

  const SPEED = 50;

  let languageQueue = [];
  let nextIndex = 0;
  let list;
  let listWidth;
  let interval;

  $: {
    updateIntervalTimer((Math.max(listWidth, 1000) / SPEED * 1000) / 12);
    languageQueue = [];
  }

  updateIntervalTimer();

  function updateIntervalTimer(time = 1000) {
    clearInterval(interval);

    interval = setInterval(() => {
      if (docIsHidden()) {
        languageQueue = [];
        return;
      }

      const languageIcon = {
        url: languageImages[nextIndex % languageImages.length],
        id: nextIndex
      };

      if (languageQueue.length === languageImages.length)
        languageQueue = [...languageQueue.slice(1), languageIcon];
      else
        languageQueue = [...languageQueue, languageIcon];
      nextIndex += 1;
    }, time);
  }

  onDestroy(() => clearInterval(interval));

  onMount(() => {
    const resizeObserver = new ResizeObserver(entries => {
      const entry = entries.at(0);

      listWidth = entry.contentBoxSize[0].inlineSize;
    });

    resizeObserver.observe(list);

    return () => resizeObserver.unobserve(list);
  });
</script>

<figure>
  <div class="border" />
  <ul id="lang-list" bind:this={list}>
    {#each languageQueue as icon (icon.id)}
      <LangIcon src={icon.url} speed={SPEED} />
    {/each}
  </ul>
  <div class="border" />
</figure>

<style lang="sass">
  figure
    display: flex
    justify-content: center
    align-items: center
    margin-bottom: 0

  ul
    display: flex
    position: relative
    height: 5vw
    min-height: 3rem
    overflow-x: hidden
    min-width: 80%
    max-width: 80%

  div
    &.border
      width: 10px
      height: 7vw
      min-height: 4rem
      background-color: #445
</style>