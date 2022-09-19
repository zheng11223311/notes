.class public Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
.super Ljava/lang/Object;
.source "Gifts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;,
        Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;,
        Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;,
        Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;,
        Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    }
.end annotation


# static fields
.field public static final GIFT_BASE:Ljava/lang/String; = "xingmeng_gift_"

.field public static final GIFT_STAR:Ljava/lang/String; = "livehouse_gift_star"

.field private static final SHOW_DATA_RESOURCES_ID:Ljava/lang/String; = "id"

.field private static final SHOW_DATA_RESOURCES_LINK:Ljava/lang/String; = "link"

.field private static final SHOW_DATA_RESOURCES_TIME:Ljava/lang/String; = "time"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mAllGift:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;",
            ">;"
        }
    .end annotation
.end field

.field private mGifts:Lorg/json/JSONObject;

.field private mGiftsConfig:Lorg/json/JSONObject;

.field private mListGifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;",
            ">;"
        }
    .end annotation
.end field

.field private mListRoomGifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;",
            ">;"
        }
    .end annotation
.end field

.field private mListRoomLuxuryGifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;",
            ">;"
        }
    .end annotation
.end field

.field private mShowGiftResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGifts:Lorg/json/JSONObject;

    .line 22
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomLuxuryGifts:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGiftsConfig:Lorg/json/JSONObject;

    .line 25
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomLuxuryGifts:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mShowGiftResources:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    if-nez v0, :cond_1

    .line 45
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    return-object v0
.end method

.method public getAllGiftByName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    return-object v0
.end method

.method public getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    .line 174
    .local v1, "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    .end local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :goto_1
    return-object v1

    .line 172
    .restart local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :cond_1
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    goto :goto_1
.end method

.method public getGiftByName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    .line 184
    .local v1, "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    .end local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :goto_1
    return-object v1

    .line 182
    .restart local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "result":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;
    :cond_1
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    goto :goto_1
.end method

.method public getGiftConfigById(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;>;"
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGiftsConfig:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 194
    .local v0, "config":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 196
    .local v3, "tmp":Lorg/json/JSONObject;
    new-instance v4, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;

    const-string v5, "num"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v4, "tmp1":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "tmp":Lorg/json/JSONObject;
    .end local v4    # "tmp1":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGiftConfig;
    :cond_0
    return-object v2
.end method

.method public getLuxuryGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomLuxuryGifts:Ljava/util/List;

    return-object v0
.end method

.method public getNormalGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    return-object v0
.end method

.method public getShowGiftResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mShowGiftResources:Ljava/util/Map;

    return-object v0
.end method

.method public getShowResoucesById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mShowGiftResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;

    return-object v0
.end method

.method public updateGift(Ljava/lang/String;)V
    .locals 14
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGifts:Lorg/json/JSONObject;

    .line 67
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGifts:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 68
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 70
    .local v11, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGifts:Lorg/json/JSONObject;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 71
    .local v12, "value":Lorg/json/JSONObject;
    iget-object v13, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListGifts:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    const-string v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "bigIcon"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "midIcon"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "smallIcon"

    .line 72
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "name"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "price"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    .line 71
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 75
    .local v9, "e":Lorg/json/JSONException;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public updateGiftsConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mGiftsConfig:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateRoomGift(Ljava/lang/String;)V
    .locals 25
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 81
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomLuxuryGifts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 83
    if-nez p1, :cond_1

    .line 84
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;

    const-string/jumbo v5, "star"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "0"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    .line 85
    .local v3, "star":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    new-instance v13, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;

    const-string v5, "nil"

    const-string v6, "1"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v13, "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    iget-object v5, v13, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->giftList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    .end local v3    # "star":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .end local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    :try_start_0
    new-instance v15, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 94
    .local v15, "gifts":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    .line 95
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 96
    .local v21, "tmp":Lorg/json/JSONObject;
    const-string v5, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, "id":Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 98
    .local v19, "name":Ljava/lang/String;
    const-string v5, "gifts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 100
    .local v22, "tmp1":Lorg/json/JSONArray;
    new-instance v13, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v13, v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .restart local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_5

    .line 102
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 103
    .local v12, "bean":Lorg/json/JSONObject;
    new-instance v4, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;

    const-string v5, "id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "lucky"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v5, "multipleSelect"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v5, "multiConfKey"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    .line 104
    .local v4, "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    const-string v5, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    :goto_3
    const-string v5, "4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 128
    iget-object v5, v13, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->giftList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 106
    :cond_4
    const-string v5, "4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;

    .line 110
    .local v20, "temp":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->giftList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    .end local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .end local v12    # "bean":Lorg/json/JSONObject;
    .end local v20    # "temp":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    :cond_5
    const-string v5, "4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 120
    .restart local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .restart local v12    # "bean":Lorg/json/JSONObject;
    :cond_7
    const-string v5, "3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomLuxuryGifts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 135
    .end local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .end local v12    # "bean":Lorg/json/JSONObject;
    .end local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    .end local v15    # "gifts":Lorg/json/JSONArray;
    .end local v16    # "i":I
    .end local v17    # "id":Ljava/lang/String;
    .end local v18    # "j":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "tmp":Lorg/json/JSONObject;
    .end local v22    # "tmp1":Lorg/json/JSONArray;
    :catch_0
    move-exception v14

    .line 136
    .local v14, "e":Lorg/json/JSONException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_8

    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v14    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v5, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;

    const-string/jumbo v7, "star"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "0"

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mAllGift:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;

    .line 143
    .restart local v20    # "temp":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;->giftList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v5, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;

    const-string/jumbo v7, "star"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "0"

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    .end local v20    # "temp":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    .restart local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .restart local v12    # "bean":Lorg/json/JSONObject;
    .restart local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    .restart local v15    # "gifts":Lorg/json/JSONArray;
    .restart local v16    # "i":I
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v18    # "j":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "tmp":Lorg/json/JSONObject;
    .restart local v22    # "tmp1":Lorg/json/JSONArray;
    :cond_9
    :try_start_1
    const-string v5, "5"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 137
    .end local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .end local v12    # "bean":Lorg/json/JSONObject;
    .end local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    .end local v15    # "gifts":Lorg/json/JSONArray;
    .end local v16    # "i":I
    .end local v17    # "id":Ljava/lang/String;
    .end local v18    # "j":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "tmp":Lorg/json/JSONObject;
    .end local v22    # "tmp1":Lorg/json/JSONArray;
    :catch_1
    move-exception v14

    .line 138
    .local v14, "e":Ljava/lang/NullPointerException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_8

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 125
    .end local v14    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "gift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanRoomGift;
    .restart local v12    # "bean":Lorg/json/JSONObject;
    .restart local v13    # "categoryGift":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanCategoryGift;
    .restart local v15    # "gifts":Lorg/json/JSONArray;
    .restart local v16    # "i":I
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v18    # "j":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "tmp":Lorg/json/JSONObject;
    .restart local v22    # "tmp1":Lorg/json/JSONArray;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mListRoomGifts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method public updateShowGiftResources(Ljava/lang/String;)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 205
    .local v8, "root":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    .line 206
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 207
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 208
    .local v9, "tmp":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 209
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;

    const-string v1, "id"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "link"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "time"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/Gifts;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/Gifts$1;)V

    .line 210
    .local v0, "item":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->mShowGiftResources:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "item":Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanShowResources;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 214
    .end local v7    # "i":I
    .end local v8    # "root":Lorg/json/JSONArray;
    .end local v9    # "tmp":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 215
    .local v6, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 217
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method
