.class Lcom/tudou/ui/fragment/MoreFragment$6;
.super Ljava/lang/Thread;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->getImageCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;I)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 620
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MoreFragment;->access$200(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v3

    invoke-interface {v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 621
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v3, v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$300(Lcom/tudou/ui/fragment/MoreFragment;Ljava/io/File;)J

    move-result-wide v4

    long-to-float v3, v4

    invoke-static {v3}, Lcom/youku/util/Util;->formatSizeM(F)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "msgSize":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MoreFragment;->access$400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 623
    .local v1, "message":Landroid/os/Message;
    iget v3, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->val$type:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 624
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment$6;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/MoreFragment;->access$400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return-void
.end method
