% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimredg_tsne.R
\name{dimredg_tsne}
\alias{dimredg_tsne}
\title{Dimensionality reduction through t-SNE, for gene expression assays}
\usage{
dimredg_tsne(
  MAE,
  color,
  shape = NULL,
  k = c("2D", "3D"),
  initial_dims = 30,
  perplexity = 10,
  datatype = c("logcpm", "counts"),
  tsne_cache = NULL
)
}
\arguments{
\item{MAE}{A multi-assay experiment object}

\item{color}{A condition to color data points by e.g. "AGE"}

\item{shape}{A condition to shape data points by e.g. "SEX"}

\item{k}{Plot dimensions e.g. c("2D","3D")}

\item{initial_dims}{The number of dimensions to use in reduction method}

\item{perplexity}{Optimal number of neighbors}

\item{datatype}{Datatype to use e.g. c("logcpm", "counts")}

\item{tsne_cache}{Pass the cached data back into the function}
}
\value{
A list with a plotly object and cached data
}
\description{
Dimensionality reduction through t-SNE, for gene expression assays
}
\examples{
data_dir = system.file("extdata/MAE.rds", package = "animalcules")
toy_data <- readRDS(data_dir)
results <- dimredg_tsne(toy_data,
                       color="AGE",
                       shape="GROUP",
                       k="3D",
                       initial_dims=30,
                       perplexity=10,
                       datatype="logcpm")
results$plot

}
