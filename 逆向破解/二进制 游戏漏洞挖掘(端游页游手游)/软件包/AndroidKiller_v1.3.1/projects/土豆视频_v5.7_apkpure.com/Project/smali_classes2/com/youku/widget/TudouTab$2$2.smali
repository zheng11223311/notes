.class Lcom/youku/widget/TudouTab$2$2;
.super Ljava/lang/Thread;
.source "TudouTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouTab$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouTab$2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouTab$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/youku/widget/TudouTab$2$2;->this$0:Lcom/youku/widget/TudouTab$2;

    iput-object p2, p0, Lcom/youku/widget/TudouTab$2$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    const-wide/16 v2, 0x15e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    iget-object v2, p0, Lcom/youku/widget/TudouTab$2$2;->this$0:Lcom/youku/widget/TudouTab$2;

    invoke-static {v2}, Lcom/youku/widget/TudouTab$2;->access$200(Lcom/youku/widget/TudouTab$2;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/youku/widget/TudouTab$2$2;->this$0:Lcom/youku/widget/TudouTab$2;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/widget/TudouTab$2;->access$202(Lcom/youku/widget/TudouTab$2;Z)Z

    .line 650
    iget-object v2, p0, Lcom/youku/widget/TudouTab$2$2;->this$0:Lcom/youku/widget/TudouTab$2;

    invoke-static {v2}, Lcom/youku/widget/TudouTab$2;->access$300(Lcom/youku/widget/TudouTab$2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 651
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/youku/widget/TudouTab$2$2;->val$v:Landroid/view/View;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    iget-object v2, p0, Lcom/youku/widget/TudouTab$2$2;->this$0:Lcom/youku/widget/TudouTab$2;

    invoke-static {v2}, Lcom/youku/widget/TudouTab$2;->access$300(Lcom/youku/widget/TudouTab$2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
