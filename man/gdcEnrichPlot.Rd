% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gdcEnrichmentPlots.R
\name{gdcEnrichPlot}
\alias{gdcEnrichPlot}
\title{Plots for enrichment analysis}
\usage{
gdcEnrichPlot(enrichment, type = "bar", category = "KEGG", num.terms = 10,
    bar.color = "black")
}
\arguments{
\item{enrichment}{a dataframe generated from 
\code{\link{gdcEnrichAnalysis}}}

\item{type}{type of the plot, should be one of \code{'bar'} 
and \code{'bubble'}}

\item{category}{which category should be plotted. Possible values are 
\code{'KEGG'}, \code{'GO'}, \code{'GO_BP'}, \code{'GO_CC'}, 
\code{'GO_MF'}, and \code{'DO'}.
Default is \code{'KEGG'}}

\item{num.terms}{number of terms to be plotted. Default is \code{10}}

\item{bar.color}{color of the bar plot. Default is \code{'black'}}
}
\value{
A bar plot or bubble plot of functional enrichment analysis
}
\description{
Bar plot and bubble plot for GO, KEGG, 
    and DO functional enrichment analysis
}
\examples{
####### Enrichment plots #######
enrichOutput<-data.frame(Terms=c('hsa05414~Dilated cardiomyopathy (DCM)',
                                'hsa04510~Focal adhesion',
                                'hsa05205~Proteoglycans in cancer'),
                            Category=rep('KEGG',3), 
                            FDR=c(0.001,0.002,0.003))
gdcEnrichPlot(enrichment=enrichOutput, type='bar', category='KEGG')
}
\author{
Ruidong Li and Han Qu
}
