.class public Lcom/tudou/ui/activity/PhoneRegistActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "PhoneRegistActivity.java"


# static fields
.field public static mActivity:Lcom/tudou/ui/activity/BaseActivity;


# instance fields
.field public titletext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/tudou/ui/activity/PhoneRegistActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v1, Lcom/tudou/ui/activity/PhoneRegistActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/tudou/ui/activity/PhoneRegistActivity;->mAjust:Z

    .line 20
    sput-object p0, Lcom/tudou/ui/activity/PhoneRegistActivity;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 21
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PhoneRegistActivity;->requestWindowFeature(I)Z

    .line 23
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PhoneRegistActivity;->setContentView(I)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/activity/PhoneRegistActivity;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 32
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 33
    return-void
.end method
