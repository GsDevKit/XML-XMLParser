This class finds the files of a  test suite and classifies tham as passing test files, failing test files, passing test expected output XML files,  and entity/DTD source files.

It uses FileSystem's visitor API internally to walk the directory tree, but it is not a subclass of FileSystemVisitor to avoid loading errors on Squeak or GS which don't have FileSystem.