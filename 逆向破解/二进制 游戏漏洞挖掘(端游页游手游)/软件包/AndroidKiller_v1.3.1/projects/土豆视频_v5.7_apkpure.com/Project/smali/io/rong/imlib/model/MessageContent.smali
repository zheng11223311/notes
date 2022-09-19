.class public abstract Lio/rong/imlib/model/MessageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/MessageContent$MessageHandler;
    }
.end annotation


# instance fields
.field private userInfo:Lio/rong/imlib/model/UserInfo;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract encode()[B
.end method

.method public getJSONUserInfo()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 59
    :cond_1
    :goto_0
    return-object v1

    .line 49
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    const-string v2, "name"

    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_3
    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "portrait"

    invoke-virtual {p0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/imlib/model/MessageContent;->userInfo:Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;
    .locals 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "info":Lio/rong/imlib/model/UserInfo;
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "id":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "name":Ljava/lang/String;
    const-string v5, "portrait"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const-string v5, "icon"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 74
    .local v4, "portrait":Landroid/net/Uri;
    :goto_0
    new-instance v2, Lio/rong/imlib/model/UserInfo;

    .end local v2    # "info":Lio/rong/imlib/model/UserInfo;
    invoke-direct {v2, v1, v3, v4}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .end local v4    # "portrait":Landroid/net/Uri;
    .restart local v2    # "info":Lio/rong/imlib/model/UserInfo;
    :cond_1
    return-object v2

    .line 73
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 0
    .param p1, "info"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lio/rong/imlib/model/MessageContent;->userInfo:Lio/rong/imlib/model/UserInfo;

    .line 43
    return-void
.end method
