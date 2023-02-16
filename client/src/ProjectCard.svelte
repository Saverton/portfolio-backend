<script>
  export let title;
  export let description;
  export let links;
  export let tags;

  import HoverDiv from './HoverDiv.svelte';
</script>

<article>
  <h3>{title}</h3>

  <HoverDiv text={description}>
    <img
      src="/src/lib/assets/stress_busters_thumbnail.png"
      alt={`${title} preview`}
    />
  </HoverDiv>

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
</article>

<style lang="sass">
  article
    max-width: 50%
    margin-bottom: 4rem

  img
    max-width: 100%

  div
    &.container
      display: flex
      justify-content: center
      gap: 5%

    &.tag
      background-color: #556
      padding: 0.25rem 0.5rem
      border-radius: 0.25rem
      color: #112

  button
    background-color: transparent
    color: #889
    border: 2px solid #889
    border-radius: 0.25rem
    width: 100%
    padding: 0.5rem 0
    font-family: inherit
    font-weight: bold

    &:hover
      background-color: #334

  a
    flex-basis: 30%
    text-decoration: none
</style>