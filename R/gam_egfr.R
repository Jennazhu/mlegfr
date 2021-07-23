#' estimate Glomerular Filtration Rate (GFR) using the GAM Scr equation
#'
#' @param data  A data frame for GFR estimation. It should contain following 3 variables: age (years), serum creatinine (mg/dL)
#'              and a male indicator (0 or 1), which need to be named exactly as age, scr and male. age and scr should be numeric and
#'              male should be saved as a factor (important!!!).
#'              Default is an example data and users could parse in their own data to get estimated GFR.
#'
#' @param modelfit A model object. Default argument is the GAM Scr equation, a model fitted using Generalized additive model by the package developer.
#'                 This argument does not need any input from users.
#'
#' @return a vector (estimation of GFR)
#' @export
#'
#' @importFrom stats predict
#' @importFrom mgcv gam
#' @importFrom magrittr "%>%"
#' @importFrom dplyr mutate
#' @importFrom stats qt
#'
#' @examples
#' library(mgcv)
#' user_data <- data.frame(age = c(60, 70, 80),
#'                        scr = c(1.1, 1.2, 2.3),
#'                        male = c(0, 1 , 1)) %>%
#'                        dplyr::mutate(male = as.factor(male))
#' gam_egfr(data = user_data)
#'
gam_egfr <- function(data= example_data, modelfit= gam1) {
            return(exp(predict(modelfit, data, type="response")))
            }
#'
#'

