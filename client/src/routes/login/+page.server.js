import { redirect } from '@sveltejs/kit';

export function backToHome() {
  throw redirect(303, '/');
}