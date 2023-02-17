<script>
  import ContactButtons from "./ContactButtons.svelte";
</script>

<header>
  <div>
    <h1>Scott Meadows</h1>

    <ContactButtons />
  </div>

  <div>
    <h3>Full Stack Software Developer</h3>

    <nav>
      <a href="#about">
        <button>about</button>
      </a>
      <a href="#projects">
        <button>projects</button>
      </a>
      <a href="#contact">
        <button>contact</button>
      </a>
    </nav>
  </div>
</header>

<style lang="sass">
  header
    width: 100%
    margin-bottom: 2rem

  h3
    color: #667
    margin: 0

  h1
    margin: 1rem 0 0.5rem 0

  div
    width: 95%
    margin: auto
    display: flex
    justify-content: space-between
    align-items: center

  button
    background-color: transparent
    color: #556
    font: inherit
    font-size: 1.1rem
    border: none
    padding: 0.5rem

    &:hover
      cursor: pointer
      color: #889

  a
    color: #889

  nav
    display: flex
    flex-direction: row
    gap: 1rem
    float: right
</style>