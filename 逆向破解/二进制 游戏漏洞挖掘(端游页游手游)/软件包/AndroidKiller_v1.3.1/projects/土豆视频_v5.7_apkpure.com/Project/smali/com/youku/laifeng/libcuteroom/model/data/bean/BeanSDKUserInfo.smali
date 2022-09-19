.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "BeanSDKUserInfo.java"


# static fields
.field public static final ROOT:Ljava/lang/String; = "response"

.field public static final ROOT_CODE:Ljava/lang/String; = "code"

.field public static final ROOT_DATA:Ljava/lang/String; = "data"

.field public static final ROOT_MESSAGE:Ljava/lang/String; = "message"

.field public static final USER_ID:Ljava/lang/String; = "uid"

.field public static final USER_LOGINED:Ljava/lang/String; = "logined"

.field public static final USER_NICK_NAME:Ljava/lang/String; = "nickName"

.field public static final USER_SECRET_KEY:Ljava/lang/String; = "secretKey"

.field public static final USER_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private mResultCode:Ljava/lang/String;

.field private mResultMsg:Ljava/lang/String;

.field private mUserInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mUserInfo:Lorg/json/JSONObject;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultCode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultMsg:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mUserInfo:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 35
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mUserInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "tmp":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mUserInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v0    # "tmp":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 38
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tmp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 44
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 48
    .end local v0    # "tmp":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "response":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 68
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultCode:Ljava/lang/String;

    .line 69
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mResultMsg:Ljava/lang/String;

    .line 70
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->mUserInfo:Lorg/json/JSONObject;

    .line 72
    :cond_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
