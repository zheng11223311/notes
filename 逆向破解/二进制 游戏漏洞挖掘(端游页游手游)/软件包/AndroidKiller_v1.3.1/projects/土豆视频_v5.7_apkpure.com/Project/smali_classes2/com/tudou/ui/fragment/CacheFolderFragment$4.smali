.class Lcom/tudou/ui/fragment/CacheFolderFragment$4;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->goMoreCacheFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CacheFolderFragment;->showMoreCacheOrNot(I)V

    .line 328
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->v:Lcom/tudou/detail/fragment/VideoCacheFragment;

    .line 329
    return-void
.end method
