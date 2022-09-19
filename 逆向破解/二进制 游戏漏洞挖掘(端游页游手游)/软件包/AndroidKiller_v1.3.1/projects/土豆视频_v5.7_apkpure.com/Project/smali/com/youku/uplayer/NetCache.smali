.class public Lcom/youku/uplayer/NetCache;
.super Ljava/lang/Object;
.source "NetCache.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "netcache"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DNSPreParse()V
.end method

.method public static native SetUserAgent(Ljava/lang/String;)V
.end method

.method public static native memory_count()I
.end method

.method public static native memory_dump()V
.end method

.method public static native start(Ljava/lang/String;J)I
.end method

.method public static native stop()V
.end method
