import Reveal from '@stimulus-components/reveal'

export default class extends Reveal {
  connect() {
    super.connect()
    console.log('Do what you want here.')
  }
}
