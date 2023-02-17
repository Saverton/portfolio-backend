<script>
	import LangList from "./LangList.svelte";
</script>

<section id="about">
  <div>
    <LangList />
  </div>
  
  <article>
    <img
      src="https://www.wolflair.com/wp-content/uploads/2017/01/placeholder.jpg"
      alt="Scott Meadows, Portrait"
      title="Scott Meadows"
    />
  
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
      labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
      laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
      in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
      cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </article>
</section>

<style lang="sass">
  div
    width: 100%

  section
    min-height: 50vh
  
  article
    margin-top: 1.5rem
    display: flex
    gap: 1rem
    justify-content: center
    align-items: start

  img
    max-width: 35%
    object-fit: contain

  p
    margin: 0
    max-width: 40%
    font-size: 1.25em
</style>