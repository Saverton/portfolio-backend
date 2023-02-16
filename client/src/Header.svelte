<script>
	import LangList from "./LangList.svelte";
</script>

<header>
  <h1>Scott Meadows</h1>
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

  <LangList />
</header>

<style lang="sass">
  header
    width: 100%
    text-align: center

  h1
    margin: 0.5rem 0

  h3
    color: #bbb
    margin: 0 0 1rem 0

  nav
    display: flex
    justify-content: space-evenly
    font-size: 1.25rem
    height: 3.5rem

  a
    flex-basis: 33%

  button
    border: none
    background-color: transparent
    height: 100%
    font-family: inherit
    color: #555
    font-size: 1.25rem
    width: 100%
    cursor: pointer

    &:hover
      background-color: #303050
</style>