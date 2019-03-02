/+ dub.sdl:
	dependency "dfuse" version="~>0.3.0"
+/
import dfuse.fuse;
import core.stdc.errno;

class MyFS : Operations
{
    override void getattr(const(char)[] path, ref stat_t s)
    {
        /* implementation */
        throw new FuseException(EOPNOTSUPP);
    }
    
    override string[] readdir(const(char)[] path)
    {
       return [/*...list of files...*/];
    }
    
    override ulong read(const(char)[] path, ubyte[] buf, ulong offset)
    {
       /* implementation */
       throw new FuseException(EOPNOTSUPP);
    }
}
