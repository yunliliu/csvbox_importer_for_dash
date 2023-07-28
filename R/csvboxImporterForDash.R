# AUTO GENERATED FILE - DO NOT EDIT

#' @export
csvboxImporterForDash <- function(id=NULL, data=NULL, licenseKey=NULL, result=NULL, userId=NULL) {
    
    props <- list(id=id, data=data, licenseKey=licenseKey, result=result, userId=userId)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CsvboxImporterForDash',
        namespace = 'csvbox_importer_for_dash',
        propNames = c('id', 'data', 'licenseKey', 'result', 'userId'),
        package = 'csvboxImporterForDash'
        )

    structure(component, class = c('dash_component', 'list'))
}
