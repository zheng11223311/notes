.class public Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "VoteOptionsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;"
        }
    .end annotation
.end field

.field private roomId:I

.field private totalNum:I

.field private voteId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->totalNum:I

    return v0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "totalNum"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->totalNum:I

    .line 31
    const-string v6, "options"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 33
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;)V

    .line 34
    .local v3, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 35
    .local v4, "o":Lorg/json/JSONObject;
    const-string v6, "description"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setDescription(Ljava/lang/String;)V

    .line 36
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setId(I)V

    .line 37
    const-string v6, "num"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setNum(I)V

    .line 38
    const-string v6, "percent"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setPercent(Ljava/lang/String;)V

    .line 39
    const-string v6, "quantity"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setQuantity(I)V

    .line 40
    const-string/jumbo v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->setUrl(Ljava/lang/String;)V

    .line 41
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo;->list:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    .end local v4    # "o":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
