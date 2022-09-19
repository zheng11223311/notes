.class public Lio/rong/imkit/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteFromUri(Landroid/net/Uri;)[B
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imkit/utils/FileUtil;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 31
    .local v3, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 32
    .local v1, "count":I
    :goto_0
    if-nez v1, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    .line 36
    :cond_0
    new-array v0, v1, [B

    .line 37
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v3, :cond_1

    .line 45
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 47
    .end local v0    # "bytes":[B
    :cond_1
    :goto_1
    return-object v0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 43
    if-eqz v3, :cond_1

    .line 45
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 46
    :catch_1
    move-exception v4

    goto :goto_1

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 45
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 47
    :cond_2
    :goto_2
    throw v4

    .line 46
    .restart local v0    # "bytes":[B
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v0    # "bytes":[B
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 21
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 25
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeByte(Landroid/net/Uri;[B)V
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "data"    # [B

    .prologue
    .line 53
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "fileFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 60
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
