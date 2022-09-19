.class Lcom/tudou/detail/fragment/VideoPointFragment$4$1;
.super Ljava/lang/Object;
.source "VideoPointFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoPointFragment$4;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;->this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;->this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mPointItemClickLis:Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;->this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mPointItemClickLis:Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;->this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoPointFragment$4;->val$vid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;->this$1:Lcom/tudou/detail/fragment/VideoPointFragment$4;

    iget-object v2, v2, Lcom/tudou/detail/fragment/VideoPointFragment$4;->val$p:Lcom/youku/player/goplay/Point;

    iget-wide v2, v2, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;->onPointItemClick(Ljava/lang/String;I)V

    goto :goto_0
.end method
