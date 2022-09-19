.class public Lcom/tudou/ui/activity/LocalVideoActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "LocalVideoActivity.java"


# static fields
.field public static final INTENT_DETAIL_ACTIVITY_FAVORITE:I = 0x3ee

.field public static final INTENT_PLAYER_ACTIVITY_FAVORITE:I = 0x3f0

.field public static final LOGIN_REQUEST:I = 0x7d0

.field public static mActivity:Lcom/tudou/ui/activity/LocalVideoActivity;


# instance fields
.field public titletext:Landroid/widget/TextView;


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
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/tudou/ui/activity/LocalVideoActivity;->mAjust:Z

    .line 21
    sput-object p0, Lcom/tudou/ui/activity/LocalVideoActivity;->mActivity:Lcom/tudou/ui/activity/LocalVideoActivity;

    .line 22
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/LocalVideoActivity;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/LocalVideoActivity;->setContentView(I)V

    .line 25
    return-void
.end method
