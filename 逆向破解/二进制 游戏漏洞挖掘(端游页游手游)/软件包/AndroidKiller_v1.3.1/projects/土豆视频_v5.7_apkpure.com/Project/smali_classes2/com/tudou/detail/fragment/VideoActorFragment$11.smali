.class Lcom/tudou/detail/fragment/VideoActorFragment$11;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$500(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$11;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoActorFragment;->mActor:Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V

    goto :goto_0
.end method
