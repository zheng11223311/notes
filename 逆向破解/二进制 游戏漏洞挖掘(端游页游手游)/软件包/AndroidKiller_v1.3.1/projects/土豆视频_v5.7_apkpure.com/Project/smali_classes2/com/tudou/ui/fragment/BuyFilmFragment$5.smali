.class Lcom/tudou/ui/fragment/BuyFilmFragment$5;
.super Landroid/text/style/ClickableSpan;
.source "BuyFilmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuyFilmFragment;->setRuleText()V
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
    .line 594
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$5;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$5;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment$5;->this$0:Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/PayAgreementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 600
    return-void
.end method
