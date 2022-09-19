.class Lcom/tudou/ui/fragment/CacheFolderFragment$13;
.super Ljava/lang/Thread;
.source "CacheFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->refreshData()V
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
    .line 511
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$13;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 515
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 516
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$13;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$1000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 517
    return-void
.end method
