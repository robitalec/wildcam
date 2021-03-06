#' Scale in region of interest
#'
#' Scale a layer in a region of interest to optionally compare locations with [eval_pt()] and [eval_buffer()], and select locations with [select_ct()] based off of relative values instead of absolute values.
#'
#' @inheritParams eval_pt
#' @param roi any object which can be passed to extent including `sf`, `Spatial`, `Raster` objects and 2x2 matrices.
#'
#' @return `Raster` layer, cropped to extent of provided 'roi', and center scaled.
#'
#' @seealso [raster::scale()]
#'
#' @export
#'
#' @examples
#' # Load packages
#' library(raster)
#'
#' # Load data
#' data(densitygrid)
#' data(dem)
#'
#' # Scale elevation layer in extent of density grid
#' demScaled <- scale_layer(layer = dem, roi = densitygrid)
#'
#' # Plot
#' plot(dem)
#' plot(demScaled)
scale_layer <- function(layer = NULL, roi = NULL) {
	if (is.null(layer) | !inherits(layer, 'Raster')) {
		stop('layer must be provided and expected type is raster.')
	}

	if (is.null(roi)) {
		stop('roi must be provided.')
	}

	# add check for compatible with extent

	return(
		raster::scale(raster::crop(layer, roi))
	)
}