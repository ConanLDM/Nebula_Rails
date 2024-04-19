# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.turbo.min.js"
pin "stimulus-use" # @0.52.2
pin "@stimulus-components/popover", to: "@stimulus-components--popover.js" # @7.0.0
pin "@stimulus-components/reveal", to: "@stimulus-components--reveal.js" # @5.0.0
