.class final Lcom/youku/player/ad/OfflineAdSDK$1;
.super Ljava/lang/Object;
.source "OfflineAdSDK.java"

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/OfflineAdSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 4
    .param p1, "arg0"    # Lorg/openad/events/IXYDEvent;

    .prologue
    .line 32
    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdSDK -----> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v1, "NATIVE_AD_SERVER_START_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x0

    sput-boolean v1, Lcom/youku/player/ad/OfflineAdSDK;->isInitAdSDK:Z

    goto :goto_0
.end method
