from src.stl_png.transformer import stl2pngs
from src.stl_png.triangles_transformer import load_triangles_from_stl
from src.matrix2png_saver import transform_results

stl_bone_path = '../data/stls/001//Bone.stl'

triangles = load_triangles_from_stl(stl_bone_path)
images = stl2pngs(triangles, 12)
transform_results(images, 'stl/')
