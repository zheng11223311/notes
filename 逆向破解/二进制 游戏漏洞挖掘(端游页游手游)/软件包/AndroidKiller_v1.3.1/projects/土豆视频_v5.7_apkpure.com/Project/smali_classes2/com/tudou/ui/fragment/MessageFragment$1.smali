.class Lcom/tudou/ui/fragment/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageFragment;->initTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/MessageFragment;->setEdit(Z)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment$1;->this$0:Lcom/tudou/ui/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
