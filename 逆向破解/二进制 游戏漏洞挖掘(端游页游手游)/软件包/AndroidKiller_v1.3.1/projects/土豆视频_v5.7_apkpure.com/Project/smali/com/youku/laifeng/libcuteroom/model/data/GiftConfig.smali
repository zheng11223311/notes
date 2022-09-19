.class public Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;
.super Ljava/lang/Object;
.source "GiftConfig.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field private static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_GIFTS:Ljava/lang/String; = "gifts"

.field public static final DATA_GIFTS_BIG_ICON:Ljava/lang/String; = "bigIcon"

.field public static final DATA_GIFTS_ID:Ljava/lang/String; = "id"

.field public static final DATA_GIFTS_MID_ICON:Ljava/lang/String; = "midIcon"

.field public static final DATA_GIFTS_NAME:Ljava/lang/String; = "name"

.field public static final DATA_GIFTS_PRICE:Ljava/lang/String; = "price"

.field public static final DATA_GIFTS_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field public static final DATA_MULTICONFIG:Ljava/lang/String; = "multiConfig"

.field public static final DATA_MULTICONFIG_NAME:Ljava/lang/String; = "name"

.field public static final DATA_MULTICONFIG_NUM:Ljava/lang/String; = "num"

.field public static final DATA_SHOW:Ljava/lang/String; = "show"

.field public static final DATA_SHOW_GIFTS:Ljava/lang/String; = "gifts"

.field public static final DATA_SHOW_GIFTS_ID:Ljava/lang/String; = "id"

.field public static final DATA_SHOW_GIFTS_LUCKY:Ljava/lang/String; = "lucky"

.field public static final DATA_SHOW_GIFTS_MULTIPLE_CONFIG_KEY:Ljava/lang/String; = "multiConfKey"

.field public static final DATA_SHOW_GIFTS_MULTIPLE_SELECT:Ljava/lang/String; = "multipleSelect"

.field public static final DATA_SHOW_ID:Ljava/lang/String; = "id"

.field public static final DATA_SHOW_NAME:Ljava/lang/String; = "name"

.field public static final DATA_SIGN:Ljava/lang/String; = "sign"

.field public static final GIFTS_DICT:Ljava/lang/String; = "dict"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final RESP:Ljava/lang/String; = "response"

.field public static final SHOW_DATA_CODE:Ljava/lang/String; = "code"

.field public static final SHOW_DATA_RESOURCES:Ljava/lang/String; = "resources"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lorg/json/JSONObject;

.field private dictRoot:Lorg/json/JSONObject;

.field private message:Ljava/lang/String;

.field private show_data:Lorg/json/JSONArray;

.field private show_sign:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->code:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->message:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    .line 73
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->sign:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_sign:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;

    .line 93
    return-void
.end method

