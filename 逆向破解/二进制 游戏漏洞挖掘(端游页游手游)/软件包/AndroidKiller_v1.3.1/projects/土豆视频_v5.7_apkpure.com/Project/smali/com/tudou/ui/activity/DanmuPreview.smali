.class public Lcom/tudou/ui/activity/DanmuPreview;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "DanmuPreview.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DanmuPreview;->requestWindowFeature(I)Z

    .line 14
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/DanmuPreview;->setContentView(I)V

    .line 15
    return-void
.end method
