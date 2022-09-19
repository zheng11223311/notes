.class Lcom/tudou/detail/fragment/VideoActorFragment$12;
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
    .line 366
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 369
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 370
    .local v0, "tFm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 371
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v3, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 372
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 373
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$600(Lcom/tudou/detail/fragment/VideoActorFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$12;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$600(Lcom/tudou/detail/fragment/VideoActorFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_0
    return-void
.end method
