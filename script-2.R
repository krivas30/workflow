library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
	geom_violin(trim = FALSE, alpha = 0.8, color = "white") +
	geom_boxplot(width = 0.12, fill = "white", outlier.shape = NA, color = "#263238") +
	scale_y_log10() +
	scale_fill_brewer(palette = "Set2") +
	labs(
		title = "How Diamond Cut Shapes Price",
		subtitle = "Price distributions across the five cut-quality grades",
		x = "Cut quality",
		y = "Price in US dollars (log scale)",
		fill = "Cut"
	) +
	theme_minimal(base_size = 13) +
	theme(
		panel.grid.minor = element_blank(),
		legend.position = "none",
		plot.title = element_text(face = "bold")
	)

ggsave("diamonds-2.png", diamonds_plot, width = 9, height = 6, dpi = 300)