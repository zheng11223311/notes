.class Lcom/tudou/detail/fragment/VideoPointFragment$3;
.super Ljava/lang/Object;
.source "VideoPointFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->setData(Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoPointFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v2, v2, Lcom/tudou/detail/fragment/VideoPointFragment;->mDescGetHeight:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 212
    .local v0, "tNeedHeight":I
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v2, v2, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 213
    .local v1, "tVisibleHeight":I
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoPointFragment$3;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/tudou/detail/fragment/VideoPointFragment;->showExpandBtn(Z)V

    .line 214
    return-void

    .line 213
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
