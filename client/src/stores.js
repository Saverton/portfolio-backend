import { writable } from 'svelte/store';

export const hasHovered = writable(false);

function createAdmin() {
  const noUser = { email: null, id: null };
  const { subscribe, set } = writable(noUser);

  return {
    subscribe,
    login: (data) => set({ email: data.email, id: data.id }),
    logout: () => set(noUser)
  }
}

export const admin = createAdmin();