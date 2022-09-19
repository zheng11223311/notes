.class public Lcom/tudou/ui/activity/UploadActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "UploadActivity.java"


# instance fields
.field public titletext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/tudou/ui/activity/UploadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/UploadFragment;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/tudou/ui/activity/UploadActivity;->mAjust:Z

    .line 24
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/UploadActivity;->requestWindowFeature(I)Z

    .line 27
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/UploadActivity;->setContentView(I)V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
