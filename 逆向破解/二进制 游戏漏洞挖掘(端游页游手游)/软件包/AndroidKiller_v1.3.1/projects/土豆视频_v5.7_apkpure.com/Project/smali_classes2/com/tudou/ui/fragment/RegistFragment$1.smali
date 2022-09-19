.class Lcom/tudou/ui/fragment/RegistFragment$1;
.super Ljava/lang/Object;
.source "RegistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RegistFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RegistFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RegistFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tudou/ui/fragment/RegistFragment$1;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment$1;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/RegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 147
    return-void
.end method
