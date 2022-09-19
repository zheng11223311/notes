.class Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$9;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment$9;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$9;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$9$1;->this$1:Lcom/tudou/ui/fragment/CacheFolderFragment$9;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment$9;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 476
    :cond_0
    return-void
.end method
