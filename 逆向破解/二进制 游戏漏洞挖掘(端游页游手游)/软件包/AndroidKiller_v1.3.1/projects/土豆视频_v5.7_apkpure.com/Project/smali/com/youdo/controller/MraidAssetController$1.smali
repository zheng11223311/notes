.class Lcom/youdo/controller/MraidAssetController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/controller/MraidAssetController;->writeToDiskWrap(Lcom/youdo/view/MraidView;Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/controller/MraidAssetController;

.field final synthetic val$buff:[B

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$storeInHashedDirectory:Z


# direct methods
.method constructor <init>(Lcom/youdo/controller/MraidAssetController;Z[BLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/controller/MraidAssetController$1;->this$0:Lcom/youdo/controller/MraidAssetController;

    iput-boolean p2, p0, Lcom/youdo/controller/MraidAssetController$1;->val$storeInHashedDirectory:Z

    iput-object p3, p0, Lcom/youdo/controller/MraidAssetController$1;->val$buff:[B

    iput-object p4, p0, Lcom/youdo/controller/MraidAssetController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/controller/MraidAssetController$1;->this$0:Lcom/youdo/controller/MraidAssetController;

    iget-boolean v1, p0, Lcom/youdo/controller/MraidAssetController$1;->val$storeInHashedDirectory:Z

    iget-object v2, p0, Lcom/youdo/controller/MraidAssetController$1;->val$buff:[B

    invoke-static {v0, v1, v2}, Lcom/youdo/controller/MraidAssetController;->access$000(Lcom/youdo/controller/MraidAssetController;Z[B)V

    iget-object v0, p0, Lcom/youdo/controller/MraidAssetController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
