.class public Lcom/corncop/capricornus/zip/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntrySource;


# instance fields
.field private final bytes:[B

.field private final path:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/corncop/capricornus/zip/ByteSource;-><init>(Ljava/lang/String;[BJ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "time"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ByteSource;->path:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/corncop/capricornus/zip/ByteSource;->bytes:[B

    .line 36
    iput-wide p3, p0, Lcom/corncop/capricornus/zip/ByteSource;->time:J

    .line 37
    return-void
.end method


# virtual methods
.method public getEntry()Ljava/util/zip/ZipEntry;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Ljava/util/zip/ZipEntry;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/ByteSource;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ByteSource;->bytes:[B

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/corncop/capricornus/zip/ByteSource;->bytes:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 48
    :cond_0
    iget-wide v2, p0, Lcom/corncop/capricornus/zip/ByteSource;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 49
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ByteSource;->bytes:[B

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/ByteSource;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ByteSource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/capricornus/zip/ByteSource;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
