#import <spawn.h>
#import <dlfcn.h>
#import "utils.h"

extern char** environ;
__attribute__((constructor)) static void entry(int argc, char **argv) 
{
    NSLog(@"[*] TrollStoreJITEnabler loaded");
    int result = ptrace(PT_TRACE_ME, 0, 0, 0);
    NSLog(@"[*] ptrace result: %d", result);
}