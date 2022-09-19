.class Lcom/tudou/ui/fragment/CheckedFragment$2;
.super Ljava/lang/Object;
.source "CheckedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CheckedFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CheckedFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tudou/ui/fragment/CheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tudou/ui/fragment/CheckedFragment$2;->this$0:Lcom/tudou/ui/fragment/CheckedFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 129
    return-void
.end method
