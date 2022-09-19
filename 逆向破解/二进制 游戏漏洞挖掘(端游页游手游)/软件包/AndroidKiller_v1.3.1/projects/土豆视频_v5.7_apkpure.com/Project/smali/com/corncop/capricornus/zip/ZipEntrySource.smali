.class public interface abstract Lcom/corncop/capricornus/zip/ZipEntrySource;
.super Ljava/lang/Object;
.source "ZipEntrySource.java"


# virtual methods
.method public abstract getEntry()Ljava/util/zip/ZipEntry;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method
