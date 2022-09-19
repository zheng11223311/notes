.class Lcom/tudou/detail/fragment/VideoPointFragment$2;
.super Ljava/lang/Object;
.source "VideoPointFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 130
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-boolean v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->isDescExpand:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoPointFragment;->collapseDesc(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoPointFragment;->expandDesc()V

    goto :goto_0
.end method
