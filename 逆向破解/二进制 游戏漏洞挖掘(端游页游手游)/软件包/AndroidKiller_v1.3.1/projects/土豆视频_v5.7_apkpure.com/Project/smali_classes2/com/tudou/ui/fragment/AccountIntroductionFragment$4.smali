.class Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;
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
    .line 438
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->val$dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v2}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 443
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$900(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$900(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 445
    .local v0, "delete":Z
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete tempFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$900(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .end local v0    # "delete":Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->access$900(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 450
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;->this$0:Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 451
    return-void
.end method
