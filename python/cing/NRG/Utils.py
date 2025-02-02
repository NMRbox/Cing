'''
Created on Oct 26, 2011

@author: jd
'''
from cing.Libs.NTutils import nTerror
from cing.Libs.NTutils import nTwarning
from cing.Libs.NTutils import nTdebug
from cing.NRG import mapBase2Archive
from cing.NRG.settings import results_baseList


def getArchiveIdFromDirectoryName(dirName):
    ''' 
    From input such as:
    Return a valid id such as:
    or None on error.
    '''
    nTdebug("In `getArchiveIdFromDirectoryName`, with %s as dirName" % dirName)
    if not dirName:
        nTerror("Failed to map dirName [%s] because baseName evaluates to False." % dirName)
        return None
    # end if
    baseName = None
    for baseTry in results_baseList:
        nTdebug("baseTry: %s" % baseTry)
        if baseTry in dirName:
            baseName = baseTry
            break
        # end if
    # end def
    if not baseName in mapBase2Archive.keys():
        nTwarning("Failed to map dirName [%s] with baseName [%s] because baseName is an unenumerated baseName." % (dirName, baseName))
        return None
    # end if
    nTdebug("Returning %s as archiveID" % mapBase2Archive[baseName])
    return mapBase2Archive[baseName]
# end def
