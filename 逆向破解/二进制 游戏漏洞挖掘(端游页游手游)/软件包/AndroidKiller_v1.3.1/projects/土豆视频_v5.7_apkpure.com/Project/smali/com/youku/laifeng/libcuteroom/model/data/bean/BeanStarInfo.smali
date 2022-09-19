.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "BeanStarInfo.java"


# static fields
.field private static instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;


# instance fields
.field private init:Z

.field private leftSeconds:Ljava/lang/String;

.field private starAvail:Ljava/lang/String;

.field private starGap:Ljava/lang/String;

.field private starTodayGain:Ljava/lang/String;

.field private starTodayMax:Ljava/lang/String;

.field private starTotalMax:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->userId:Ljava/lang/String;

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starAvail:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayGain:Ljava/lang/String;

    .line 43
    const-string v0, "-1"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->leftSeconds:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTotalMax:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayMax:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starGap:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->init:Z

    .line 99
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->userId:Ljava/lang/String;

    .line 103
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starAvail:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayGain:Ljava/lang/String;

    .line 105
    const-string v0, "-1"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->leftSeconds:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTotalMax:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayMax:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starGap:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public getLeftSeconds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->leftSeconds:Ljava/lang/String;

    return-object v0
.end method

.method public getStarAvail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starAvail:Ljava/lang/String;

    return-object v0
.end method

.method public getStarGap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starGap:Ljava/lang/String;

    return-object v0
.end method

.method public getStarTodayGain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayGain:Ljava/lang/String;

    return-object v0
.end method

.method public getStarTodayMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayMax:Ljava/lang/String;

    return-object v0
.end method

.method public getStarTotalMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTotalMax:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->init:Z

    return v0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "root":Lorg/json/JSONObject;
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->userId:Ljava/lang/String;

    .line 116
    const-string/jumbo v2, "starAvail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starAvail:Ljava/lang/String;

    .line 117
    const-string/jumbo v2, "starTodayGain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayGain:Ljava/lang/String;

    .line 118
    const-string v2, "leftSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->leftSeconds:Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "starTotalMax"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTotalMax:Ljava/lang/String;

    .line 120
    const-string/jumbo v2, "starTodayMax"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayMax:Ljava/lang/String;

    .line 121
    const-string/jumbo v2, "starGap"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starGap:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setInit(Z)V
    .locals 0
    .param p1, "init"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->init:Z

    .line 54
    return-void
.end method

.method public setLeftSeconds(Ljava/lang/String;)V
    .locals 0
    .param p1, "leftSeconds"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->leftSeconds:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStarAvail(Ljava/lang/String;)V
    .locals 0
    .param p1, "starAvail"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starAvail:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setStarGap(Ljava/lang/String;)V
    .locals 0
    .param p1, "starGap"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starGap:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStarTodayGain(Ljava/lang/String;)V
    .locals 0
    .param p1, "starTodayGain"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayGain:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setStarTodayMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "starTodayMax"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTodayMax:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setStarTotalMax(Ljava/lang/String;)V
    .locals 0
    .param p1, "starTotalMax"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->starTotalMax:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->userId:Ljava/lang/String;

    .line 14
    return-void
.end method
