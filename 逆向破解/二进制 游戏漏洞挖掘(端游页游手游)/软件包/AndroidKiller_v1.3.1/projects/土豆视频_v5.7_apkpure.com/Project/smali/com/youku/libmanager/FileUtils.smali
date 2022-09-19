.class public Lcom/youku/libmanager/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SoUpgradeService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)I
    .locals 12
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;

    .prologue
    const/4 v8, -0x1

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "flag":I
    const/4 v3, 0x0

    .line 157
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 159
    .local v6, "outBuff":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_0

    .line 160
    const-string v9, "SoUpgradeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " no exists!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return v8

    .line 166
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .local v4, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .end local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    .local v7, "outBuff":Ljava/io/BufferedOutputStream;
    :try_start_2
    const-string v9, "SoUpgradeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ------> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v9, "SoUpgradeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " copy start"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v9, 0x1400

    new-array v0, v9, [B

    .line 177
    .local v0, "b":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-eq v5, v8, :cond_3

    .line 178
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 192
    .end local v0    # "b":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 193
    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v2, -0x1

    .line 194
    :try_start_3
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-eqz v3, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 203
    :cond_1
    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    move v8, v2

    .line 211
    goto :goto_0

    .line 181
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":[B
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 184
    const-string v8, "SoUpgradeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " copy fail, file does not copy fully!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "SoUpgradeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v8, "SoUpgradeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 188
    const/4 v2, -0x1

    .line 190
    :cond_4
    const-string v8, "SoUpgradeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " copy finish!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    if-eqz v4, :cond_5

    .line 202
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 203
    :cond_5
    if-eqz v7, :cond_6

    .line 204
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    move-object v6, v7

    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 207
    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 205
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 209
    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 205
    .end local v0    # "b":[B
    .end local v5    # "len":I
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v2, -0x1

    .line 197
    :try_start_7
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    if-eqz v3, :cond_7

    .line 202
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 203
    :cond_7
    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 205
    :catch_4
    move-exception v1

    .line 206
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 201
    :goto_5
    if-eqz v3, :cond_8

    .line 202
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 203
    :cond_8
    if-eqz v6, :cond_9

    .line 204
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 207
    :cond_9
    :goto_6
    throw v8

    .line 205
    :catch_5
    move-exception v1

    .line 206
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SoUpgradeService"

    invoke-static {v9, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 195
    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 192
    :catch_8
    move-exception v1

    goto/16 :goto_2

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuff":Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method public static creatDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static creatFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 8
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v4

    .line 112
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 114
    .local v2, "flag":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 117
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 126
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 129
    goto :goto_0

    .line 122
    :cond_4
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/libmanager/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 87
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    .local v0, "flag":Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 91
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 72
    .local v1, "flag":Ljava/lang/Boolean;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static file2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 272
    if-nez p0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-object v6

    .line 275
    :cond_1
    const/4 v3, 0x0

    .line 276
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 278
    .local v5, "writer":Ljava/io/StringWriter;
    if-eqz p1, :cond_2

    :try_start_0
    const-string v7, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 279
    :cond_2
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 284
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 285
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .line 286
    .local v2, "n":I
    :goto_2
    const/4 v7, -0x1

    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-eq v7, v2, :cond_4

    .line 287
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 289
    .end local v0    # "buffer":[C
    .end local v2    # "n":I
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v3, :cond_0

    .line 295
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 296
    :catch_1
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 293
    .restart local v0    # "buffer":[C
    .restart local v2    # "n":I
    :cond_4
    if-eqz v3, :cond_5

    .line 295
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 301
    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    .line 302
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 296
    :catch_2
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 293
    .end local v0    # "buffer":[C
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "n":I
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_6

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 298
    :cond_6
    :goto_4
    throw v6

    .line 296
    :catch_3
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldFilePath"    # Ljava/lang/String;
    .param p1, "newFilePath"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 139
    :cond_0
    const/4 v2, 0x0

    .line 144
    :goto_0
    return v2

    .line 141
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "oldFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method

.method public static writeFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Ljava/io/File;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "size"    # I

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 229
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/youku/libmanager/FileUtils;->creatDir(Ljava/lang/String;)Ljava/io/File;

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/libmanager/FileUtils;->creatFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 231
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 235
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 237
    .local v6, "recvSize":I
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_0

    .line 238
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 239
    add-int/2addr v6, v3

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, p3

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 246
    const-string v7, "SoUpgradeService"

    const-string v8, "download fail"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {v2}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 248
    const/4 v2, 0x0

    .line 249
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v6    # "recvSize":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 254
    .end local v5    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :goto_1
    const/4 v2, 0x0

    .line 255
    :try_start_2
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    if-eqz p2, :cond_1

    .line 259
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_1
    if-eqz v4, :cond_2

    .line 262
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v2

    .line 251
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "recvSize":I
    :cond_3
    :try_start_4
    const-string v7, "SoUpgradeService"

    const-string v8, "download finish"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    if-eqz p2, :cond_4

    .line 259
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_4
    if-eqz v5, :cond_5

    .line 262
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v4, v5

    .line 266
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 264
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 265
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 267
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 264
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    .end local v6    # "recvSize":I
    :catch_2
    move-exception v1

    .line 265
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 258
    :goto_3
    if-eqz p2, :cond_6

    .line 259
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_6
    if-eqz v4, :cond_7

    .line 262
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 266
    :cond_7
    :goto_4
    throw v7

    .line 264
    :catch_3
    move-exception v1

    .line 265
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "SoUpgradeService"

    invoke-static {v8, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    goto :goto_3

    .line 253
    :catch_4
    move-exception v1

    goto :goto_1
.end method
