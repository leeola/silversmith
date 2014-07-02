#
# # Gulpfile
#
gulp          = require 'gulp'
coffee        = require 'gulp-coffee'
insert        = require 'gulp-insert'



paths =
  bin: 'build/bin/silversmith.js'
  coffee: [
    '!node_modules/**'
    '!gulpfile.coffee'
    '**/*.coffee'
  ]


gulp.task 'bin', ['coffee'], ->
  gulp.src paths.bin
    .pipe insert.prepend "#!/usr/bin/env node\n"
    .pipe gulp.dest 'build/bin'



gulp.task 'coffee', ->
  gulp.src paths.coffee
    .pipe coffee()
    .pipe gulp.dest 'build'



gulp.task 'build',   ['bin', 'coffee']
gulp.task 'default', ['build']
