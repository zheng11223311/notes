.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;
.super Ljava/lang/Object;
.source "AccountIntroductionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountIntroductionFragment;->showSelectedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

.field final synthetic val$dialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 465
    return-void
.end method
