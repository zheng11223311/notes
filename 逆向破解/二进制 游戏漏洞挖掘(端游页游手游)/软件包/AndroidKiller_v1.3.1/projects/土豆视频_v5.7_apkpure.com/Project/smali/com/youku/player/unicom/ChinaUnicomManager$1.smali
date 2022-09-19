.class Lcom/youku/player/unicom/ChinaUnicomManager$1;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager;->getWoVideoUrls(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$index:I

.field final synthetic val$oip:Ljava/lang/String;

.field final synthetic val$sid:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$vSeg:Ljava/util/List;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$woVideoUrls:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$vSeg:Ljava/util/List;

    iput p5, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$index:I

    iput-object p6, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$woVideoUrls:Ljava/util/Map;

    iput-object p7, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$token:Ljava/lang/String;

    iput-object p8, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$oip:Ljava/lang/String;

    iput-object p9, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$sid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->this$0:Lcom/youku/player/unicom/ChinaUnicomManager;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$vSeg:Ljava/util/List;

    iget v4, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/ItemSeg;

    iget-object v4, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$woVideoUrls:Ljava/util/Map;

    iget-object v5, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$token:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$oip:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/player/unicom/ChinaUnicomManager$1;->val$sid:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/youku/player/unicom/ChinaUnicomManager;->access$000(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/youku/player/goplay/ItemSeg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method