.method private addShowResourcesToDownload(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "mShowGiftResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;

    .line 252
    .local v0, "beanShowResources":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->retrieveLocalShowResourcesZip(Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;)V

    goto :goto_0

    .line 255
    .end local v0    # "beanShowResources":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
    :cond_0
    return-void
.end method

.method private getGift()V
    .locals 6

    .prologue
    .line 321
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getAllGift()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "gifts":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getBigIcon()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xingmeng_gift_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->loadGifts(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    if-nez v0, :cond_1

    .line 97
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getShowResourcesToDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/corncop/virgo/VirgoNetWorkState;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->updateShowGiftResources(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getShowGiftResources()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->addShowResourcesToDownload(Ljava/util/Map;)V

    .line 247
    :cond_0
    return-void
.end method

.method private prepareShowResourcesDownload(Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;)V
    .locals 6
    .param p1, "beanShowResources"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;

    .prologue
    .line 266
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->getDownload()Lcom/youku/laifeng/libcuteroom/model/download/IDownload;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->getLink()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig$1;

    invoke-direct {v2, p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->getTime()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 266
    invoke-interface {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/download/IDownload;->addTask(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;[Ljava/lang/String;)Z

    .line 292
    return-void
.end method

.method private retrieveLocalShowResourcesZip(Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;)V
    .locals 4
    .param p1, "beanShowResources"    # Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;

    .prologue
    .line 258
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftZipResourcesDirPath()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "localFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->prepareShowResourcesDownload(Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;)V

    .line 263
    :cond_0
    return-void
.end method

.method private updateGiftDict()V
    .locals 14

    .prologue
    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftsDirPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "dict"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "dict":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 134
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v11

    invoke-virtual {v11}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getAllGift()Ljava/util/List;

    move-result-object v7

    .line 135
    .local v7, "gifts":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_0

    .line 136
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    .line 137
    .local v6, "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "xingmeng_gift_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getBigIcon()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 139
    .end local v6    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v5, "fout":Ljava/io/FileOutputStream;
    iget-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 142
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v7    # "gifts":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;>;"
    .end local v8    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Lorg/json/JSONException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v9

    .line 154
    .local v9, "length":I
    new-array v0, v9, [B

    .line 155
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 156
    const-string v11, "UTF-8"

    invoke-static {v0, v11}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "res":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 158
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 159
    .end local v0    # "buffer":[B
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "res":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 160
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 165
    .local v2, "e":Lorg/json/JSONException;
    sget-boolean v11, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v11, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateShowResources()V
    .locals 8

    .prologue
    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v0, "args":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_sign:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    if-nez v4, :cond_3

    .line 214
    :cond_0
    const-string v4, "code"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    :goto_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v4

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_SHOW_RESOURCES:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v4, v5, v6, v7}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v3

    .line 223
    .local v3, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :try_start_1
    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    :cond_2
    :goto_1
    return-void

    .line 216
    .end local v3    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_3
    :try_start_2
    const-string v4, "code"

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_sign:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_4
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "object":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_sign:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    if-nez v4, :cond_2

    .line 231
    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 232
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_sign:Ljava/lang/String;

    .line 233
    const-string/jumbo v4, "resources"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 236
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 237
    .restart local v1    # "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAllRoomGiftConfig()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 200
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v1, v4}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    .line 201
    .local v0, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftConfig(Ljava/lang/String;)V

    .line 207
    .end local v0    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftDict()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->dictRoot:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGiftMap()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 188
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v1, v4}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    .line 189
    .local v0, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftConfig(Ljava/lang/String;)V

    .line 195
    .end local v0    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    const-string v2, "gifts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiConfig()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 176
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GIFT_GET:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v1, v4}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    .line 177
    .local v0, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftConfig(Ljava/lang/String;)V

    .line 183
    .end local v0    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    const-string v2, "multiConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getRoomGiftConfigByRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getAllRoomGiftConfig()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "root":Lorg/json/JSONObject;
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 310
    .local v3, "tmp":Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 311
    const/4 v4, 0x0

    .line 317
    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "tmp":Lorg/json/JSONArray;
    :goto_0
    return-object v4

    .line 313
    .restart local v2    # "root":Lorg/json/JSONObject;
    .restart local v3    # "tmp":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "tmp":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    move-object v4, v1

    .line 317
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getShowResources()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateShowResources()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 300
    const-string v0, ""

    .line 302
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->show_data:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public updateGiftConfig(Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "resp":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "resp":Lorg/json/JSONObject;
    .local v2, "resp":Lorg/json/JSONObject;
    move-object v1, v2

    .line 113
    .end local v2    # "resp":Lorg/json/JSONObject;
    .restart local v1    # "resp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v4, "response"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 114
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->code:Ljava/lang/String;

    .line 115
    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->message:Ljava/lang/String;

    .line 116
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    .line 117
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->code:Ljava/lang/String;

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    :goto_1
    return-void

    .line 110
    .end local v3    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->data:Lorg/json/JSONObject;

    const-string/jumbo v5, "sign"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->sign:Ljava/lang/String;

    .line 123
    :cond_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v4

    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGiftMap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->updateGift(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->updateGiftDict()V

    .line 126
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/GiftConfig;->getGift()V

    goto :goto_1
.end method
