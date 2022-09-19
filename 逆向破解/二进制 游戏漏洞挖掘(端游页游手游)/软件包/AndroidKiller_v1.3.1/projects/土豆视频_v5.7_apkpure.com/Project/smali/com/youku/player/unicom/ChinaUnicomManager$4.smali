.class Lcom/youku/player/unicom/ChinaUnicomManager$4;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager;->replaceAdvUrl(Lcom/youku/player/goplay/VideoAdvInfo;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$index:I

.field final synthetic val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

.field final synthetic val$woVideoAdMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/Map;Lcom/youku/player/goplay/VideoAdvInfo;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$woVideoAdMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iput p4, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$index:I

    iput-object p5, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$4;->val$woVideoAdMap:Ljava/util/Map;

    new-instance v2, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;

    invoke-direct {v2, p0}, Lcom/youku/player/unicom/ChinaUnicomManager$4$1;-><init>(Lcom/youku/player/unicom/ChinaUnicomManager$4;)V

    invoke-static {v0, v1, v2}, Lcom/unicom/iap/sdk/WoVideoSDK;->identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 243
    return-void
.end method
