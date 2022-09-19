.class public Lcom/youku/vo/SubscribeBean$UserInfo;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public detaSourceDetails:Ljava/lang/String;

.field public id:I

.field public isVuser:Z

.field public itemInfos:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos;

.field public short_desc:Ljava/lang/String;

.field public smallPic:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public updateCount:I

.field public updateInfo:Ljava/lang/String;

.field public updateTime:J

.field public updateTime_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    .line 91
    return-void
.end method


# virtual methods
.method public getUpdateCount()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    iget v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->detaSourceDetails:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    iput v6, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->detaSourceDetails:Ljava/lang/String;

    const-string v4, "\"1\""

    const-string v5, "\"t1\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\"2\""

    const-string v5, "\"t2\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->detaSourceDetails:Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->detaSourceDetails:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 80
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_3

    const-string v3, "t1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 81
    const-string v3, "t1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "updateCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    .line 83
    :cond_3
    if-eqz v1, :cond_0

    const-string v3, "t2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 84
    const-string v3, "t2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "updateCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    iput v6, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    goto :goto_1
.end method

.method public setUpdateCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateCount:I

    .line 89
    return-void
.end method
