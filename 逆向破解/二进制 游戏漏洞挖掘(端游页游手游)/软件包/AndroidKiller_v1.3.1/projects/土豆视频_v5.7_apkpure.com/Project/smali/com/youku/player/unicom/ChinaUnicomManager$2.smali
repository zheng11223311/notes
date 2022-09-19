.class Lcom/youku/player/unicom/ChinaUnicomManager$2;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager;->getWoVideoUrl(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/youku/player/goplay/ItemSeg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$item:Lcom/youku/player/goplay/ItemSeg;

.field final synthetic val$woVideoUrls:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/Map;Lcom/youku/player/goplay/ItemSeg;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$woVideoUrls:Ljava/util/Map;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$item:Lcom/youku/player/goplay/ItemSeg;

    iput-object p4, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "isSuccess"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "resultMessage"    # Ljava/lang/String;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "intefaceType"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifyWoVideoSDK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p4

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, "url":Ljava/lang/String;
    sput-boolean p1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isTransformUrlSuccess:Z

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$woVideoUrls:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$item:Lcom/youku/player/goplay/ItemSeg;

    invoke-virtual {v2}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWoVideo url-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "getWoVideo url failed"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
