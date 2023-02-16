<script>
  export let text = "Placeholder";
  import { hasHovered } from './stores.js';
  import { fade, fly } from 'svelte/transition';

  let hovering = false;

  function handleEnter() {
    hovering = true;
    hasHovered.set(true);
  }

  function handleLeave() {
    hovering = false;
  }
</script>

<!--
  @component
  When the mouse is over the children of this element, they will be dimmed and 'text' will be displayed.
-->

<div
  class="container"
  on:mouseenter={handleEnter}
  on:mouseleave={handleLeave}  
>
  <slot></slot>
  {#if hovering || !$hasHovered}
    <div class="dimmer" transition:fade={{ duration: 200 }}>
      <p transition:fly={{ y: 50, duration: 400 }}>
        {$hasHovered ? text : "Hover over a project thumbnail to see a description of the project."}
      </p>
    </div>
  {/if}
</div>

<style lang="sass">
  div
    margin: auto

    &.container
      position: relative

    &.dimmer
      width: 100%
      height: 100%
      background-color: #000c
      position: absolute
      top: 0
      left: 0


  p
    padding: 0.5em 1em
    color: lightgray
    font-size: 1.5em
</style>