.class Lcom/tudou/ui/fragment/MoreFragment$17$1;
.super Landroid/os/Handler;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment$17;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/MoreFragment$17;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment$17;)V
    .locals 0

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$17;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MoreFragment$17;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MoreFragment$17;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$5200(Lcom/tudou/ui/fragment/MoreFragment;)V

    .line 1912
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1913
    return-void
.end method
