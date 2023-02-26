<script>
  import { admin } from "./stores";
  const { logout } = admin;

  async function handleLogout() {
    fetch('/api/logout', { method: 'DELETE' });
    logout();
  }
</script>

<nav>
  <a href="/login">login as admin</a>

  {#if $admin.id}
  <button on:click={handleLogout}>logout</button>
  {/if}
</nav>

<style lang="sass">
  nav
    margin-bottom: 1rem

  a
    color: #556
    &:hover
      color: #667

  button
    background-color: transparent
    color: #556
    border: none
    font-family: inherit
    text-decoration: underline
    font-size: 1rem
    cursor: pointer

    &:hover
      color: #667
</style>