pub const packages = struct {
    pub const @"1220d624669f633ebe6c7afaba1a702c05c4c8e55a57b77a4d0d6ab1e3da07db11e2" = struct {
        pub const build_root = "/home/rain/.cache/zig/p/1220d624669f633ebe6c7afaba1a702c05c4c8e55a57b77a4d0d6ab1e3da07db11e2";
        pub const build_zig = @import("1220d624669f633ebe6c7afaba1a702c05c4c8e55a57b77a4d0d6ab1e3da07db11e2");
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "zlib", "1220d624669f633ebe6c7afaba1a702c05c4c8e55a57b77a4d0d6ab1e3da07db11e2" },
};
