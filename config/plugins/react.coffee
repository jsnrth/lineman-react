module.exports = (lineman) ->
  app = lineman.config.application

  files:
    react:
      cwd: "app/js"
      src: "**/*.jsx"
      dest: "generated/jsx/"
      ext: ".js"

  config:
    loadNpmTasks: lineman.config.application.loadNpmTasks.concat('grunt-react')

    prependTasks:
      common: lineman.config.application.prependTasks.common.concat(["react"])

    concat_sourcemap:
      js:
        src: app.concat_sourcemap.js.src.concat("<%= files.react.dest %>/**/*<%= files.react.ext %>")

    react:
      files:
        expand: true
        cwd: "<%= files.react.cwd %>"
        src: "<%= files.react.src %>"
        dest: "<%= files.react.dest %>"
        ext: "<%= files.react.ext %>"

    watch:
      react:
        files: "<%= files.react.cwd %>/<%= files.react.src %>"
        tasks: ["react", "concat_sourcemap:js"]
