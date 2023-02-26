<script>
  let tags = [];
  let links = [];
  let title = '';
  let description = '';

  function handleSubmit(event) {
    event.preventDefault();
    postProject();
  }

  /**
   * Posts the project data to the API, logs info about the request status.
   */
  async function postProject() {
    const configObject = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        title,
        description,
        tags,
        links
      })
    };

    const response = await fetch('/api/projects', configObject);
    if (response.ok) {
      console.log('Upload successful!');
    } else {
      console.error('Upload failed!');
      const errors = await response.json();
      console.log(errors);
    }
  }
</script>

<form on:submit={handleSubmit}>
  <label for="title">Project Title</label>
  <input
    type="text"
    placeholder="project title"
    id="title"
    bind:value={title} />
  <br />

  <label for="description">Project Description</label>
  <textarea
    name="description"
    id="description"
    placeholder="project description"
    bind:value={description} />
  <br />

  <label for="thumbnail">Project Thumbnail</label>
  <input
    type="file"
    name="thumbnail"
    id="thumbnail" />
  <br/>

  <!-- Add project tags -->
  {#each tags as tag, i}
  <fieldset>
    <h3>Tag {i + 1}</h3>

    <label for={`tag-${i}`}>Tag Name</label>
    <input
      type="text"
      id={`tag-${i}`}
      bind:value={tag} />
    <br />
  </fieldset>
  {/each}

  <button
    type="button"
    on:click={() => tags = [...tags, '']}>
    Add Tag
  </button>

  <!-- Add project links -->
  {#each links as link, i}
  <fieldset>
    <h3>Link {i + 1}</h3>

    <label for={`source-${i}`}>Link source</label>
    <input
      type="text"
      id={`source-${i}`}
      bind:value={link.source} />
    <br />

    <label for={`url-${i}`}>Link url</label>
    <input
      type="text"
      id={`url-${i}`}
      bind:value={link.url} />
    <br />

  </fieldset>
  {/each}

  <button
    type="button"
    on:click={() => links = [...links, {source: '', url: ''}]}>
    Add Link
  </button>

  <button>Submit</button>

</form>

<style lang="sass">
  form
    margin: 1rem 0
  
  label
    display: block

  input
    margin-bottom: 1rem

  fieldset
    margin-bottom: 0.5rem
  
  button
    display: block
    background-color: #445
    color: white
    border: none
    padding: 0.5rem
    margin: 0.25rem
    cursor: pointer

    &:hover
      background-color: #667
</style>