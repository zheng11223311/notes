.class public Lcom/youku/analytics/utils/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field private static AES_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "1234567887654321"

    sput-object v0, Lcom/youku/analytics/utils/FileOperation;->AES_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendWrite(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x200000

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_1
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    .line 80
    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    .line 82
    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 81
    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 83
    .local v4, "writer":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 84
    .local v2, "len":I
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 86
    .local v0, "buffer":[C
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 89
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 90
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 91
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v5, v6

    .line 97
    .end local v0    # "buffer":[C
    .end local v2    # "len":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    return v5

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " create fail!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 74
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "len":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v7, v2}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 92
    .end local v0    # "buffer":[C
    .end local v2    # "len":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v1

    .line 93
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v5, v6

    .line 124
    :cond_0
    :goto_0
    return-object v5

    .line 103
    :cond_1
    const/4 v2, 0x0

    .line 105
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v4, v7, [B

    .line 107
    .local v4, "localBytes":[B
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 108
    sget-object v7, Lcom/youku/analytics/utils/FileOperation;->AES_KEY:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/youku/analytics/utils/Tools;->decrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :cond_2
    if-eqz v3, :cond_0

    .line 119
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "localBytes":[B
    .end local v5    # "str":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e2":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v2, :cond_3

    .line 119
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "e2":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    move-object v5, v6

    .line 124
    goto :goto_0

    .line 120
    .restart local v1    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    if-eqz v2, :cond_3

    .line 119
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 120
    :catch_4
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 118
    :goto_4
    if-eqz v2, :cond_4

    .line 119
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 123
    :cond_4
    :goto_5
    throw v6

    .line 120
    :catch_5
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 114
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 112
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_1
    sget-object v6, Lcom/youku/analytics/utils/FileOperation;->AES_KEY:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/youku/analytics/utils/Tools;->aesEncode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 34
    .local v2, "encrypted":[B
    if-nez v2, :cond_3

    .line 54
    .end local v2    # "encrypted":[B
    :cond_2
    :goto_0
    return v5

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " create fail!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "encrypted":[B
    :cond_3
    const/4 v3, 0x0

    .line 39
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    if-eqz v4, :cond_4

    .line 48
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 54
    :cond_4
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    if-eqz v3, :cond_2

    .line 48
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v1

    .line 50
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 47
    :goto_3
    if-eqz v3, :cond_5

    .line 48
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 52
    :cond_5
    :goto_4
    throw v5

    .line 49
    :catch_3
    move-exception v1

    .line 50
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 49
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .line 50
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 42
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
