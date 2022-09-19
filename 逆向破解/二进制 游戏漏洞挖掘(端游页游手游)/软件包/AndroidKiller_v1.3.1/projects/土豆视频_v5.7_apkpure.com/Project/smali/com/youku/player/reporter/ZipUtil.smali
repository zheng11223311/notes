.class public Lcom/youku/player/reporter/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/lang/String;)V
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v7, "source":Ljava/io/File;
    const/16 v11, 0x2800

    new-array v2, v11, [B

    .line 102
    .local v2, "buffer":[B
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 103
    const/4 v9, 0x0

    .line 104
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 106
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v10, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    .local v4, "entry":Ljava/util/zip/ZipEntry;
    move-object v1, v0

    .line 108
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_4

    .line 109
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v8, "target":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 112
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 117
    .local v6, "read":I
    :goto_1
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v2

    invoke-virtual {v10, v2, v11, v12}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_3

    .line 118
    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 122
    :catch_0
    move-exception v3

    move-object v9, v10

    .line 123
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "read":I
    .end local v8    # "target":Ljava/io/File;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_3
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v0, :cond_1

    .line 127
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 132
    :cond_1
    :goto_4
    if-eqz v9, :cond_2

    .line 134
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 137
    :cond_2
    :goto_5
    throw v11

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "read":I
    .restart local v8    # "target":Ljava/io/File;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    move-object v1, v0

    .line 120
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 121
    .end local v6    # "read":I
    .end local v8    # "target":Ljava/io/File;
    :cond_4
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 125
    if-eqz v1, :cond_5

    .line 127
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 132
    :cond_5
    :goto_6
    if-eqz v10, :cond_6

    .line 134
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 141
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_6
    :goto_7
    return-void

    .line 128
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v5

    .line 129
    .local v5, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 135
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 136
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 128
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v5

    .line 129
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 135
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 136
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 125
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "read":I
    .restart local v8    # "target":Ljava/io/File;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 122
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "read":I
    .end local v8    # "target":Ljava/io/File;
    :catch_5
    move-exception v3

    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v4, 0x0

    .line 21
    .local v4, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v6, "outFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, "fileOrDirectory":Ljava/io/File;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 26
    const-string v7, ""

    invoke-static {v5, v2, v7}, Lcom/youku/player/reporter/ZipUtil;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :cond_0
    if-eqz v5, :cond_4

    .line 41
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 47
    .end local v2    # "fileOrDirectory":Ljava/io/File;
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 29
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "fileOrDirectory":Ljava/io/File;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "outFile":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 30
    .local v0, "entries":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    .line 32
    aget-object v7, v0, v3

    const-string v8, ""

    invoke-static {v5, v7, v8}, Lcom/youku/player/reporter/ZipUtil;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "entries":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 43
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 44
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 35
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fileOrDirectory":Ljava/io/File;
    .end local v6    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 36
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    if-eqz v4, :cond_1

    .line 41
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 42
    :catch_2
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_3

    .line 41
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 44
    :cond_3
    :goto_4
    throw v7

    .line 42
    :catch_3
    move-exception v1

    .line 43
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 39
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "fileOrDirectory":Ljava/io/File;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_3

    .line 35
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method private static zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 11
    .param p0, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "fileOrDirectory"    # Ljava/io/File;
    .param p2, "curPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 55
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 57
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 59
    .local v0, "buffer":[B
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 65
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytes_read":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 66
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 78
    .end local v1    # "bytes_read":I
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 79
    .end local v0    # "buffer":[B
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v4, "ex":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    if-eqz v6, :cond_0

    .line 84
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 90
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 68
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes_read":I
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    .line 82
    .end local v0    # "buffer":[B
    .end local v1    # "bytes_read":I
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v6, :cond_0

    .line 84
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 85
    :catch_1
    move-exception v4

    .line 86
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 72
    .local v2, "entries":[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 74
    aget-object v8, v2, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/youku/player/reporter/ZipUtil;->zipFileOrDirectory(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 85
    .end local v2    # "entries":[Ljava/io/File;
    .end local v5    # "i":I
    .restart local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 86
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_4

    .line 84
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 87
    :cond_4
    :goto_5
    throw v8

    .line 85
    :catch_3
    move-exception v4

    .line 86
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 82
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 78
    .end local v0    # "buffer":[B
    :catch_4
    move-exception v4

    goto :goto_1
.end method
