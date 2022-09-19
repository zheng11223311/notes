.class public Lcom/youku/analytics/data/ActionBaseData;
.super Ljava/lang/Object;
.source "ActionBaseData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field protected static final HEADSET:Ljava/lang/String; = "hs"

.field protected static final LOGIN:Ljava/lang/String; = "l"

.field protected static final NETWORK:Ljava/lang/String; = "n1"

.field protected static final NUMBER:Ljava/lang/String; = "n2"

.field protected static final OPERATOR:Ljava/lang/String; = "o"

.field protected static final SESSION:Ljava/lang/String; = "s1"

.field protected static final TIME:Ljava/lang/String; = "t2"

.field protected static final TYPE:Ljava/lang/String; = "t1"

.field protected static final USERID:Ljava/lang/String; = "u1"


# instance fields
.field protected isLogin:Z

.field protected mFormatTime:Ljava/lang/String;

.field private mHeadset:Z

.field private mLocationData:Lcom/youku/analytics/data/LocationData;

.field private mNetWorkType:Ljava/lang/String;

.field private mNumber:I

.field private mOperator:Ljava/lang/String;

.field private mRealTime:J

.field private mSession:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "session"    # Ljava/lang/String;
    .param p4, "userID"    # Ljava/lang/String;
    .param p5, "time"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/youku/analytics/data/ActionBaseData;->mType:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/youku/analytics/data/ActionBaseData;->mSession:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/youku/analytics/data/ActionBaseData;->mUserID:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p5, p6}, Lcom/youku/analytics/utils/Tools;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/youku/analytics/utils/Tools;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mFormatTime:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lcom/youku/analytics/data/ActionBaseData;->mRealTime:J

    .line 47
    sget-boolean v0, Lcom/youku/analytics/Constants;->isTrackLocation:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Lcom/youku/analytics/data/LocationData;->createLocationData(Landroid/content/Context;)Lcom/youku/analytics/data/LocationData;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mLocationData:Lcom/youku/analytics/data/LocationData;

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mNetWorkType:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mOperator:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/youku/analytics/utils/Tools;->isWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mHeadset:Z

    .line 52
    iget-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mNetWorkType:Ljava/lang/String;

    sput-object v0, Lcom/youku/analytics/data/Device;->network:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mOperator:Ljava/lang/String;

    sput-object v0, Lcom/youku/analytics/data/Device;->operator:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/youku/analytics/AnalyticsImp;->getInstance()Lcom/youku/analytics/AnalyticsBase;

    move-result-object v0

    invoke-virtual {v0, p1, p5, p6}, Lcom/youku/analytics/AnalyticsBase;->setCount(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mNumber:I

    .line 56
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mSession:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 4
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mSession:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/youku/analytics/data/ActionBaseData;->mRealTime:J

    sub-long/2addr v0, p2

    sget-wide v2, Lcom/youku/analytics/Constants;->sessionInternal:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/youku/analytics/data/ActionBaseData;->mSession:Ljava/lang/String;

    .line 95
    const-string v0, "Fill session"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void
.end method

.method public write(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    const-string/jumbo v2, "t1"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v2, "t2"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mFormatTime:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v2, p0, Lcom/youku/analytics/data/ActionBaseData;->mUserID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 63
    const-string/jumbo v2, "u1"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mUserID:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "l"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/youku/analytics/data/ActionBaseData;->mOperator:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const-string v2, "o"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mOperator:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/youku/analytics/data/ActionBaseData;->mNetWorkType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const-string v2, "n1"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mNetWorkType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    const-string/jumbo v2, "s1"

    iget-object v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mSession:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v2, p0, Lcom/youku/analytics/data/ActionBaseData;->mLocationData:Lcom/youku/analytics/data/LocationData;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/youku/analytics/data/ActionBaseData;->mLocationData:Lcom/youku/analytics/data/LocationData;

    invoke-virtual {v2, p1}, Lcom/youku/analytics/data/LocationData;->write(Lorg/json/JSONObject;)V

    .line 75
    :cond_2
    const-string v2, "n2"

    iget v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mNumber:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v2, "hs"

    iget-boolean v3, p0, Lcom/youku/analytics/data/ActionBaseData;->mHeadset:Z

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    return-void

    .line 66
    :cond_3
    const-string v2, "l"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 76
    goto :goto_1
.end method
