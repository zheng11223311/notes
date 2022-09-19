.class Lcom/tudou/ui/fragment/CacheFolderFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CacheFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;
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
    .line 125
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$1;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$000(Lcom/tudou/ui/fragment/CacheFolderFragment;)V

    .line 130
    return-void
.end method
