
from pandas import read_hdf
import numpy as np
from pandas import HDFStore, DataFrame# create (or open) an hdf5 file and opens in append mode
import h5py




hdf5_file_name = "/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5"
item_name = "/Taxa"
file = h5py.File(hdf5_file_name, 'r')
item = file[item_name]

t0 = file["/Taxa/"]
list_of_item_names = t0.items()
print list_of_item_names[1:10]

topitem = file["/"]
dt = file["/__DATA_TYPES__"]
dt0 = dt.items()


geno = file["/Genotypes/6102-31:250007332"]
list_of_item_names = geno.items()
print list_of_item_names

my_data = geno['calls'].value

pos = file["/Positions"]
pos["ReferenceAlleles"].value
pos["AncestralAlleles"].value



hdf =HDFStore('storage.h5')
hdf = read_hdf('', "Taxa")

hdf = HDFStore('ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5')


file    = h5py.File('/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5', 'r')
dataset = file['/Taxa']
arr1ev  = dataset[eventNumber]
file.close()
 
print 'arr1ev.shape =', arr1ev.shape
print 'arr1ev =\n',     arr1ev


#!/usr/bin/env python
import h5py
import sys
 
def print_hdf5_file_structure(file_name) :
    """Prints the HDF5 file structure"""
    file = h5py.File(file_name, 'r') # open read-only
    item = file #["/Configure:0000/Run:0000"]
    print_hdf5_item_structure(item)
    file.close()
 
def print_hdf5_item_structure(g, offset='    ') :
    """Prints the input file/group/dataset (g) name and begin iterations on its content"""
    if   isinstance(g,h5py.File) :
        print g.file, '(File)', g.name
 
    elif isinstance(g,h5py.Dataset) :
        print '(Dataset)', g.name, '    len =', g.shape #, g.dtype
 
    elif isinstance(g,h5py.Group) :
        print '(Group)', g.name
 
    else :
        print 'WORNING: UNKNOWN ITEM IN HDF5 FILE', g.name
        sys.exit ( "EXECUTION IS TERMINATED" )
 
    if isinstance(g, h5py.File) or isinstance(g, h5py.Group) :
        for key,val in dict(g).iteritems() :
            subg = val
            print offset, key, #,"   ", subg.name #, val, subg.len(), type(subg),
            print_hdf5_item_structure(subg, offset + '    ')
 
if __name__ == "__main__" :
    print_hdf5_file_structure('/group/jrigrp4/AllZeaGBSv2.7impV5/ZeaGBSv27_publicSamples_imputedV5_AGPv2-150114.h5')
    sys.exit ( "End of test" )
