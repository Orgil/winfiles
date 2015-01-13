" Cl compiler for Vim

if exists("cl_compiler")
  finish
endif

let cl_compiler = "cl"

if exists(":CompilerSet") != 2
    command -nargs = CompilerSet setlocal
endif

" Default errorformat
CompilerSet errorformat=%f(%l)\ :\ error\ %t%n:\ %m,
      \%f(%l)\ :\ fatal\ error\ %t%n:\ %m,
      \%f\ :\ error\ %tNK%n:\ %m,
      \%f\ :\ fatal\ error\ %tNK%n:\ %m,

" Hack to build.bat
CompilerSet makeprg=build.bat
