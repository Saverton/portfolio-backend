<script>
  import { admin } from '../stores';
  import Header from '../Header.svelte';
  import About from '../About.svelte';
  import Portfolio from '../Portfolio.svelte';
  import Contact from '../Contact.svelte';
  import ProjectForm from '../ProjectForm.svelte';
	import Options from '../Options.svelte';
	import { onMount } from 'svelte';

  onMount(async () => {
    const response = await fetch('/api/me');

    if (response.ok) {
      const loginData = await response.json();
      admin.login(loginData);
    }
  });
</script>

<main>
  <Header />
  <About />
  <Portfolio />
  <Contact />
  {#if $admin.id}
  <p>Logged in as {$admin.email}</p>
  <ProjectForm />
  {/if}
  <Options />
</main>