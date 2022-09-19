.class public Lcom/youku/vo/Podcast$Users$Subs;
.super Ljava/lang/Object;
.source "Podcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Podcast$Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Subs"
.end annotation


# instance fields
.field public detaSourceDetails:Ljava/lang/String;

.field public id:I

.field public isRunning:Z

.field public isVuser:Z

.field public isdelete:Z

.field public issubs:Z

.field public lastItemTitle:Ljava/lang/String;

.field public smallPic:Ljava/lang/String;

.field public subedNum:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/Podcast$Users;

.field public title:Ljava/lang/String;

.field public totalCount:Ljava/lang/String;

.field public type:I

.field public uname:Ljava/lang/String;

.field public unic:Ljava/lang/String;

.field public updateInfo:Ljava/lang/String;

.field public updateTime_str:Ljava/lang/String;

.field public upic:Ljava/lang/String;

.field public uploadcount:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/Podcast$Users;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    iput-object p1, p0, Lcom/youku/vo/Podcast$Users$Subs;->this$1:Lcom/youku/vo/Podcast$Users;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vo/Podcast$Users$Subs;->issubs:Z

    .line 41
    iput-boolean v1, p0, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    .line 43
    iput-boolean v1, p0, Lcom/youku/vo/Podcast$Users$Subs;->isRunning:Z

    return-void
.end method


# virtual methods
.method public getUpdateCount()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->detaSourceDetails:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->detaSourceDetails:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v3

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->detaSourceDetails:Ljava/lang/String;

    const-string v5, "\"1\""

    const-string v6, "\"t1\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\"2\""

    const-string v6, "\"t2\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->detaSourceDetails:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    .line 54
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->detaSourceDetails:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 59
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_2

    const-string v4, "t1"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 60
    const-string v3, "t1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "updateCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    if-eqz v1, :cond_0

    const-string v4, "t2"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 63
    const-string v3, "t2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "updateCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method
