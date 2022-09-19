.class public Lcom/corncop/virgo/VirgoFileSteam;
.super Ljava/lang/Object;
.source "VirgoFileSteam.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertToString(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/FileInputStream;

    .prologue
    .line 47
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 52
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 60
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 59
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 60
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 62
    :catch_2
    move-exception v1

    .line 63
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 59
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 60
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 64
    :cond_3
    :goto_2
    throw v5

    .line 62
    :catch_3
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static ConvertToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 23
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 28
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 36
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 35
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 36
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 38
    :catch_1
    move-exception v1

    .line 39
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 38
    :catch_2
    move-exception v1

    .line 39
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 34
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 35
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 36
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 40
    :cond_3
    :goto_2
    throw v5

    .line 38
    :catch_3
    move-exception v1

    .line 39
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isFolderExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
