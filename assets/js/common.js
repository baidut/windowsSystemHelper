/*!
 * MIT License
 * https://github.com/baidut/PCT001/

see http://stackoverflow.com/questions/4634644/how-to-include-js-file-in-another-js-file
see http://stackoverflow.com/questions/950087/include-a-javascript-file-in-another-javascript-file
see http://stackoverflow.com/questions/11803215/how-to-include-multiple-js-files-using-jquery-getscript-method
*/

// includes

$.getMultiScripts = function(arr, path) {
    var _arr = $.map(arr, function(scr) {
        return $.getScript( (path||"") + scr );
    });

    _arr.push($.Deferred(function( deferred ){
        $( deferred.resolve );
    }));

    return $.when.apply($, _arr);
}

$.getMultiScripts(["bootstrap.min.js", "bootstrap-switch.js", "core.js"], 'assets/js/').done(function() {
    // all scripts loaded

	// bootstrap-switch
	$("[name='my-checkbox']").bootstrapSwitch();
});