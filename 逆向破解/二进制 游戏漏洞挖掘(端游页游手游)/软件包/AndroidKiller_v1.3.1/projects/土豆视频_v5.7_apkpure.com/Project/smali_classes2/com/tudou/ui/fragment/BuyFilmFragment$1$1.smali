.class Lcom/tudou/ui/fragment/BuyFilmFragment$1$1;
.super Ljava/lang/Object;
.source "BuyFilmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/BuyFilmFragment$1;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/BuyFilmFragment$1;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1$1;->this$1:Lcom/tudou/ui/fragment/BuyFilmFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 160
    invoke-static {}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$400()Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;->onSucess()V

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$1$1;->this$1:Lcom/tudou/ui/fragment/BuyFilmFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->access$502(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z

    .line 162
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 163
    return-void
.end method
