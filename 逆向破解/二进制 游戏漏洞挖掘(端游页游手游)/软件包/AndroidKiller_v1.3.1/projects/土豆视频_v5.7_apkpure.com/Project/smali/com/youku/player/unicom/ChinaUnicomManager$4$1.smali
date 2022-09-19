.class Lcom/youku/player/unicom/ChinaUnicomManager$4$1;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomManager$4;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sdkCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "resultCode"    # Ljava/lang/String;
    .param p3, "resultMessage"    # Ljava/lang/String;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "intefaceType"    # I

    .prologue
    .line 237
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, "adurl":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    iget-object v1, v1, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    iget v2, v2, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/AdvInfo;

    iput-object v0, v1, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    iget-object v1, v1, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    iget v2, v2, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/AdvInfo;

    check-cast p4, Ljava/lang/String;

    .end local p4    # "object":Ljava/lang/Object;
    iput-object p4, v1, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;->this$1:Lcom/youku/player/unicom/ChinaUnicomManager$4;

    iget-object v1, v1, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 241
    return-void
.end method
