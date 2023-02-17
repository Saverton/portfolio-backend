<script>
  import Fa from 'svelte-fa';
  import { faPhone, faEnvelope } from '@fortawesome/free-solid-svg-icons';
  import { faGithub, faLinkedin } from '@fortawesome/free-brands-svg-icons';
</script>

<nav>
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
  <a href="https://www.linkedin.com/in/scottmeadows-se/" target="_blank" rel="noreferrer">
    <Fa icon={faLinkedin} />
  </a>
</nav>

<style lang="sass">
  nav
    display: flex
    flex-direction: row
    gap: 1rem
    margin: 1rem 0
    font-size: inherit

  a
    color: #889

    &:hover
      color: white
</style>