.class public Lcom/tudou/detail/vo/VideoNoticeTop;
.super Ljava/lang/Object;
.source "VideoNoticeTop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/VideoNoticeTop$Selection;
    }
.end annotation


# instance fields
.field private mEffectType:Ljava/lang/String;

.field private mLinkAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPicUrl1:Ljava/lang/String;

.field private mPicUrl2:Ljava/lang/String;

.field private mShowContent:Ljava/lang/String;

.field private mShowDate:Ljava/lang/String;

.field private mShowName:Ljava/lang/String;

.field private mShowTime:Ljava/lang/String;

.field private mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop$Selection;",
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

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mTimes:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VideoNoticeTop;
    .locals 8
    .param p0, "root"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    new-instance v2, Lcom/tudou/detail/vo/VideoNoticeTop;

    invoke-direct {v2}, Lcom/tudou/detail/vo/VideoNoticeTop;-><init>()V

    .line 32
    .local v2, "ret":Lcom/tudou/detail/vo/VideoNoticeTop;
    :try_start_0
    const-string v6, "widgetId"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mWidgetId:I

    .line 33
    const-string v6, "name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mName:Ljava/lang/String;

    .line 34
    const-string v6, "showName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowName:Ljava/lang/String;

    .line 35
    const-string v6, "showTime"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowTime:Ljava/lang/String;

    .line 36
    const-string v6, "showDate"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowDate:Ljava/lang/String;

    .line 37
    const-string v6, "showContent"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowContent:Ljava/lang/String;

    .line 38
    const-string v6, "effectType"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mEffectType:Ljava/lang/String;

    .line 39
    const-string v6, "linkAddress"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mLinkAddress:Ljava/lang/String;

    .line 40
    const-string v6, "picUrl1"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl1:Ljava/lang/String;

    .line 41
    const-string v6, "picUrl2"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl2:Ljava/lang/String;

    .line 43
    const-string v6, "times"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 44
    .local v5, "timesJSON":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 46
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    .local v4, "timeJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;

    invoke-direct {v3}, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;-><init>()V

    .line 48
    .local v3, "s":Lcom/tudou/detail/vo/VideoNoticeTop$Selection;
    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;->mBegin:I

    .line 49
    const-string v6, "endTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;->mEnd:I

    .line 50
    iget-object v6, v2, Lcom/tudou/detail/vo/VideoNoticeTop;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    .end local v3    # "s":Lcom/tudou/detail/vo/VideoNoticeTop$Selection;
    .end local v4    # "timeJSON":Lorg/json/JSONObject;
    .end local v5    # "timesJSON":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getEffectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mEffectType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mLinkAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl1:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl2:Ljava/lang/String;

    return-object v0
.end method

.method public getShowContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowContent:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop$Selection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mWidgetId:I

    return v0
.end method

.method public isShouldBeShow(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;

    .line 63
    .local v2, "s":Lcom/tudou/detail/vo/VideoNoticeTop$Selection;
    iget v3, v2, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;->mBegin:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Lcom/tudou/detail/vo/VideoNoticeTop$Selection;->mEnd:I

    if-gt p1, v3, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 68
    .end local v2    # "s":Lcom/tudou/detail/vo/VideoNoticeTop$Selection;
    :cond_1
    return v1
.end method

.method public setEffectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectType"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mEffectType:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setLinkAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkAddress"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mLinkAddress:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPicUrl1(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl1"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl1:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setPicUrl2(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl2"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mPicUrl2:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setShowDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "showDate"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowDate:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0
    .param p1, "showName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setShowTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "showTime"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mShowTime:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop$Selection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop$Selection;>;"
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mTimes:Ljava/util/ArrayList;

    .line 162
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->vid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0
    .param p1, "widgetId"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/tudou/detail/vo/VideoNoticeTop;->mWidgetId:I

    .line 90
    return-void
.end method
