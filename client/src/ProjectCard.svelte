<script>
  export let title;
  export let description;
  export let links;
  export let tags;
  export let reverse;
  export let thumbnail_url;

  import { fly } from 'svelte/transition';
  import { inview } from 'svelte-inview';
  import HoverDiv from './HoverDiv.svelte';

  let isInView;
</script>

<div
  class="wrapper"
  use:inview={{ unobserveOnEnter: true, rootMargin: '-15%' }}
  on:change={({detail}) => {
    isInView = detail.inView;
  }}
>
  {#if isInView}
    <article
      class:reverse
      transition:fly="{{ x: (reverse ? 400 : -400), duration: 1500 }}"
    >
      <div class="background" />

      <div class="image">
        <HoverDiv text={description}>
          <img
            src={thumbnail_url || "/src/lib/assets/stress_busters_thumbnail.png"}
            alt={`${title} preview`}
          />
        </HoverDiv>
      </div>

      <!-- project information/details -->
      <div class="details">
        <h3>{title}</h3>
      
        <br />
      
        <!-- Project tags -->
        <div class="container">
          {#each tags as tag}
            <div class="tag">
              {tag}
            </div>
          {/each}
        </div>
      
        <br />
      
        <!-- Project Links -->
        <div class="container">
          {#each links as {source, url}}
            <a href={url} target="_blank" rel="noreferrer">
              <button>
                {source}
              </button>
            </a>
          {/each}
        </div>
      </div>
    </article>
  {:else}
    <article></article>
  {/if}
</div>

<style lang="sass">
  article
    position: relative
    min-width: 75%
    max-width: 75%
    margin: 2rem auto
    display: flex
    gap: 1rem

    &.reverse
      flex-direction: row-reverse

  img
    max-width: 100%

  div
    &.wrapper
      width: 100%
      margin: 1.5rem 0

    &.container
      display: flex
      flex-wrap: wrap
      gap: 0.5rem

    &.tag
      background-color: #556
      padding: 0.25rem 0.5rem
      border-radius: 0.25rem
      color: #ddf

    &.details
      max-width: 25%
      min-width: 25%

    &.image
      max-width: 70%

    &.background
      position: absolute
      right: -1rem
      top: -5%
      background-color: #334
      width: 150%
      height: 110%
      z-index: -1
      border-radius: 1rem

      .reverse &
        left: -1rem

  button
    background-color: transparent
    color: #889
    border: 2px solid #889
    border-radius: 0.25rem
    width: 100%
    padding: 0.5rem 0
    font-family: inherit
    font-weight: bold
    cursor: pointer

    &:hover
      background-color: #334

  a
    flex-basis: 30%
    text-decoration: none
</style>