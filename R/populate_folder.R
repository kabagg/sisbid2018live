#' Autopopulates a New Analysis with Common Files
#'
#' This function sets up the basic directory
#' structure I use in most of my analyses. By
#' default, this will produce folders for
#' R/, data/, and results/.
#'
#' @param list_of_dirs A character vector of
#'   the names of folders to be created. Defaults
#'   to c("R", "data", "results")
#' @return Nothing explicit; this function is
#'   called for its side effects.
#' @examples
#' populate_folder()
#' @import here
#' @export
populate_folder <-
  function(list_of_dirs = c("R", "data", "results")){

    for(i1 in 1:length(list_of_dirs)){
      if(!(dir.exists(here::here(list_of_dirs[i1])))){
        dir.create(here::here(list_of_dirs[i1]))
      }
    }

  }
