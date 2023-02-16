<script>
  import { contacts } from './test-data/contacts.js';
</script>

<section id="contact">
  <div class="banner">
    <h1>Let's Work Together</h1>
  </div>

  <nav>
    {#each contacts as { name, link }}
      <a
        href={link}
        target="_blank"
        rel="noreferrer"
      >
        <button>
          {name}
        </button>
      </a>
    {/each}
  </nav>
</section>

<style lang="sass">
  div.banner
    width: 100%
    padding: 1.5rem 0
    text-align: center
    background-color: #000010
    color: white
    letter-spacing: 0.25rem

  h1
    font-size: 4em
    margin: 0

  nav
    display: flex
    flex-direction: column
    gap: 10px
    margin: 1em auto
    width: 50%

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