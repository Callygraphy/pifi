// Please note: dragging and dropping images only works for
// certain browsers when serving this script online:
var path, position, max;
var flag = project.importSVG(document.getElementById('Flag'));
flag.fitBounds(view.bounds);
flag.scale(0.8);
flag.blendMode = 'overlay'
flag.fillColor = 'black'
flag.position = view.center;


function onInput(event) {
    event.preventDefault();

    var file = document.querySelector('input[type=file]').files[0];
    var reader = new FileReader();

    reader.onload = function ( event ) {
        var image = document.createElement('img');
        image.onload = function () {

            raster = new Raster(image);
//             raster.blendMode = 'luminosity'
              project.activeLayer.insertChild(0, raster)
              raster.fitBounds(view.bounds, true)
              raster.position = view.center;
              var background = new Path.Rectangle(view.bounds);
              background.fillColor = 'black';
              background.blendMode = "saturation"
              paper.view.update()

        };
        image.src = event.target.result;
    };
    reader.readAsDataURL(file);
}


 document.addEventListener('change', onInput, false);
