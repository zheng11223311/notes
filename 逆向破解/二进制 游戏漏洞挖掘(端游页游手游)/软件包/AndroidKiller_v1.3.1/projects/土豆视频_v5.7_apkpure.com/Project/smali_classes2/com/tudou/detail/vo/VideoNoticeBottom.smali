.class public Lcom/tudou/detail/vo/VideoNoticeBottom;
.super Ljava/lang/Object;
.source "VideoNoticeBottom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;,
        Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;
    }
.end annotation


# instance fields
.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionType:Ljava/lang/String;

.field private mLineType:Ljava/lang/String;

.field private mLinkAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPicUrl:Ljava/lang/String;

.field private mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetId:I

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mTimes:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mContents:Ljava/util/ArrayList;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VideoNoticeBottom;
    .locals 11
    .param p0, "root"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    new-instance v4, Lcom/tudou/detail/vo/VideoNoticeBottom;

    invoke-direct {v4}, Lcom/tudou/detail/vo/VideoNoticeBottom;-><init>()V

    .line 50
    .local v4, "ret":Lcom/tudou/detail/vo/VideoNoticeBottom;
    :try_start_0
    const-string v9, "widgetId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mWidgetId:I

    .line 51
    const-string v9, "name"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mName:Ljava/lang/String;

    .line 52
    const-string v9, "linkAddress"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLinkAddress:Ljava/lang/String;

    .line 53
    const-string v9, "directionType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mDirectionType:Ljava/lang/String;

    .line 54
    const-string v9, "picUrl"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mPicUrl:Ljava/lang/String;

    .line 55
    const-string v9, "lineType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLineType:Ljava/lang/String;

    .line 57
    const-string v9, "times"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 58
    .local v8, "timesJSON":Lorg/json/JSONArray;
    if-eqz v8, :cond_0

    .line 59
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 60
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 61
    .local v7, "timeJSON":Lorg/json/JSONObject;
    new-instance v5, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;

    invoke-direct {v5}, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;-><init>()V

    .line 62
    .local v5, "s":Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;
    const-string v9, "startTime"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;->mBegin:I

    .line 63
    const-string v9, "endTime"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;->mEnd:I

    .line 64
    iget-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "i":I
    .end local v5    # "s":Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;
    .end local v7    # "timeJSON":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "voteItems"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    .local v1, "contentsJSON":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 70
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 71
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "contentJSON":Lorg/json/JSONObject;
    new-instance v6, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;

    invoke-direct {v6}, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;-><init>()V

    .line 73
    .local v6, "t":Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;
    const-string v9, "lineContent"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;->mLineContent:Ljava/lang/String;

    .line 74
    const-string v9, "lineId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;->mLineId:I

    .line 75
    iget-object v9, v4, Lcom/tudou/detail/vo/VideoNoticeBottom;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "contentJSON":Lorg/json/JSONObject;
    .end local v1    # "contentsJSON":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "t":Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;
    .end local v8    # "timesJSON":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDirectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mDirectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getLineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLineType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLinkAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mWidgetId:I

    return v0
.end method

.method public isShouldBeShow(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;

    .line 39
    .local v2, "s":Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;
    iget v3, v2, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;->mBegin:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;->mEnd:I

    if-gt p1, v3, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 44
    .end local v2    # "s":Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;
    :cond_1
    return v1
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;>;"
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mContents:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public setDirectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "directionType"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mDirectionType:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setLineType(Ljava/lang/String;)V
    .locals 0
    .param p1, "lineType"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLineType:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setLinkAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkAddress"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mLinkAddress:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mPicUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom$Selection;>;"
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mTimes:Ljava/util/ArrayList;

    .line 147
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->vid:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0
    .param p1, "widgetId"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/tudou/detail/vo/VideoNoticeBottom;->mWidgetId:I

    .line 99
    return-void
.end method
