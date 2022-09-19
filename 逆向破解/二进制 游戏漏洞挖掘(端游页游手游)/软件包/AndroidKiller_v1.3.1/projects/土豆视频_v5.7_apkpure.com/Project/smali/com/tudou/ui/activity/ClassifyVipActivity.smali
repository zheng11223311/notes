.class public Lcom/tudou/ui/activity/ClassifyVipActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "ClassifyVipActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 15
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/ClassifyVipActivity;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/tudou/ui/activity/ClassifyVipActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0302f3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 18
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/ClassifyVipActivity;->setContentView(I)V

    .line 19
    return-void
.end method
