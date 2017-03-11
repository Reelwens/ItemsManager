/*
This gulpfile :
- Minimify images
- Concat CSS files
- Add autoprefixers
- Minimify CSS files
- Concat JS files
*/

/*
 * Configurations
 */

var config = {
    'root': 'dist/',
    'src' : 'src/',
    'dist': 'dist/'
}


// Dependencies
var gulp          = require( 'gulp' ),
    gulp_css_nano = require( 'gulp-cssnano' ),
    gulp_rename   = require( 'gulp-rename' ),
    plumber       = require( 'gulp-plumber' ),
    sourcemaps    = require( 'gulp-sourcemaps' ),
    autoprefixer  = require( 'gulp-autoprefixer' ),
    gulp_concat   = require( 'gulp-concat' ),
    imagemin      = require('gulp-imagemin'),
    gulp_uglify   = require( 'gulp-uglify' );



// Connect
gulp.task('connect', function() {
    connect.server({
        root: 'dist',
        livereload: true
    });
});


// PHP
gulp.task('php', () => {
    return gulp.src( [
        './src/**/*.php'
        ] )
        .pipe(gulp.dest('./dist/'));
})


// Images
gulp.task('img', () => {
    return gulp.src( [
        './src/img/**/**'
        ] )
        .pipe(imagemin())
        .pipe(gulp.dest('./dist/img/'));
})


// CSS task
gulp.task( 'css', function()
{
    return gulp.src( './src/css/*.css' )        // Get CSS files
        .pipe( gulp_concat( 'style.min.css' ) ) // Concat in one file
        .pipe(sourcemaps.init())
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(sourcemaps.write())
        .pipe( gulp_css_nano() )                // Minify it
        .pipe( gulp.dest( './dist/css/' ) );    // Put it in folder
} );


// JS task
gulp.task( 'js', function()
{
    return gulp.src( ['./src/js/*.js'] )        // Get JS files
        .pipe( gulp_concat( 'script.js' ) )     // Concat in one file
        //.pipe( gulp_uglify() )                // Minify them (problem with ES6)
        .pipe( gulp.dest( './dist/js/' ) );     // Put it in folder
} );



// Watch task
gulp.task( 'watch', function()
{
    gulp.watch( './src/css/**', [ 'css' ] );
    gulp.watch( './src/js/**', [ 'js' ] );
    gulp.watch( './src/**/*.php', [ 'php' ] );
    gulp.watch( './src/img/**', [ 'img' ] );
} );



gulp.task( 'default', [ 'php', 'css', 'js', 'img', 'watch' ] );