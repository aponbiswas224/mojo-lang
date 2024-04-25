from python import Python

def main():
	let np=Python.import_module('numpy')
	let plt=Python.import_module('matplotlib.pyplot')
	def mandelbrot(c, max_iter):
			z = 0
			n = 0
			while abs(z) <= 2 and n < max_iter:
					z = z*z + c
					n += 1
			return n

	def mandelbrot_set(width, height, xmin, xmax, ymin, ymax, max_iter):
			x = np.linspace(xmin, xmax, width)
			y = np.linspace(ymin, ymax, height)
			mandelbrot_image = np.zeros((height, width))

			for i in range(height):
					for j in range(width):
							mandelbrot_image[i, j] = mandelbrot(x[j] + 1j*y[i], max_iter)

			return mandelbrot_image

	width, height = 800, 800
	xmin, xmax = -2, 2
	ymin, ymax = -2, 2
	max_iter = 100

	mandelbrot_image = mandelbrot_set(width, height, xmin, xmax, ymin, ymax, max_iter)

	plt.imshow(mandelbrot_image, extent=(xmin, xmax, ymin, ymax))
	plt.colorbar()
	plt.title("Mandelbrot Set")
	plt.xlabel("Re(c)")
	plt.ylabel("Im(c)")
	plt.savefig("mandelbrot_py.png")
