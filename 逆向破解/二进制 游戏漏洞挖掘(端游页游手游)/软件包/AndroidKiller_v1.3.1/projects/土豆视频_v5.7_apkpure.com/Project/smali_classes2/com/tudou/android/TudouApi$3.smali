.class final Lcom/tudou/android/TudouApi$3;
.super Ljava/lang/Thread;
.source "TudouApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/TudouApi;->controlUrlCacheFilesSize(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tudou/android/TudouApi$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 215
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/tudou/android/Youku;->URLCacheDataPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "cacheFilesDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 217
    .local v0, "cacheFiles":[Ljava/io/File;
    invoke-static {}, Lcom/tudou/android/TudouApi;->access$000()I

    move-result v6

    if-nez v6, :cond_4

    .line 218
    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v2, 0x0

    .line 223
    .local v2, "dirSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 224
    int-to-long v6, v2

    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 226
    :cond_2
    const-string v6, "Youku"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->access$002(I)I

    .line 236
    .end local v2    # "dirSize":I
    .end local v4    # "i":I
    :cond_3
    :goto_2
    invoke-static {}, Lcom/tudou/android/TudouApi;->access$000()I

    move-result v6

    const/high16 v7, 0xa00000

    if-lt v6, v7, :cond_0

    .line 237
    const-wide v6, 0x3fd999999999999aL    # 0.4

    array-length v8, v0

    int-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 238
    .local v5, "removeFactor":I
    const-string v6, "java.util.Arrays.useLegacyMergeSort"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    :try_start_0
    new-instance v6, Lcom/tudou/android/TudouApi$FileLastModifSort;

    invoke-direct {v6}, Lcom/tudou/android/TudouApi$FileLastModifSort;-><init>()V

    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v5, :cond_5

    .line 246
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 247
    const-string v6, "Youku"

    const-string v7, "remove a cacheData file"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 230
    .end local v4    # "i":I
    .end local v5    # "removeFactor":I
    :cond_4
    iget-object v6, p0, Lcom/tudou/android/TudouApi$3;->val$file:Ljava/io/File;

    if-eqz v6, :cond_3

    .line 231
    invoke-static {}, Lcom/tudou/android/TudouApi;->access$000()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/tudou/android/TudouApi$3;->val$file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Lcom/tudou/android/TudouApi;->access$002(I)I

    .line 232
    const-string v6, "Youku"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheData after add file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tudou/android/TudouApi;->access$000()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    .restart local v5    # "removeFactor":I
    :catch_0
    move-exception v3

    .line 243
    .local v3, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 249
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :cond_5
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/tudou/android/TudouApi;->access$002(I)I

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 254
    const/4 v2, 0x0

    .line 255
    .restart local v2    # "dirSize":I
    const/4 v4, 0x0

    :goto_4
    array-length v6, v0

    if-ge v4, v6, :cond_6

    .line 256
    int-to-long v6, v2

    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 258
    :cond_6
    const-string v6, "Youku"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheData resize :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
