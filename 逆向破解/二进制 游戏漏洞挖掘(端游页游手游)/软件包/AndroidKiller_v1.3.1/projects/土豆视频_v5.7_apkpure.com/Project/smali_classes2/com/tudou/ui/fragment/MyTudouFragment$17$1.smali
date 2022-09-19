.class Lcom/tudou/ui/fragment/MyTudouFragment$17$1;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/MyTudouFragment$17;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment$17;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MyTudouFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MyTudouFragment$17;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const/4 v1, 0x0

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MyTudouFragment$17;

    iget-object v3, v3, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setEdit(ZLandroid/view/View;)V

    .line 1096
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;->this$1:Lcom/tudou/ui/fragment/MyTudouFragment$17;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->handler:Landroid/os/Handler;

    const/16 v1, 0x403

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1098
    return-void
.end method
