.class Lcom/tudou/ui/fragment/BuyFilmFragment$2;
.super Ljava/lang/Object;
.source "BuyFilmFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$2;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 270
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
