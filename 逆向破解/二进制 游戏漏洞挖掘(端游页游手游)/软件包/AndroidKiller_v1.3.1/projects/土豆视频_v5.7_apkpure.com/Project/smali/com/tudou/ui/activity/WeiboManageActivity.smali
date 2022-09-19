.class public Lcom/tudou/ui/activity/WeiboManageActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "WeiboManageActivity.java"


# static fields
.field public static mActivity:Lcom/tudou/ui/activity/WeiboManageActivity;


# instance fields
.field private activity:Landroid/app/Activity;

.field private goabout:Landroid/view/View;

.field private gocomment:Landroid/view/View;

.field private gofeedback:Landroid/view/View;

.field private gorecommend:Landroid/view/View;

.field private isdownload:Landroid/widget/ImageView;

.field private ishead:Landroid/widget/ImageView;

.field private isupload:Landroid/widget/ImageView;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getTencentInstance()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 42
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentWeibo:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/tudou/ui/activity/WeiboManageActivity;->mAjust:Z

    .line 32
    sput-object p0, Lcom/tudou/ui/activity/WeiboManageActivity;->mActivity:Lcom/tudou/ui/activity/WeiboManageActivity;

    .line 33
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/WeiboManageActivity;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/WeiboManageActivity;->setContentView(I)V

    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/WeiboManageActivity;->sp:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method
