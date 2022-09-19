.class public Lcom/tudou/guide/SplashSubActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "SplashSubActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/guide/SplashSubActivity;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/tudou/guide/SplashSubActivity;->setContentView(I)V

    .line 36
    return-void
.end method
