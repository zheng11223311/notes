.class public abstract Lcom/corncop/capricornus/zip/transform/ByteArrayZipEntryTransformer;
.super Ljava/lang/Object;
.source "ByteArrayZipEntryTransformer.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected preserveTimestamps()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Lcom/corncop/capricornus/zip/commons/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 41
    .local v0, "bytes":[B
    invoke-virtual {p0, p2, v0}, Lcom/corncop/capricornus/zip/transform/ByteArrayZipEntryTransformer;->transform(Ljava/util/zip/ZipEntry;[B)[B

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/transform/ByteArrayZipEntryTransformer;->preserveTimestamps()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v1, Lcom/corncop/capricornus/zip/ByteSource;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[BJ)V

    .line 52
    .local v1, "source":Lcom/corncop/capricornus/zip/ByteSource;
    :goto_0
    invoke-static {v1, p3}, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V

    .line 53
    return-void

    .line 49
    .end local v1    # "source":Lcom/corncop/capricornus/zip/ByteSource;
    :cond_0
    new-instance v1, Lcom/corncop/capricornus/zip/ByteSource;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[B)V

    .restart local v1    # "source":Lcom/corncop/capricornus/zip/ByteSource;
    goto :goto_0
.end method

.method protected abstract transform(Ljava/util/zip/ZipEntry;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
