.class Lcom/tudou/ui/fragment/MoreFragment$7;
.super Landroid/os/Handler;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 637
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 638
    .local v0, "msgSize":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 639
    const-string v1, "0.0 MB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 657
    return-void

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 645
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 646
    const-string v1, "0.0 MB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    const v1, 0x7f0d02ba

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 649
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0255

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 650
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 651
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 653
    new-instance v1, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$7;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {v1, v2}, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    new-array v2, v3, [Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
