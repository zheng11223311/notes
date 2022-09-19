.class public abstract Lcom/youku/gamecenter/services/GetResponseService;
.super Ljava/lang/Object;
.source "GetResponseService.java"

# interfaces
.implements Lcom/youku/gamecenter/services/NetService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;,
        Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field protected mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

.field protected mResponse:Lcom/youku/gamecenter/data/IResponseable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/youku/gamecenter/services/GetResponseService$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetResponseService$1;-><init>(Lcom/youku/gamecenter/services/GetResponseService;)V

    iput-object v0, p0, Lcom/youku/gamecenter/services/GetResponseService;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method private addSliderH5ActivityInfo(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "object"    # Lorg/json/JSONObject;
    .param p3, "sliderSource"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v1, "h5_activity"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseH5ActivityInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    move-result-object v0

    .line 616
    .local v0, "activityInfo":Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getGameJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 848
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 852
    :goto_0
    return-object v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static getJsonArraySize(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 372
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v1

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getValidData(DLorg/json/JSONObject;Ljava/lang/String;)D
    .locals 5
    .param p1, "oldValue"    # D
    .param p3, "jsonObject"    # Lorg/json/JSONObject;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {p3, p4}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonDoubleValue(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    .line 515
    .local v0, "newValue":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 519
    .end local v0    # "newValue":D
    :goto_0
    return-wide v0

    .restart local v0    # "newValue":D
    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method private getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "oldValue"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {p2, p3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "newValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    .end local v0    # "newValue":Ljava/lang/String;
    .end local p1    # "oldValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "newValue":Ljava/lang/String;
    .restart local p1    # "oldValue":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "oldValue":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private parseAppTags(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 462
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 484
    :cond_0
    return-object v1

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "PlayFlow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseTags error! json name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 468
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 470
    .local v4, "item":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 466
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    :cond_3
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "key":Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "value":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 481
    new-instance v7, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    invoke-direct {v7, v5, v6}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private parseApps(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 775
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 776
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 798
    :cond_0
    :goto_0
    return-object v4

    .line 779
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 781
    .local v1, "gameArray":Lorg/json/JSONArray;
    if-nez v1, :cond_2

    .line 782
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 785
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 788
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 790
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;-><init>()V

    .line 791
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    const-string v6, "rec_word"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->rec_word:Ljava/lang/String;

    .line 792
    const-string/jumbo v6, "seq"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->seq:I

    .line 793
    const-string v6, "detail"

    invoke-direct {p0, v5, v6}, Lcom/youku/gamecenter/services/GetResponseService;->getGameJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 794
    .local v2, "gameObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v2, v8}, Lcom/youku/gamecenter/services/GetResponseService;->parseGameInfo(Lorg/json/JSONObject;Z)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    .line 795
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private parseBoxesInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, -0x1

    .line 705
    const-string v4, "boxes"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 735
    :cond_0
    return-void

    .line 709
    :cond_1
    const-string v4, "boxes"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 711
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 715
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 716
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 717
    .local v3, "object":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 715
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_2
    new-instance v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/HomePageBoxInfo;-><init>()V

    .line 722
    .local v1, "box":Lcom/youku/gamecenter/data/HomePageBoxInfo;
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->id:Ljava/lang/String;

    .line 723
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->name:Ljava/lang/String;

    .line 724
    const-string v4, "categoryid"

    invoke-direct {p0, v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseCategoryId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->categoryId:Ljava/lang/String;

    .line 725
    const-string v4, "games"

    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->list:Ljava/util/List;

    .line 726
    const-string v4, "card_type"

    invoke-static {v3, v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_type:I

    .line 727
    const-string v4, "display_num"

    invoke-static {v3, v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->display_num:I

    .line 728
    const-string v4, "operation_type"

    invoke-static {v3, v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->operation_type:I

    .line 729
    const-string v4, "card_image"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->card_image:Ljava/lang/String;

    .line 730
    const-string v4, "h5_activity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseH5ActivityInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->h5ActivitiesInfo:Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    .line 731
    const-string v4, "h5_url"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageBoxInfo;->h5_url:Ljava/lang/String;

    .line 733
    iget-object v4, p1, Lcom/youku/gamecenter/data/HomePageInfo;->boxes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseCategoryId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static parseDoubleValue(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonDoubleValue(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static parseFirstVidItemFromArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/youku/gamecenter/data/VidItemInfo;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v2, Lcom/youku/gamecenter/data/VidItemInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/data/VidItemInfo;-><init>()V

    .line 491
    .local v2, "info":Lcom/youku/gamecenter/data/VidItemInfo;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 492
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 507
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 496
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 498
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "source"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/youku/gamecenter/data/VidItemInfo;->source:I

    .line 499
    const-string/jumbo v4, "title"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/youku/gamecenter/data/VidItemInfo;->title:Ljava/lang/String;

    .line 500
    const-string/jumbo v4, "type"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/youku/gamecenter/data/VidItemInfo;->type:I

    .line 501
    const-string/jumbo v4, "url"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/youku/gamecenter/data/VidItemInfo;->url:Ljava/lang/String;

    .line 502
    const-string/jumbo v4, "vid"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/youku/gamecenter/data/VidItemInfo;->vid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "PlayFlow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseFirstVidItemFromArray error! json name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseGameVidInfos(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    .local v0, "currentSize":I
    const-string/jumbo v2, "vidinfos"

    invoke-static {p2, v2}, Lcom/youku/gamecenter/services/GetResponseService;->getJsonArraySize(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "newSize":I
    if-le v1, v0, :cond_0

    .line 365
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 366
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    const-string/jumbo v3, "vidinfos"

    invoke-static {v2, p2, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseVidInfos(Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseGameVideoVids(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "object"    # Lorg/json/JSONObject;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 338
    if-nez p1, :cond_1

    .line 353
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->vids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 344
    const-string/jumbo v3, "vids"

    invoke-static {p2, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "vidStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "vids":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 351
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->vids:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 860
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # I

    .prologue
    .line 865
    invoke-static {p0, p1, p2}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private parseRecimgss(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 675
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->recimgs:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->recimgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 692
    :cond_0
    return-void

    .line 679
    :cond_1
    const-string v3, "recimgs"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 681
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 684
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 685
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 686
    .local v2, "pics":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 684
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    :cond_2
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->recimgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseRecomInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 745
    const-string v4, "editor_recs"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    const-string v4, "editor_recs"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 751
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 755
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 756
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 757
    .local v3, "object":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 761
    :cond_2
    new-instance v1, Lcom/youku/gamecenter/data/HomePageRecomInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/HomePageRecomInfo;-><init>()V

    .line 762
    .local v1, "box":Lcom/youku/gamecenter/data/HomePageRecomInfo;
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->name:Ljava/lang/String;

    .line 764
    const-string v4, "apps"

    invoke-direct {p0, v3, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseApps(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    .line 766
    iget-object v4, p1, Lcom/youku/gamecenter/data/HomePageInfo;->editor_recs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseSlidePics(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 657
    const-string/jumbo v3, "screenshot"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 659
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 671
    :cond_0
    return-void

    .line 662
    :cond_1
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 663
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 664
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    .local v2, "pics":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 663
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    :cond_2
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseSlidesInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 803
    const-string/jumbo v1, "scollers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    const-string/jumbo v1, "scollers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 809
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 813
    const-string/jumbo v1, "scollers"

    const/4 v2, 0x1

    const-string v3, "home_fragment"

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/youku/gamecenter/data/HomePageInfo;->slides:Ljava/util/List;

    goto :goto_0
.end method

.method private parseTabsInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 817
    const-string/jumbo v4, "tabs"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 843
    :cond_0
    return-void

    .line 821
    :cond_1
    const-string/jumbo v4, "tabs"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 823
    .local v2, "tabArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 828
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 829
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 827
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_2
    new-instance v3, Lcom/youku/gamecenter/data/TabInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/TabInfo;-><init>()V

    .line 834
    .local v3, "tabInfo":Lcom/youku/gamecenter/data/TabInfo;
    const-string/jumbo v4, "value"

    invoke-static {v1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/gamecenter/data/TabInfo;->id:I

    .line 835
    const-string v4, "name"

    invoke-static {v1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/TabInfo;->name:Ljava/lang/String;

    .line 837
    iget v4, v3, Lcom/youku/gamecenter/data/TabInfo;->id:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 838
    iput v0, p1, Lcom/youku/gamecenter/data/HomePageInfo;->homePageIndex:I

    .line 840
    :cond_3
    iget-object v4, p1, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseTags(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    const/4 v0, 0x0

    .line 240
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "PlayFlow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseTags error! json name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 251
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 252
    .local v4, "item":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 249
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    :cond_3
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "key":Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "value":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    new-instance v7, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    invoke-direct {v7, v5, v6}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    iput-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    goto :goto_1
.end method

.method private parseType(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 322
    :goto_0
    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "PlayFlow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseType error! json name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 328
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->category_map_type_id:Ljava/lang/String;

    .line 333
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->category_map_type_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->category_map_type:Ljava/lang/String;

    goto :goto_1
.end method

.method static parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-static {p0, p1}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseVidInfos(Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/VidItemInfo;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "vidInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/VidItemInfo;>;"
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 432
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 448
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 435
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 436
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 437
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/gamecenter/data/VidItemInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/VidItemInfo;-><init>()V

    .line 438
    .local v3, "info":Lcom/youku/gamecenter/data/VidItemInfo;
    const-string/jumbo v5, "source"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->source:I

    .line 439
    const-string/jumbo v5, "title"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->title:Ljava/lang/String;

    .line 440
    const-string/jumbo v5, "type"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->type:I

    .line 441
    const-string/jumbo v5, "url"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->url:Ljava/lang/String;

    .line 442
    const-string/jumbo v5, "vid"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->vid:Ljava/lang/String;

    .line 443
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/youku/gamecenter/data/VidItemInfo;
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "PlayFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseAppTags error! json name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v1, "fetchResponse  url  as following !!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/services/GetResponseService;->logs(Ljava/lang/String;)V

    .line 56
    const-string v1, "PlayFlow"

    invoke-static {v1, p1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/youku/gamecenter/services/GetResponseService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    .line 58
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->getTaskGetResponseUrl(Ljava/lang/String;)Lcom/youku/gamecenter/services/TaskGetResponseUrl;

    move-result-object v0

    .line 59
    .local v0, "taskGameUrl":Lcom/youku/gamecenter/services/TaskGetResponseUrl;
    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->setSuccess(I)V

    .line 60
    invoke-virtual {v0, v3}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->setFail(I)V

    .line 61
    new-array v1, v2, [Landroid/os/Handler;

    iget-object v2, p0, Lcom/youku/gamecenter/services/GetResponseService;->handler:Landroid/os/Handler;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;->execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 62
    return-void
.end method

.method protected getHomePageInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/HomePageInfo;
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 695
    new-instance v0, Lcom/youku/gamecenter/data/HomePageInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HomePageInfo;-><init>()V

    .line 696
    .local v0, "homePageInfo":Lcom/youku/gamecenter/data/HomePageInfo;
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseTabsInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V

    .line 697
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseBoxesInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V

    .line 698
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseSlidesInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V

    .line 699
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseRecomInfo(Lcom/youku/gamecenter/data/HomePageInfo;Lorg/json/JSONObject;)V

    .line 700
    const-string v1, "page_count"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/data/HomePageInfo;->page_count:I

    .line 701
    return-object v0
.end method

.method protected getTaskGetResponseUrl(Ljava/lang/String;)Lcom/youku/gamecenter/services/TaskGetResponseUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;

    invoke-direct {v0, p1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 884
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetResponseService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetResponseService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    invoke-interface {v0, p1}, Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;->onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V

    goto :goto_0
.end method

.method public abstract onSuccess()V
.end method

.method public final parseGameInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/gamecenter/services/GetResponseService;->parseGameInfo(Lorg/json/JSONObject;Z)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    return-object v0
.end method

.method public final parseGameInfo(Lorg/json/JSONObject;Z)Lcom/youku/gamecenter/data/GameInfo;
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "isSlider"    # Z

    .prologue
    const/4 v6, 0x0

    .line 134
    if-nez p1, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const-string v3, "package"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 142
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    const-string/jumbo v3, "ver_code"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 144
    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 146
    const-string v3, "id"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 147
    const-string v3, "appname"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/util/JsonUtils;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    .line 148
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    const-string/jumbo v4, "type"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    .line 149
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->short_type:Ljava/lang/String;

    const-string/jumbo v4, "short_type"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->short_type:Ljava/lang/String;

    .line 151
    const-string/jumbo v3, "update_time"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->update_time:Ljava/lang/String;

    .line 152
    const-string v3, "logo"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 153
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    const-string v4, "large_icon"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    .line 155
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    const-string v4, "large_logo"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    .line 157
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    const-string/jumbo v4, "short_desc"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->short_desc:Ljava/lang/String;

    .line 159
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->rec_words:Ljava/lang/String;

    const-string v4, "rec_words"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->rec_words:Ljava/lang/String;

    .line 161
    const-string v3, "desc"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->desc:Ljava/lang/String;

    .line 163
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    const-string/jumbo v4, "size"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    .line 165
    iget-wide v4, v0, Lcom/youku/gamecenter/data/GameInfo;->score:D

    const-string/jumbo v3, "score"

    invoke-direct {p0, v4, v5, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(DLorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/youku/gamecenter/data/GameInfo;->score:D

    .line 167
    const-string v3, "is_app"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    const-string v3, "is_app"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->is_app:I

    .line 170
    :cond_2
    const-string/jumbo v3, "total_downloads"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    const-string/jumbo v3, "total_downloads"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "totalDownload":I
    invoke-static {v2}, Lcom/youku/gamecenter/util/JsonUtils;->switchAmounts(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    .line 176
    .end local v2    # "totalDownload":I
    :cond_3
    const-string/jumbo v3, "specific_downloads"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const-string/jumbo v3, "specific_downloads"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/youku/gamecenter/util/JsonUtils;->switchAmounts(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->specific_downloads:Ljava/lang/String;

    .line 183
    :cond_4
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    const-string v4, "download_link"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    .line 185
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    const-string/jumbo v4, "recommend_type"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->recommend_type:Ljava/lang/String;

    .line 187
    const-string v3, "package"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 188
    const-string v3, "activity"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->activity:Ljava/lang/String;

    .line 189
    const-string/jumbo v3, "version"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    .line 190
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    const-string v4, "on_board"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    .line 191
    const-string v3, "is_promotion"

    invoke-static {p1, v3, v6}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->is_promotion:I

    .line 193
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_algInfo:Ljava/lang/String;

    const-string v4, "bigdata_algInfo"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_algInfo:Ljava/lang/String;

    .line 195
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_dma:Ljava/lang/String;

    const-string v4, "bigdata_dma"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_dma:Ljava/lang/String;

    .line 197
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_type:Ljava/lang/String;

    const-string v4, "bigdata_type"

    invoke-direct {p0, v3, p1, v4}, Lcom/youku/gamecenter/services/GetResponseService;->getValidData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->bigdata_type:Ljava/lang/String;

    .line 200
    const-string/jumbo v3, "vids"

    invoke-direct {p0, v0, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseGameVideoVids(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseGameVidInfos(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V

    .line 203
    const-string/jumbo v3, "tags"

    invoke-direct {p0, v0, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseTags(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 205
    const-string v3, "category_map"

    invoke-direct {p0, v0, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseType(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 207
    const-string v3, "h5_activities"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    const-string v3, "h5_activities"

    invoke-virtual {p0, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseH5ActivityList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    .line 210
    :cond_5
    const-string v3, "new_vids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    const-string v3, "new_vids"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseFirstVidItemFromArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/youku/gamecenter/data/VidItemInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->new_vids_item:Lcom/youku/gamecenter/data/VidItemInfo;

    .line 215
    :cond_6
    iput-boolean v6, v0, Lcom/youku/gamecenter/data/GameInfo;->isSlider:Z

    .line 216
    if-eqz p2, :cond_7

    .line 217
    const-string/jumbo v3, "scoller"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->scoller:Ljava/lang/String;

    .line 218
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/youku/gamecenter/data/GameInfo;->isSlider:Z

    .line 221
    :cond_7
    const-string/jumbo v3, "slide_pic_type"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->slide_pic_type:I

    .line 222
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseSlidePics(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/youku/gamecenter/services/GetResponseService;->parseRecimgss(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;)V

    .line 226
    const-string/jumbo v3, "selected_card_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const-string/jumbo v3, "selected_card_url"

    invoke-static {p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->selected_card_url:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/youku/gamecenter/services/GetResponseService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "isSlider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/youku/gamecenter/services/GetResponseService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "isSlider"    # Z
    .param p4, "sliderSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 586
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    :cond_0
    :goto_0
    return-object v3

    .line 590
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 592
    .local v0, "gameArray":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    .line 593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 596
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 599
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 600
    .local v4, "object":Lorg/json/JSONObject;
    invoke-virtual {p0, v4, p3}, Lcom/youku/gamecenter/services/GetResponseService;->parseGameInfo(Lorg/json/JSONObject;Z)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 601
    .local v1, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v1, :cond_3

    .line 598
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 604
    :cond_3
    invoke-direct {p0, v1, v4, p4}, Lcom/youku/gamecenter/services/GetResponseService;->addSliderH5ActivityInfo(Lcom/youku/gamecenter/data/GameInfo;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 605
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected parseH5ActivityInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 304
    new-instance v0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;-><init>()V

    .line 305
    .local v0, "info":Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    if-nez p1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 311
    .end local v0    # "info":Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    :goto_0
    return-object v0

    .line 308
    .restart local v0    # "info":Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    :cond_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->id:Ljava/lang/String;

    .line 309
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->name:Ljava/lang/String;

    .line 310
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseH5ActivityList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;>;"
    const/4 v0, 0x0

    .line 275
    .local v0, "array":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 299
    :cond_0
    return-object v1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "PlayFlow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseH5ActivityList error! json name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 286
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 287
    .local v5, "item":Lorg/json/JSONObject;
    if-nez v5, :cond_3

    .line 284
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_3
    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/services/GetResponseService;->parseH5ActivityInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    move-result-object v4

    .line 292
    .local v4, "info":Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    if-eqz v4, :cond_2

    .line 296
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final parsePresentInfo(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/youku/gamecenter/present/PresentInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 387
    if-nez p2, :cond_1

    .line 388
    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    new-instance v0, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/present/PresentInfo;-><init>()V

    .line 393
    .local v0, "presentInfo":Lcom/youku/gamecenter/present/PresentInfo;
    const-string v1, "id"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    .line 394
    const-string v1, "logo"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_icon:Ljava/lang/String;

    .line 395
    const-string v1, "app_id"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_id:Ljava/lang/String;

    .line 396
    const-string v1, "name"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    .line 397
    const-string/jumbo v1, "total_num"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->total_num:I

    .line 398
    const-string v1, "available_num"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->available_num:I

    .line 399
    const-string/jumbo v1, "use_start_time"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->use_start_time:Ljava/lang/String;

    .line 400
    const-string/jumbo v1, "use_end_time"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->use_end_time:Ljava/lang/String;

    .line 401
    const-string v1, "available_ratio"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->available_ratio:Ljava/lang/String;

    .line 402
    const-string v1, "desc"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->desc:Ljava/lang/String;

    .line 403
    const-string v1, "instruction"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->instruction:Ljava/lang/String;

    .line 404
    const-string/jumbo v1, "start_time"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->start_time:Ljava/lang/String;

    .line 405
    const-string v1, "end_time"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->end_time:Ljava/lang/String;

    .line 406
    iget v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->available_num:I

    int-to-float v1, v1

    iget v2, v0, Lcom/youku/gamecenter/present/PresentInfo;->total_num:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    .line 408
    const-string/jumbo v1, "status"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/youku/gamecenter/present/PresentStatus;->switchPresentStatus(I)Lcom/youku/gamecenter/present/PresentStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 410
    const-string v1, "app_name"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_name:Ljava/lang/String;

    .line 411
    const-string v1, "app_package"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_package:Ljava/lang/String;

    .line 412
    const-string v1, "app_url"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_url:Ljava/lang/String;

    .line 413
    const-string v1, "app_vercode"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_vercode:I

    .line 414
    const-string v1, "app_version"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_version:Ljava/lang/String;

    .line 415
    const-string v1, "app_type"

    invoke-static {p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_type:Ljava/lang/String;

    .line 416
    const-string v1, "app_tags"

    invoke-direct {p0, p2, v1}, Lcom/youku/gamecenter/services/GetResponseService;->parseAppTags(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    .line 418
    iget-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->isPresentOccupied(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    sget-object v1, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v1, v0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    goto/16 :goto_0
.end method

.method public final parsePresentList(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 631
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 632
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 652
    :cond_0
    :goto_0
    return-object v2

    .line 635
    :cond_1
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 637
    .local v0, "gameArray":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    .line 638
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 641
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 644
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 645
    .local v3, "object":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v3}, Lcom/youku/gamecenter/services/GetResponseService;->parsePresentInfo(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v4

    .line 646
    .local v4, "presentInfo":Lcom/youku/gamecenter/present/PresentInfo;
    if-nez v4, :cond_3

    .line 643
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public abstract parseResponse(Ljava/lang/String;)V
.end method

.method public parseResponseError(Ljava/lang/String;)Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;-><init>()V

    .line 121
    .local v0, "info":Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;
    return-object v0
.end method

.method public setListener(Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetResponseService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    .line 93
    return-void
.end method
