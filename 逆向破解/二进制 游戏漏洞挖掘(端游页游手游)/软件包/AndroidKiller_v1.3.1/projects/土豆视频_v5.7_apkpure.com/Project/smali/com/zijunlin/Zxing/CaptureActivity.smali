.class public Lcom/zijunlin/Zxing/CaptureActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CaptureActivity.java"


# instance fields
.field manager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 591
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/zijunlin/Zxing/CaptureActivity;->requestWindowFeature(I)Z

    .line 592
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/zijunlin/Zxing/CaptureActivity;->setContentView(I)V

    .line 593
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/zijunlin/Zxing/CaptureActivity;->manager:Landroid/support/v4/app/FragmentManager;

    .line 594
    new-instance v1, Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {v1}, Lcom/zijunlin/Zxing/CaptureFragment;-><init>()V

    .line 595
    .local v1, "fragment":Lcom/zijunlin/Zxing/CaptureFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "TAG"

    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAG"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    invoke-virtual {v1, v0}, Lcom/zijunlin/Zxing/CaptureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 599
    iget-object v2, p0, Lcom/zijunlin/Zxing/CaptureActivity;->manager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c00ee

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "captureFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 600
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 604
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/CaptureActivity;->finish()V

    .line 607
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
