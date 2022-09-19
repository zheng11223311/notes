.class public Lcom/tudou/detail/vo/VoteInfo;
.super Ljava/lang/Object;
.source "VoteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/VoteInfo$VoteItem;,
        Lcom/tudou/detail/vo/VoteInfo$Selection;
    }
.end annotation


# instance fields
.field public mClosed:Z

.field public mDetailUrl:Ljava/lang/String;

.field public mIsPay:Z

.field public mPicLink:Ljava/lang/String;

.field public mPrice:I

.field public mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo$Selection;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;

.field public mTotalNum:Ljava/lang/String;

.field public mVoteItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo$VoteItem;",
            ">;"
        }
    .end annotation
.end field

.field public mVoteType:I

.field public mWidgetId:I

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/vo/VoteInfo;->mClosed:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VoteInfo;
    .locals 9
    .param p0, "root"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    new-instance v2, Lcom/tudou/detail/vo/VoteInfo;

    invoke-direct {v2}, Lcom/tudou/detail/vo/VoteInfo;-><init>()V

    .line 62
    .local v2, "ret":Lcom/tudou/detail/vo/VoteInfo;
    :try_start_0
    const-string v7, "widgetId"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    .line 63
    const-string v7, "title"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mTitle:Ljava/lang/String;

    .line 64
    const-string v7, "price"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mPrice:I

    .line 65
    const-string v7, "isPay"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mIsPay:Z

    .line 66
    const-string v7, "detailUrl"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mDetailUrl:Ljava/lang/String;

    .line 67
    const-string v7, "voteType"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mVoteType:I

    .line 68
    const-string v7, "totalNum"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mTotalNum:Ljava/lang/String;

    .line 69
    const-string v7, "picLink"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mPicLink:Ljava/lang/String;

    .line 71
    const-string v7, "times"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    .local v5, "timesJSON":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 74
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    .local v4, "timeJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/tudou/detail/vo/VoteInfo$Selection;

    invoke-direct {v3}, Lcom/tudou/detail/vo/VoteInfo$Selection;-><init>()V

    .line 76
    .local v3, "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    const-string v7, "startTime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    .line 77
    const-string v7, "endTime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mEnd:I

    .line 78
    iget v7, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mEnd:I

    iget v8, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    sub-int/2addr v7, v8

    const/16 v8, 0x1388

    if-ge v7, v8, :cond_0

    .line 79
    iget v7, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    add-int/lit16 v7, v7, 0x1388

    iput v7, v3, Lcom/tudou/detail/vo/VoteInfo$Selection;->mEnd:I

    .line 81
    :cond_0
    iget-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    .end local v3    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    .end local v4    # "timeJSON":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "voteItems"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 86
    .local v6, "votes":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 87
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 88
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    .restart local v4    # "timeJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    invoke-direct {v3}, Lcom/tudou/detail/vo/VoteInfo$VoteItem;-><init>()V

    .line 90
    .local v3, "s":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    const-string v7, "content"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->content:Ljava/lang/String;

    .line 91
    const-string v7, "picUrl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->picUrl:Ljava/lang/String;

    .line 92
    const-string v7, "voteId"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->voteId:I

    .line 93
    iget-object v7, v2, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "i":I
    .end local v3    # "s":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    .end local v4    # "timeJSON":Lorg/json/JSONObject;
    .end local v5    # "timesJSON":Lorg/json/JSONArray;
    .end local v6    # "votes":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getItemByVoteId(I)Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    .locals 3
    .param p1, "voteId"    # I

    .prologue
    .line 49
    iget-object v2, p0, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    .line 51
    .local v1, "item":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    iget v2, v1, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->voteId:I

    if-ne v2, p1, :cond_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShouldBeShow(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "ret":Z
    iget-boolean v3, p0, Lcom/tudou/detail/vo/VoteInfo;->mClosed:Z

    if-nez v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VoteInfo$Selection;

    .line 108
    .local v2, "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    iget v3, v2, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Lcom/tudou/detail/vo/VoteInfo$Selection;->mEnd:I

    if-gt p1, v3, :cond_0

    .line 109
    const/4 v1, 0x1

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    :cond_1
    return v1
.end method

.method public setClosed(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/detail/vo/VoteInfo;->mClosed:Z

    .line 46
    return-void
.end method
