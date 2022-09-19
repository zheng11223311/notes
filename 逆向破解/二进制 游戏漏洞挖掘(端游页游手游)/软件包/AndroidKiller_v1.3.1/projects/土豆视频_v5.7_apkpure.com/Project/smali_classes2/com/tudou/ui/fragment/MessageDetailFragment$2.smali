.class Lcom/tudou/ui/fragment/MessageDetailFragment$2;
.super Ljava/lang/Object;
.source "MessageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageDetailFragment;->initTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/MessageDetailFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 127
    return-void
.end method
