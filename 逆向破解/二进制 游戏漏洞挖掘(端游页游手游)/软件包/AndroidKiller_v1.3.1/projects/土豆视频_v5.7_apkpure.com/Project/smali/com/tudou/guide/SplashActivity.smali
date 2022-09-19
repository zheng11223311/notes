.class public Lcom/tudou/guide/SplashActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/guide/SplashActivity;->requestWindowFeature(I)Z

    .line 15
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/tudou/guide/SplashActivity;->setContentView(I)V

    .line 16
    return-void
.end method
