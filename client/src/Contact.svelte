<script>
  import ContactButtons from "./ContactButtons.svelte";
</script>

<section id="contact">
  <div class="banner">
    <h1>Let's Build Something Great</h1>
  </div>

  <article>
    <h2>Scott Meadows</h2>

    <p>
      Looking for a passionate, eager to learn, and skilled developer to join your team?
    </p>

    <p>
      Reach me through any of the following:
    </p>
    
    <div class="container">
      <ContactButtons />
    </div>

    <p class="small">
      south east/central PA
      <br />
      (610) 420 0893
      <br />
      scottmeadows04@gmail.com
    </p>
  </article>
</section>

<style lang="sass">
  section
    min-height: 100vh
    margin-bottom: 0

  div.banner
    width: 100vw
    padding: 2.5rem 0
    text-align: center
    background-color: #994
    color: black
    letter-spacing: 0.25rem

  h1
    font-size: 3rem
    margin: 0

  article
    width: 80%
    margin: 3rem auto
    text-align: center

  p
    color: #889
    width: 75%
    margin: 1rem auto
    font-size: 1.25rem

    &.small
      font-size: 1rem

  div
    &.container
      width: fit-content
      margin: 2rem auto
      font-size: 1.5rem
</style>