.class public Lcom/tudou/ui/activity/PasswordSetActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "PasswordSetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/tudou/ui/activity/PasswordSetActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v1, Lcom/tudou/ui/activity/PasswordSetActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/tudou/ui/activity/PasswordSetActivity;->mAjust:Z

    .line 19
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PasswordSetActivity;->requestWindowFeature(I)Z

    .line 21
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/PasswordSetActivity;->setContentView(I)V

    .line 22
    return-void
.end method
