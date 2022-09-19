.class public Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;
.super Ljava/lang/Object;
.source "UploadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private BOUNDARY:Ljava/lang/String;

.field private Data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private LINEND:Ljava/lang/String;

.field private MULTIPART_FROM_DATA:Ljava/lang/String;

.field private PREFIX:Ljava/lang/String;

.field private SecretKey:Ljava/lang/String;

.field private Url:Ljava/lang/String;

.field private mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;, "Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable<TT;>;"
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "--"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    .line 33
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    .line 35
    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->MULTIPART_FROM_DATA:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mToken:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->SecretKey:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Data:Ljava/util/Map;

    .line 39
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Url:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

    .line 43
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

    .line 44
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Data:Ljava/util/Map;

    .line 45
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Url:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mToken:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->SecretKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private addImageContent(Ljava/io/DataOutputStream;)V
    .locals 12
    .param p1, "output"    # Ljava/io/DataOutputStream;

    .prologue
    .line 125
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;, "Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable<TT;>;"
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Data:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 126
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: form-data; name=\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Data:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 141
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 144
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v7, "sb1":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"; filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->MULTIPART_FROM_DATA:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertBitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 159
    .local v1, "bp":[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-virtual {p1, v1, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 160
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v8, "sb2":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_2
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 173
    .end local v1    # "bp":[B
    .end local v8    # "sb2":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v9, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bp":[B
    .restart local v8    # "sb2":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    const-string v9, "Content-Disposition: form-data; name=\"Upload\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 178
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bp":[B
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v7    # "sb1":Ljava/lang/StringBuilder;
    .end local v8    # "sb2":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private upload()V
    .locals 25

    .prologue
    .line 56
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;, "Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable<TT;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, "Authorization":Ljava/lang/String;
    const/4 v5, 0x0

    .line 58
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 61
    .local v7, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 63
    .local v20, "ts":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRandomStr()Ljava/lang/String;

    move-result-object v15

    .line 64
    .local v15, "nonce":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MAC id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mToken:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",ts="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",nonce="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",mac="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->SecretKey:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/utils/SecurityMD5;->ToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .end local v15    # "nonce":Ljava/lang/String;
    .end local v20    # "ts":Ljava/lang/String;
    :goto_0
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->Url:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 70
    const v22, 0x1d4c0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 71
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 72
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 73
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    const-string v22, "Connection"

    const-string v23, "keep-alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v22, "Content-Type"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->MULTIPART_FROM_DATA:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";boundary="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v22, "Authorization"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 78
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 79
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v8, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->addImageContent(Ljava/io/DataOutputStream;)V

    .line 80
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Submit Query"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->BOUNDARY:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->PREFIX:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->LINEND:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 81
    .local v10, "end_data":[B
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 82
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 83
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 84
    .local v16, "res":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 85
    .local v12, "in":Ljava/io/InputStream;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v13, "isReader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v3, "bufReader":Ljava/io/BufferedReader;
    const-string v14, ""

    .line 88
    .local v14, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    .line 89
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v14

    goto :goto_1

    .line 66
    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v10    # "end_data":[B
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "isReader":Ljava/io/InputStreamReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "res":I
    .end local v21    # "url":Ljava/net/URL;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 91
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v10    # "end_data":[B
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "isReader":Ljava/io/InputStreamReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "res":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_1
    const/16 v22, 0xc8

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 92
    :try_start_3
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v19, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v22, "response"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 94
    .local v17, "root":Lorg/json/JSONObject;
    const-string v22, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "code":Ljava/lang/String;
    const-string v22, "SUCCESS"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 96
    const-string v22, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 97
    .local v6, "data":Lorg/json/JSONObject;
    const-string v22, "img120"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "faceUrl":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getRestAPIService()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v18

    .line 99
    .local v18, "service":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->updateUserFaceUrl(Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

    move-object/from16 v22, v0

    const-string v23, "message"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;->onUploadComplition(Ljava/lang/String;)V

    .line 107
    .end local v4    # "code":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v11    # "faceUrl":Ljava/lang/String;
    .end local v17    # "root":Lorg/json/JSONObject;
    .end local v18    # "service":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .end local v19    # "tmp":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 108
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v7, v8

    .line 122
    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v10    # "end_data":[B
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "isReader":Ljava/io/InputStreamReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "res":I
    .end local v21    # "url":Ljava/net/URL;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 102
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v4    # "code":Ljava/lang/String;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v10    # "end_data":[B
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "isReader":Ljava/io/InputStreamReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "res":I
    .restart local v17    # "root":Lorg/json/JSONObject;
    .restart local v19    # "tmp":Lorg/json/JSONObject;
    .restart local v21    # "url":Ljava/net/URL;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

    move-object/from16 v22, v0

    const-string v23, "message"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v4, v1}, Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;->onUploadError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    .line 109
    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .end local v4    # "code":Ljava/lang/String;
    .end local v10    # "end_data":[B
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "isReader":Ljava/io/InputStreamReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "res":I
    .end local v17    # "root":Lorg/json/JSONObject;
    .end local v19    # "tmp":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v7, v8

    .line 110
    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v21    # "url":Ljava/net/URL;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v9, "e":Ljava/net/MalformedURLException;
    :goto_4
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v9    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v10    # "end_data":[B
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v13    # "isReader":Ljava/io/InputStreamReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "res":I
    .restart local v21    # "url":Ljava/net/URL;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v14}, Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;->onUploadError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 111
    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .end local v10    # "end_data":[B
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v13    # "isReader":Ljava/io/InputStreamReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "res":I
    :catch_1
    move-exception v9

    move-object v7, v8

    .line 112
    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v21    # "url":Ljava/net/URL;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_5
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 114
    .local v9, "e":Lorg/json/JSONException;
    :goto_6
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 115
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v9

    .line 116
    .local v9, "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    :goto_7
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/exception/ServiceException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v9    # "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    :catch_4
    move-exception v9

    .line 118
    .local v9, "e":Landroid/os/RemoteException;
    :goto_8
    sget-boolean v22, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v22, :cond_2

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v21    # "url":Ljava/net/URL;
    :catch_5
    move-exception v9

    move-object v7, v8

    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_8

    .line 115
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v9

    move-object v7, v8

    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 113
    .end local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v9

    move-object v7, v8

    .end local v8    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "dataOutputStream":Ljava/io/DataOutputStream;
    goto :goto_6

    .line 111
    .end local v21    # "url":Ljava/net/URL;
    :catch_8
    move-exception v9

    goto :goto_5

    .line 109
    :catch_9
    move-exception v9

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;, "Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable<TT;>;"
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;->upload()V

    .line 53
    return-void
.end method
