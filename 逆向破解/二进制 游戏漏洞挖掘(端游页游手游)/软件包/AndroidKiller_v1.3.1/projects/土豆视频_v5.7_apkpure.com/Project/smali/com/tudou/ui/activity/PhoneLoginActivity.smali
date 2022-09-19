.class public Lcom/tudou/ui/activity/PhoneLoginActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "PhoneLoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 24
    const/4 v0, 0x0

    const v1, 0x7f04000a

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;II)V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/tudou/ui/activity/PhoneLoginActivity;->mAjust:Z

    .line 14
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PhoneLoginActivity;->requestWindowFeature(I)Z

    .line 16
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PhoneLoginActivity;->setContentView(I)V

    .line 19
    return-void
.end method
