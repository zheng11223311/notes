.class Lcom/tudou/detail/fragment/VideoActorFragment$6;
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
    .line 265
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-boolean v0, v0, Lcom/tudou/detail/fragment/VideoActorFragment;->isDescExpand:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->collapseDesc()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->expandDesc()V

    goto :goto_0
.end method
