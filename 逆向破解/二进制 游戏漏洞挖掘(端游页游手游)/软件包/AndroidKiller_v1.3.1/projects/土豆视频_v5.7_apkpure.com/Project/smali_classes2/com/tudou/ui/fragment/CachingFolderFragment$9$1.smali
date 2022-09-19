.class Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$9;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment$9;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$9;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$700(Lcom/tudou/ui/fragment/CachingFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CachingFolderFragment$9;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$700(Lcom/tudou/ui/fragment/CachingFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    :cond_0
    return-void
.end method
