.class public Lcom/mobisage/android/MobiSageFileUtility;
.super Ljava/lang/Object;
.source "MobiSageFileUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 18
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v6, "stringBuffer":Ljava/lang/StringBuffer;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 21
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 22
    .local v1, "count":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 23
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 26
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v6    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 27
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    const-class v7, Lcom/mobisage/android/MobiSageFileUtility;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    if-eqz v4, :cond_0

    .line 31
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 36
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v2

    .line 25
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .line 29
    if-eqz v5, :cond_3

    .line 31
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 33
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 32
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v7

    move-object v4, v5

    .line 33
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 29
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v6    # "stringBuffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 31
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 33
    :cond_2
    :goto_4
    throw v7

    .line 32
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 29
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 26
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 45
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    if-eqz v2, :cond_3

    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 57
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 53
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 54
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-class v3, Lcom/mobisage/android/MobiSageFileUtility;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    if-eqz v1, :cond_1

    .line 52
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 53
    :catch_2
    move-exception v3

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 52
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 54
    :cond_2
    :goto_3
    throw v3

    .line 53
    :catch_3
    move-exception v4

    goto :goto_3

    .line 50
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 47
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_0
.end method
