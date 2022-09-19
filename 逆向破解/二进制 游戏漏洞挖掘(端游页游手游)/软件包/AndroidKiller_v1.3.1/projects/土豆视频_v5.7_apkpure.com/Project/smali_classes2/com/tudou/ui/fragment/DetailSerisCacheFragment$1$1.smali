.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;
.super Landroid/os/Handler;
.source "DetailSerisCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$002(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1$1;->this$1:Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$1;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cachetextselect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
