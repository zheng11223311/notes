.class public Lcom/tudou/ui/activity/ClassifyAllChannelActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "ClassifyAllChannelActivity.java"


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
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ClassifyAllChannelActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ClassifyAllChannelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0302f3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 19
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/ClassifyAllChannelActivity;->setContentView(I)V

    .line 20
    return-void
.end method
