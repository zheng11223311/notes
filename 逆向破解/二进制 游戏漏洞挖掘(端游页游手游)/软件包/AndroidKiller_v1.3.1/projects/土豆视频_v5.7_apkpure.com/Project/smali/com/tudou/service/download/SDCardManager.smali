.class public Lcom/tudou/service/download/SDCardManager;
.super Ljava/lang/Object;
.source "SDCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    }
.end annotation


# instance fields
.field private nSDFreeSize:J

.field private nSDTotalSize:J

.field private sdPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdPath"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tudou/service/download/SDCardManager;->sdPath:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/tudou/service/download/SDCardManager;->init()V

    .line 39
    return-void
.end method

.method public static getDefauleSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDistinctSDCard(Lcom/tudou/service/download/SDCardManager$SDCardInfo;)Ljava/lang/String;
    .locals 12
    .param p0, "info"    # Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v2, ""

    .line 327
    .local v2, "md5":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tudou/offlinedata/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 329
    .local v3, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    new-instance v3, Ljava/io/File;

    .end local v3    # "nomedia":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tudou/offlinedata/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .restart local v3    # "nomedia":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 334
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 335
    new-instance v6, Ljava/io/FileWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tudou/offlinedata/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 337
    .local v6, "writer":Ljava/io/FileWriter;
    iget-object v7, p0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    .line 340
    iget-object v2, p0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 351
    .end local v6    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_0
    return-object v2

    .line 342
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 343
    .local v0, "b":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 344
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 348
    move-object v2, v4

    goto :goto_0
.end method

