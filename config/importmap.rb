# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "@stimulus-components/rails-nested-form", to: "@stimulus-components--rails-nested-form.js" # @5.0.0
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@3.1.2/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "mapbox-gl-geocoder", to: "https://ga.jspm.io/npm:mapbox-gl-geocoder@2.0.1/lib/index.js"
pin "events", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/events.js"
pin "fuzzy", to: "https://ga.jspm.io/npm:fuzzy@0.1.3/lib/fuzzy.js"
pin "lodash.debounce", to: "https://ga.jspm.io/npm:lodash.debounce@4.0.8/index.js"
pin "mapbox/lib/services/geocoding", to: "https://ga.jspm.io/npm:mapbox@1.0.0-beta5/lib/services/geocoding.js"
pin "rest", to: "https://ga.jspm.io/npm:rest@2.0.0/browser.js"
pin "rest/interceptor", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor.js"
pin "rest/interceptor/defaultRequest", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/defaultRequest.js"
pin "rest/interceptor/errorCode", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/errorCode.js"
pin "rest/interceptor/mime", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/mime.js"
pin "rest/interceptor/params", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/params.js"
pin "rest/interceptor/pathPrefix", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/pathPrefix.js"
pin "rest/interceptor/template", to: "https://ga.jspm.io/npm:rest@2.0.0/interceptor/template.js"
pin "rest/util/base64", to: "https://ga.jspm.io/npm:rest@2.0.0/util/base64.js"
pin "suggestions", to: "https://ga.jspm.io/npm:suggestions@1.7.1/index.js"
pin "xtend", to: "https://ga.jspm.io/npm:xtend@4.0.2/immutable.js"
