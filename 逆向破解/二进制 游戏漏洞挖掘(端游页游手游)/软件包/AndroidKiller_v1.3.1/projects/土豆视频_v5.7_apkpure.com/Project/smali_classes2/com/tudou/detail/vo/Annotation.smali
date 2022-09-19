.class public Lcom/tudou/detail/vo/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/Annotation$Selection;
    }
.end annotation


# instance fields
.field public mClosed:Z

.field public mSkipAid:Ljava/lang/String;

.field public mSkipPlId:Ljava/lang/String;

.field public mSkipVid:Ljava/lang/String;

.field public mText:Ljava/lang/String;

.field public mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation$Selection;",
            ">;"
        }
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;

.field public mWidgetId:I

.field public vid:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/Annotation;->mTimes:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/vo/Annotation;->mClosed:Z

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Annotation;
    .locals 8
    .param p0, "root"    # Lorg/json/JSONObject;

    .prologue
    .line 69
    new-instance v2, Lcom/tudou/detail/vo/Annotation;

    invoke-direct {v2}, Lcom/tudou/detail/vo/Annotation;-><init>()V

    .line 71
    .local v2, "ret":Lcom/tudou/detail/vo/Annotation;
    :try_start_0
    const-string v6, "widgetId"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tudou/detail/vo/Annotation;->mWidgetId:I

    .line 72
    const-string v6, "url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mUrl:Ljava/lang/String;

    .line 73
    const-string v6, "text"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mText:Ljava/lang/String;

    .line 74
    const-string v6, "x"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tudou/detail/vo/Annotation;->x:I

    .line 75
    const-string v6, "y"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tudou/detail/vo/Annotation;->y:I

    .line 77
    const-string v6, "aid"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    .line 78
    const-string v6, "item_code"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mSkipVid:Ljava/lang/String;

    .line 79
    const-string v6, "pcode"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mSkipPlId:Ljava/lang/String;

    .line 81
    const-string v6, "times"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 82
    .local v5, "timesJSON":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 84
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    .local v4, "timeJSON":Lorg/json/JSONObject;
    new-instance v3, Lcom/tudou/detail/vo/Annotation$Selection;

    invoke-direct {v3}, Lcom/tudou/detail/vo/Annotation$Selection;-><init>()V

    .line 86
    .local v3, "s":Lcom/tudou/detail/vo/Annotation$Selection;
    const-string v6, "startTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mBegin:I

    .line 87
    const-string v6, "endTime"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mEnd:I

    .line 88
    iget v6, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mEnd:I

    iget v7, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mBegin:I

    sub-int/2addr v6, v7

    const/16 v7, 0x1388

    if-ge v6, v7, :cond_0

    .line 89
    iget v6, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mBegin:I

    add-int/lit16 v6, v6, 0x1388

    iput v6, v3, Lcom/tudou/detail/vo/Annotation$Selection;->mEnd:I

    .line 91
    :cond_0
    iget-object v6, v2, Lcom/tudou/detail/vo/Annotation;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    .end local v3    # "s":Lcom/tudou/detail/vo/Annotation$Selection;
    .end local v4    # "timeJSON":Lorg/json/JSONObject;
    .end local v5    # "timesJSON":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public isShouldBeShow(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "ret":Z
    iget-boolean v3, p0, Lcom/tudou/detail/vo/Annotation;->mClosed:Z

    if-nez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/tudou/detail/vo/Annotation;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Annotation$Selection;

    .line 105
    .local v2, "s":Lcom/tudou/detail/vo/Annotation$Selection;
    iget v3, v2, Lcom/tudou/detail/vo/Annotation$Selection;->mBegin:I

    if-lt p1, v3, :cond_0

    iget v3, v2, Lcom/tudou/detail/vo/Annotation$Selection;->mEnd:I

    if-gt p1, v3, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 111
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lcom/tudou/detail/vo/Annotation$Selection;
    :cond_1
    return v1
.end method

.method public setClosed(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 43
    const-string v0, "yueliang"

    const-string v1, "setClosed"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-boolean p1, p0, Lcom/tudou/detail/vo/Annotation;->mClosed:Z

    .line 45
    return-void
.end method

.method public skip(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipVid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipPlId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 49
    :cond_0
    sget-object v1, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    .line 50
    .local v1, "type":Lcom/tudou/android/Youku$Type;
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipVid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    sget-object v1, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    .line 53
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "video_id"

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string v2, "intent.extra.album.id"

    iget-object v3, p0, Lcom/tudou/detail/vo/Annotation;->mSkipAid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    const-string v2, "playlistCode"

    iget-object v3, p0, Lcom/tudou/detail/vo/Annotation;->mSkipPlId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1, v1, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    .line 66
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "type":Lcom/tudou/android/Youku$Type;
    .end local p1    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    return-void

    .line 54
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "type":Lcom/tudou/android/Youku$Type;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mSkipVid:Ljava/lang/String;

    goto :goto_0

    .line 62
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "type":Lcom/tudou/android/Youku$Type;
    :cond_5
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 63
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/tudou/detail/vo/Annotation;->mUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_1
.end method
