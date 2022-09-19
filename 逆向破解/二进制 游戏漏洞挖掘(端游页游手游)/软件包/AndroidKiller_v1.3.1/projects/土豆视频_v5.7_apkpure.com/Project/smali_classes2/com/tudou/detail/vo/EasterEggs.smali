.class public Lcom/tudou/detail/vo/EasterEggs;
.super Ljava/lang/Object;
.source "EasterEggs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/EasterEggs$EggsType;
    }
.end annotation


# static fields
.field public static final BUNDLE_DATA_KEY_HTML5_URL:Ljava/lang/String; = "bundle.data.key.html5.url"


# instance fields
.field public button:Ljava/lang/String;

.field public error:I

.field public isShowDirectly:Z

.field public mData:Landroid/os/Bundle;

.field public msg:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:Lcom/tudou/detail/vo/EasterEggs$EggsType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/tudou/detail/vo/EasterEggs;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 34
    new-instance v1, Lcom/tudou/detail/vo/EasterEggs;

    invoke-direct {v1}, Lcom/tudou/detail/vo/EasterEggs;-><init>()V

    .line 36
    .local v1, "ret":Lcom/tudou/detail/vo/EasterEggs;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "root":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tudou/detail/vo/EasterEggs;->error:I

    .line 38
    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tudou/detail/vo/EasterEggs;->msg:Ljava/lang/String;

    .line 39
    const-string v6, "text"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tudou/detail/vo/EasterEggs;->text:Ljava/lang/String;

    .line 40
    const-string v6, "button"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tudou/detail/vo/EasterEggs;->button:Ljava/lang/String;

    .line 41
    const-string v6, "pic"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tudou/detail/vo/EasterEggs;->pic:Ljava/lang/String;

    .line 42
    const-string v6, "is_show_directly"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_0

    :goto_0
    iput-boolean v5, v1, Lcom/tudou/detail/vo/EasterEggs;->isShowDirectly:Z

    .line 44
    const-string v5, "skip_inf"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 45
    .local v3, "skipInfo":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 46
    const-string v5, "skip_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "skipType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 48
    const-string v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    sget-object v5, Lcom/tudou/detail/vo/EasterEggs$EggsType;->HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    .line 50
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->mData:Landroid/os/Bundle;

    .line 51
    iget-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->mData:Landroid/os/Bundle;

    const-string v6, "bundle.data.key.html5.url"

    const-string v7, "skip_url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "skipInfo":Lorg/json/JSONObject;
    .end local v4    # "skipType":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 42
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 52
    .restart local v3    # "skipInfo":Lorg/json/JSONObject;
    .restart local v4    # "skipType":Ljava/lang/String;
    :cond_1
    const-string v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    sget-object v5, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "skipInfo":Lorg/json/JSONObject;
    .end local v4    # "skipType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 65
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "root":Lorg/json/JSONObject;
    .restart local v3    # "skipInfo":Lorg/json/JSONObject;
    .restart local v4    # "skipType":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    goto :goto_1

    .line 58
    :cond_3
    sget-object v5, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    goto :goto_1

    .line 61
    .end local v4    # "skipType":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    iput-object v5, v1, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
