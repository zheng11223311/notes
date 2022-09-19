.class public abstract Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;
.super Ljava/lang/Object;
.source "StringZipEntryTransformer.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;


# instance fields
.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;->encoding:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract transform(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v3, p0, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;->encoding:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/corncop/capricornus/zip/commons/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p0, p2, v1}, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;->transform(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;->encoding:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 44
    .local v0, "bytes":[B
    :goto_0
    new-instance v2, Lcom/corncop/capricornus/zip/ByteSource;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[B)V

    .line 45
    .local v2, "source":Lcom/corncop/capricornus/zip/ByteSource;
    invoke-static {v2, p3}, Lcom/corncop/capricornus/zip/transform/ZipEntrySourceZipEntryTransformer;->addEntry(Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/util/zip/ZipOutputStream;)V

    .line 46
    return-void

    .line 43
    .end local v0    # "bytes":[B
    .end local v2    # "source":Lcom/corncop/capricornus/zip/ByteSource;
    :cond_0
    iget-object v3, p0, Lcom/corncop/capricornus/zip/transform/StringZipEntryTransformer;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
