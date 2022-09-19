.class Lcom/tudou/ui/fragment/CachingFolderFragment$6;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;->setTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/CachingFolderFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->setEditAble()V

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$6;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
