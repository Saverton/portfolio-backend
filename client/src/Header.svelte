<script>
	import LangList from "./LangList.svelte";
  import Fa from 'svelte-fa';
  import { faPhone, faEnvelope } from '@fortawesome/free-solid-svg-icons';
  import { faGithub, faLinkedin } from '@fortawesome/free-brands-svg-icons';
</script>

<header>
  <div>
    <h1>Scott Meadows</h1>

    <nav id="contact">
      <!-- Contact links -->
      <a href="tel:6104200893">
        <Fa icon={faPhone} />
      </a>
      <a href="mailto:scottmeadows04@gmail.com">
        <Fa icon={faEnvelope} />
      </a>
      <a href="https://github.com/Saverton" target="_blank" rel="noreferrer">
        <Fa icon={faGithub} />
      </a>
      <a href="https://linkedin.com/scottmeadows-se" target="_blank" rel="noreferrer">
        <Fa icon={faLinkedin} />
      </a>
    </nav>
  </div>

  <div>
    <h3>Full Stack Software Developer</h3>

    <nav id="contents">
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

  <LangList />
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