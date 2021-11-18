import os,glob,re,pdb

# check path root
root = os.getcwd()
os.chdir( "../data" )

# global values
all_defines = {}

# re part 
define_re = re.compile( "^(\w*) = (\d*)$" )
prop_re = re.compile( "^\t*\[([0-9]+)\] = " )

# load all define file
def load_all_define():
    for p in glob.glob( "define*.lua" ):
        fd = open( p, "r" )
        for l in fd.read().splitlines():
            result = define_re.findall( l )
            if len( result ) != 0:
                a = int(result[0][1])
                if a:
                    all_defines[ result[0][0] ] = a
                    pass
                else:
                    all_defines[ result[0][0] ] = result[0][1]
                    pass
                pass
            pass
        fd.close()
        pass
    print "load all define file done."
    pass


# check all prop_define file
def check_all_prop():
    ofd = open( os.path.join(root, "check_report.txt" ), "w" )
    for p in glob.glob( "prop*.lua" ):

        single_check_map = {}
        fd = open( p, "r" )
        for l in fd.read().splitlines():
            result = prop_re.findall( l )
            if len( result ) != 0:
                raw_f = int( result[0] )
                f = raw_f
                if f == None:
                    f = all_defines[ f ]
                    pass

                if f == None:
                    ofd.write( "file: %s, %s is nil\n"% (p,raw_f) )
                    pass
                else:
                    if single_check_map.has_key( f ):
                        ofd.write( "file: %s, %s is duplicated"%(p,raw_f) )
                    else:
                        single_check_map[ f ] = True
                        pass
                    pass
                pass
            pass
        fd.close()
        pass
    print "check all prop file done."
    pass

def check_all_define():
    output = file( os.path.join(root, "single_define_report.txt" ), "w" )
    skip_names = ["define_achievement.lua","define_ik.lua"]
    for p in glob.glob( "define*.lua" ):
        is_find = False
        for name in skip_names:
            if p == name:
                is_find = True
                pass
            pass
        if is_find:
            continue
        singleton = {}
        fd = open( p, "r" )
        for l in fd.read().splitlines():
            result = define_re.findall( l )
            if len( result ) == 0:
                continue
            a = int(result[0][1])
            if a == None:
                continue


            if singleton.has_key( a ):
                msg = "%s file, key1: %s, key2: %s\n"% ( p, singleton[a], result[0][0])
                output.write( msg )
                output.flush()
                pass
            else:
                singleton[ a ] = result[0][0]
                pass
            pass
        pass
    output.close()
    
    pass


if __name__ == "__main__":
    for fn in glob.glob("*.lua"):
        #os.remove( os.path.join("./",fn ) )
        pass
    # os.system( "svn up" )
    #load_all_define()
    #check_all_prop()

    check_all_define()
    pass
