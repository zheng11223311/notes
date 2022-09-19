.class public Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "VisitRankFansInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;
    }
.end annotation


# static fields
.field public static final DAY:Ljava/lang/String; = "day"

.field public static final HISTORY:Ljava/lang/String; = "history"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final WEEK:Ljava/lang/String; = "week"


# instance fields
.field private allList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;",
            ">;"
        }
    .end annotation
.end field

.field private listMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    .line 30
    return-void
.end method

.method private buildList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "src"    # Lorg/json/JSONArray;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, "o":Lorg/json/JSONObject;
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v1, p0, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;I)V

    .line 68
    .local v1, "item":Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;
    iget-wide v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->timestamp:J

    invoke-virtual {v1, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setTimestamp(J)V

    .line 69
    invoke-virtual {v1, p2}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setTag(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setUserId(I)V

    .line 71
    const-string v4, "nickName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setNickName(Ljava/lang/String;)V

    .line 72
    const-string v4, "anchorLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setAnchorLevel(I)V

    .line 73
    const-string v4, "coverUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setCoverUrl(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v4, "showingTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setShowingTime(J)V

    .line 75
    const-string v4, "nextShow"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setNextShow(J)V

    .line 76
    const-string v4, "isShowing"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setShowing(Z)V

    .line 77
    const-string/jumbo v4, "theme"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setTheme(Ljava/lang/String;)V

    .line 78
    const-string v4, "num"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setNum(I)V

    .line 79
    const-string v4, "link"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;->setLink(Ljava/lang/String;)V

    .line 80
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;
    .end local v3    # "o":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    return-object v2
.end method


# virtual methods
.method public getAllList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    return-object v0
.end method

.method public getListMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->timestamp:J

    return-wide v0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 9
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v7, "src":Lorg/json/JSONObject;
    const-string/jumbo v0, "timestamp"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->timestamp:J

    .line 37
    const-string v0, "day"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "day"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;

    const-string/jumbo v2, "\u65e5\u699c\uff1a"

    const-string/jumbo v3, "\u8fc7\u53bb24\u5c0f\u65f6\u7c89\u4e1d\u6570\u589e\u957f\u6700\u5feb\u7684\u64ad\u5ba2"

    const/4 v4, 0x0

    const-string v5, "day"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    const-string v1, "day"

    const-string v2, "day"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "day"

    invoke-direct {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->buildList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    const-string/jumbo v0, "week"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "week"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;

    const-string/jumbo v2, "\u5468\u699c\uff1a"

    const-string/jumbo v3, "\u8fc7\u53bb\u4e00\u5468\u7c89\u4e1d\u6570\u589e\u957f\u6700\u5feb\u7684\u64ad\u5ba2"

    const/4 v4, 0x0

    const-string/jumbo v5, "week"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    const-string/jumbo v1, "week"

    const-string/jumbo v2, "week"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string/jumbo v3, "week"

    invoke-direct {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->buildList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    const-string v0, "month"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "month"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 46
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;

    const-string/jumbo v2, "\u6708\u699c\uff1a"

    const-string/jumbo v3, "\u8fc7\u53bb\u4e00\u4e2a\u6708\u7c89\u4e1d\u6570\u589e\u957f\u6700\u5feb\u7684\u64ad\u5ba2"

    const/4 v4, 0x0

    const-string v5, "month"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    const-string v1, "month"

    const-string v2, "month"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "month"

    invoke-direct {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->buildList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    const-string v0, "history"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "history"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 50
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->allList:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;

    const-string/jumbo v2, "\u603b\u699c\uff1a"

    const-string/jumbo v3, "\u8fc7\u53bb\u7c89\u4e1d\u6570\u589e\u957f\u6700\u5feb\u7684\u64ad\u5ba2"

    const/4 v4, 0x0

    const-string v5, "history"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo$VisitRankItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->listMap:Ljava/util/Map;

    const-string v1, "history"

    const-string v2, "history"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "history"

    invoke-direct {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/VisitRankFansInfo;->buildList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v7    # "src":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "e":Lorg/json/JSONException;
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
