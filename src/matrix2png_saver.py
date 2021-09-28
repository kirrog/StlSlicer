import sys

import numpy as np
import matplotlib.pyplot as plt

res_path = '../data/'


def green2rgb(image):
    res = np.zeros((image.shape[0], image.shape[1], 3))
    for i in range(image.shape[0]):
        for j in range(image.shape[1]):
            if image[i][j] > 0.15:
                res[i][j][1] = image[i][j]
    return res


def check_results(results):
    min_v = 1
    max_v = 0
    for image in results:
        min_v = min(min_v, image.min())
        max_v = max(max_v, image.max())
    print('min: ' + str(min_v) + ' max: ' + str(max_v))


def transform_results(results, dir):
    for image, i in zip(results, range(len(results))):
        res = green2rgb(image)
        plt.imsave((res_path + dir + '{:04d}'.format(i) + '.png'), res)
        sys.stdout.write("\rImage %i transformed" % i)