.method public static getExternalStorageDirectory()Ljava/util/ArrayList;
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/SDCardManager$SDCardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasKitKat()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 187
    sget-object v24, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 189
    .local v6, "externalFiles":[Ljava/io/File;
    if-eqz v6, :cond_0

    .line 190
    new-instance v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v10}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 191
    .local v10, "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 192
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 193
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    array-length v0, v6

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    const/16 v24, 0x1

    aget-object v24, v6, v24

    if-eqz v24, :cond_0

    .line 195
    new-instance v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v7}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 196
    .local v7, "externalInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    const/16 v24, 0x1

    aget-object v24, v6, v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 197
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 198
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v6    # "externalFiles":[Ljava/io/File;
    .end local v7    # "externalInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    :cond_0
    :goto_0
    return-object v16

    .line 203
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    .line 205
    .local v22, "runtime":Ljava/lang/Runtime;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v23, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v19, "mds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v24, "mount"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v21

    .line 210
    .local v21, "proc":Ljava/lang/Process;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 211
    .local v11, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 215
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "defauleSDCardPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 219
    const-string v24, "fat"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "fuse"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "storage"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 221
    :cond_3
    const-string/jumbo v24, "secure"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "asec"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "firmware"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string/jumbo v24, "shell"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "obb"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "legacy"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "data"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string/jumbo v24, "tmpfs"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 231
    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_2

    .line 233
    aget-object v20, v3, v9

    .line 234
    .local v20, "path":Ljava/lang/String;
    const-string v24, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string v24, "Data"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-nez v24, :cond_4

    .line 237
    :try_start_1
    new-instance v17, Lcom/tudou/service/download/SDCardManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 238
    .local v17, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual/range {v17 .. v17}, Lcom/tudou/service/download/SDCardManager;->getTotalSize()J

    move-result-wide v24

    const-wide/32 v26, 0x40000000

    cmp-long v24, v24, v26

    if-ltz v24, :cond_4

    .line 239
    new-instance v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v10}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 240
    .restart local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    aget-object v24, v3, v9

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 241
    iget-object v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 242
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 243
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 232
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .end local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 245
    .restart local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .restart local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 246
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 249
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .end local v17    # "m":Lcom/tudou/service/download/SDCardManager;
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 257
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v20    # "path":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 258
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 259
    new-instance v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v10}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 260
    .restart local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    iput-object v4, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 261
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 262
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 277
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    :cond_7
    :goto_3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_b

    .line 278
    new-instance v8, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/tudou/offlinedata/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ".nomedia"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 281
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 277
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 264
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "i":I
    :cond_9
    const-string v24, "download_file_path"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 314
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "defauleSDCardPath":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v21    # "proc":Ljava/lang/Process;
    :catch_1
    move-exception v24

    .line 317
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 267
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "defauleSDCardPath":Ljava/lang/String;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v21    # "proc":Ljava/lang/Process;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_7

    .line 268
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_7

    .line 270
    new-instance v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v10}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 271
    .restart local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    iput-object v4, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 272
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 273
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .restart local v9    # "i":I
    :cond_b
    const/4 v9, 0x0

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_f

    .line 284
    const/4 v14, 0x0

    .line 285
    .local v14, "k":I
    const-string v18, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    .local v18, "md5":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-static/range {v24 .. v24}, Lcom/tudou/service/download/SDCardManager;->getDistinctSDCard(Lcom/tudou/service/download/SDCardManager$SDCardInfo;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    .line 290
    :goto_6
    :try_start_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 291
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_d

    .line 292
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 293
    add-int/lit8 v14, v14, 0x1

    .line 291
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 296
    :cond_d
    if-nez v14, :cond_e

    .line 297
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v13    # "j":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 302
    .end local v14    # "k":I
    .end local v18    # "md5":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_0

    .line 303
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_0

    .line 305
    new-instance v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    invoke-direct {v10}, Lcom/tudou/service/download/SDCardManager$SDCardInfo;-><init>()V

    .line 306
    .restart local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    iput-object v4, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 307
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v10, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isExternal:Z

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v24, "download_file_path"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 288
    .end local v10    # "info":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .restart local v14    # "k":I
    .restart local v18    # "md5":Ljava/lang/String;
    :catch_2
    move-exception v24

    goto :goto_6
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 10
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 137
    const-wide/16 v4, 0x0

    .line 138
    .local v4, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    move-wide v6, v4

    .line 152
    .end local v0    # "files":[Ljava/io/File;
    .end local v4    # "size":J
    .local v6, "size":J
    :goto_0
    return-wide v6

    .line 142
    .end local v6    # "size":J
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v4    # "size":J
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 143
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/tudou/service/download/SDCardManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 142
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_2

    .line 150
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    :cond_3
    move-wide v6, v4

    .line 152
    .end local v4    # "size":J
    .restart local v6    # "size":J
    goto :goto_0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 10

    .prologue
    .line 43
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/tudou/service/download/SDCardManager;->sdPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 45
    .local v6, "totalBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 46
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 47
    .local v2, "blockSize":J
    mul-long v8, v6, v2

    iput-wide v8, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    .line 48
    mul-long v8, v0, v2

    iput-wide v8, p0, Lcom/tudou/service/download/SDCardManager;->nSDFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "statFs":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public exist()Z
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/tudou/service/download/SDCardManager;->nSDFreeSize:J

    return-wide v0
.end method

.method public getOtherProgrss()I
    .locals 6

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 120
    :goto_0
    return v2

    .line 119
    :cond_0
    iget-wide v2, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    iget-wide v4, p0, Lcom/tudou/service/download/SDCardManager;->nSDFreeSize:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->getTudouVideoSpace()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 120
    .local v0, "size":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0
.end method

.method public getOtherSpace()J
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-wide/16 v0, 0x0

    .line 101
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    iget-wide v2, p0, Lcom/tudou/service/download/SDCardManager;->nSDFreeSize:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->getTudouVideoSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    return-wide v0
.end method

.method public getTudouProgrss()I
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x64

    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->getTudouVideoSpace()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getTudouVideoSpace()J
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/service/download/SDCardManager;->sdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tudou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-static {v0}, Lcom/tudou/service/download/SDCardManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUsedProgrss()I
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const/4 v2, 0x0

    .line 130
    :goto_0
    return v2

    .line 129
    :cond_0
    iget-wide v2, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    iget-wide v4, p0, Lcom/tudou/service/download/SDCardManager;->nSDFreeSize:J

    sub-long v0, v2, v4

    .line 130
    .local v0, "size":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v0

    iget-wide v4, p0, Lcom/tudou/service/download/SDCardManager;->nSDTotalSize:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0
.end method
