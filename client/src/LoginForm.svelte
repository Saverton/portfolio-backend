<script>
  import { admin } from './stores';
	import { goto } from '$app/navigation';

  const { login } = admin;

  let email = '';
  let password = '';

  async function handleSubmit(event) {
    event.preventDefault();

    const configObject = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        email, password
      })
    };

    const response = await fetch('/api/login', configObject);

    if (response.ok) {
      console.log('login successful');
      login(await response.json());
      // Return to home page
      goto('/', { replaceState: true });
    } else {
      console.error('login failed');
    }
  }
</script>

<form on:submit={handleSubmit}>
  <label for="email">Email</label>
  <input
    type="email"
    id="email"
    placeholder="email"
    bind:value={email} />
  <br />

  <label for="password">Password</label>
  <input
    type="password"
    id="password"
    placeholder="password"
    bind:value={password} />
  <br />

  <button type="submit">Login</button>
</form>

<style lang="sass">
  label
    display: block

  input
    margin-bottom: 1rem

  button
    background-color: #445
    border: none
    color: white
    padding: 0.5rem
    width: 100%
    cursor: pointer

    &:hover
      background-color: #778
</style>