.class Lcom/tudou/detail/fragment/ImagePreviewFragment$2;
.super Ljava/lang/Object;
.source "ImagePreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/ImagePreviewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/ImagePreviewFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;->this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;->this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v2}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 111
    .local v0, "tFm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 112
    .local v1, "tTransaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;->this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 113
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;->this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->access$100(Lcom/tudou/detail/fragment/ImagePreviewFragment;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/tudou/detail/fragment/ImagePreviewFragment$2;->this$0:Lcom/tudou/detail/fragment/ImagePreviewFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/ImagePreviewFragment;->access$100(Lcom/tudou/detail/fragment/ImagePreviewFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 116
    :cond_0
    return-void
.end method
