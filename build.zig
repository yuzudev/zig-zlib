const std = @import("std");

pub fn build(b: *std.Build) void {
    // Modules available to downstream dependencies
    const zlib = b.addModule("zlib", .{
        .root_source_file = b.path("src/main.zig"),
        .link_libc = true,
    });

    const srcs = &.{
        "zlib/adler32.c",
        "zlib/compress.c",
        "zlib/crc32.c",
        "zlib/deflate.c",
        "zlib/gzclose.c",
        "zlib/gzlib.c",
        "zlib/gzread.c",
        "zlib/gzwrite.c",
        "zlib/inflate.c",
        "zlib/infback.c",
        "zlib/inftrees.c",
        "zlib/inffast.c",
        "zlib/trees.c",
        "zlib/uncompr.c",
        "zlib/zutil.c",
    };

    zlib.addCSourceFiles(.{ .files = srcs, .flags = &.{"-std=c89"} });
    zlib.addIncludePath(b.path("zlib/"));
}
