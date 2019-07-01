import setuptools
with open("README.md", "r") as fh:
    long_description = fh.read()
setuptools.setup(
     name='dflowutil',  
     version='0.1',
     scripts=['dflowutil.py'] ,
     author="Rudy Schueder",
     author_email="rudy.schueder@gmail.com",
     description="Utilities for Delft3D Flow Flexible Mesh",
     long_description=long_description,
   long_description_content_type="text/markdown",
     url="https://github.com/RSchueder/dflowutil",
     packages=setuptools.find_packages(),
     classifiers=[
         "Programming Language :: Python :: 3",
         "License :: OSI Approved :: MIT License",
         "Operating System :: OS Independent",
     ],
 )