.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;
.super Landroid/os/Handler;
.source "ClassifyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 103
    :goto_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 104
    :cond_0
    return-void

    .line 79
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$000(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    goto :goto_0

    .line 82
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 85
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$300(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$500(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$700(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V

    goto :goto_0

    .line 96
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$400(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 97
    invoke-static {}, Lcom/tudou/detail/Test;->isNeedAddShortcutFinishToast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "\u6210\u529f\u5c06\u5206\u7c7b\u6dfb\u52a0\u81f3\u684c\u9762"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x271b -> :sswitch_0
        0x271c -> :sswitch_1
        0x186aa -> :sswitch_2
        0x186ab -> :sswitch_3
    .end sparse-switch
.end method
