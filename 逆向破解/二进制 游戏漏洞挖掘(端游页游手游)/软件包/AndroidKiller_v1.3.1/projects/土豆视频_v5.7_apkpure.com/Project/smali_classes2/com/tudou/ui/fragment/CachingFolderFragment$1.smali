.class Lcom/tudou/ui/fragment/CachingFolderFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CachingFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;
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
    .line 116
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$1;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$1;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$000(Lcom/tudou/ui/fragment/CachingFolderFragment;)V

    .line 121
    return-void
.end method
