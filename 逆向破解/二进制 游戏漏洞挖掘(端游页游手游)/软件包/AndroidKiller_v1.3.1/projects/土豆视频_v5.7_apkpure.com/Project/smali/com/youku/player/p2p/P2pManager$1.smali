.class Lcom/youku/player/p2p/P2pManager$1;
.super Ljava/lang/Object;
.source "P2pManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/p2p/P2pManager;->getP2PUrls(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/p2p/P2pManager;

.field final synthetic val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$oip:Ljava/lang/String;

.field final synthetic val$p2pUrls:Ljava/util/HashMap;

.field final synthetic val$sid:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$vSeg:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/player/p2p/P2pManager;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/player/p2p/P2pManager$1;->this$0:Lcom/youku/player/p2p/P2pManager;

    iput-object p2, p0, Lcom/youku/player/p2p/P2pManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/youku/player/p2p/P2pManager$1;->val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/youku/player/p2p/P2pManager$1;->val$vSeg:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/youku/player/p2p/P2pManager$1;->val$p2pUrls:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/youku/player/p2p/P2pManager$1;->val$token:Ljava/lang/String;

    iput-object p7, p0, Lcom/youku/player/p2p/P2pManager$1;->val$oip:Ljava/lang/String;

    iput-object p8, p0, Lcom/youku/player/p2p/P2pManager$1;->val$sid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/player/p2p/P2pManager$1;->this$0:Lcom/youku/player/p2p/P2pManager;

    iget-object v1, p0, Lcom/youku/player/p2p/P2pManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/youku/player/p2p/P2pManager$1;->val$atomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/youku/player/p2p/P2pManager$1;->val$vSeg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/youku/player/p2p/P2pManager$1;->val$p2pUrls:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/youku/player/p2p/P2pManager$1;->val$token:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/player/p2p/P2pManager$1;->val$oip:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/player/p2p/P2pManager$1;->val$sid:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/youku/player/p2p/P2pManager;->access$000(Lcom/youku/player/p2p/P2pManager;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
