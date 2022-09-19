.class Lcom/tudou/ui/fragment/CachingFolderFragment$10;
.super Ljava/lang/Thread;
.source "CachingFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$10;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 494
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 495
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$10;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$1000(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    .line 496
    return-void
.end method
