.class public Lcom/tudou/ui/activity/VIPCardActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "VIPCardActivity.java"


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
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/VIPCardActivity;->requestWindowFeature(I)Z

    .line 17
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/VIPCardActivity;->setContentView(I)V

    .line 18
    return-void
.end method
