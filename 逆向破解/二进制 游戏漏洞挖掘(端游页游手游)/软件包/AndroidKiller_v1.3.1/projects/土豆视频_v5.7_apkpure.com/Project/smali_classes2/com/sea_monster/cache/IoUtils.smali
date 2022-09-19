.class public Lcom/sea_monster/cache/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeStream(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to close InputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static closeStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to close OutputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/sea_monster/cache/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lcom/sea_monster/cache/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v4, 0x1000

    :try_start_0
    new-array v0, v4, [B

    .line 63
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 65
    .local v2, "count":J
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    if-eq v4, v1, :cond_0

    .line 66
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {p0}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    .line 73
    invoke-static {p1}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/OutputStream;)V

    return-wide v2

    .line 72
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/InputStream;)V

    .line 73
    invoke-static {p1}, Lcom/sea_monster/cache/IoUtils;->closeStream(Ljava/io/OutputStream;)V

    throw v4
.end method
