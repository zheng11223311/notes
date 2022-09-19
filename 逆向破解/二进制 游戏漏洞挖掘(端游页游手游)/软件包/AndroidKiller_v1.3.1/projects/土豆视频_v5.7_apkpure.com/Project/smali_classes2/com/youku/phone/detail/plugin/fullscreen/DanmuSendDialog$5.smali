.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 214
    const-string v0, "VideoDetail|BulletSetting"

    .line 215
    .local v0, "str":Ljava/lang/String;
    const-string v1, "\u89c6\u9891\u64ad\u653e\u9875\u5f39\u5e55\u8bbe\u7f6e\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5f39\u5e55\u8bbe\u7f6e"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const-string v1, "danmu_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const-string v1, "danmu_setting"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
