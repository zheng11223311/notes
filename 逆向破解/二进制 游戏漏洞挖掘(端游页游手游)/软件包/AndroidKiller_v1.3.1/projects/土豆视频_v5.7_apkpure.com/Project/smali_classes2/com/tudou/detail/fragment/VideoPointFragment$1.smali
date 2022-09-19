.class Lcom/tudou/detail/fragment/VideoPointFragment$1;
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
    .line 117
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/VideoPointFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 121
    .local v0, "tFm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 122
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v3, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 123
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 124
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoPointFragment;->access$000(Lcom/tudou/detail/fragment/VideoPointFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoPointFragment;->access$000(Lcom/tudou/detail/fragment/VideoPointFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 127
    :cond_0
    return-void
.end method
