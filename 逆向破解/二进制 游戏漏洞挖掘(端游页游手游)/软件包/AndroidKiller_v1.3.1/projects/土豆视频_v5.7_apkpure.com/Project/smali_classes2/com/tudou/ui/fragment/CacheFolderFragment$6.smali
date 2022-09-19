.class Lcom/tudou/ui/fragment/CacheFolderFragment$6;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->setTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/CacheFolderFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->setEditAble()V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
