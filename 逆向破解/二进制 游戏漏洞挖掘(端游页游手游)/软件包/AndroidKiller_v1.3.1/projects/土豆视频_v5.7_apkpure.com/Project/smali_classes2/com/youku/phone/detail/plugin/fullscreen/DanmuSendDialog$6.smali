.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;
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
    .line 226
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheck()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v1, 0x28

    .line 233
    .local v1, "max":I
    :goto_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int v3, v1, v3

    if-ltz v3, :cond_2

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoDetail|Send|color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getColorCheckStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheckStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getSizeCheck()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "log":Ljava/lang/String;
    const-string v3, "\u89c6\u9891\u64ad\u653e\u9875\u5f39\u5e55\u53d1\u9001\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5f39\u5e55\u53d1\u9001"

    invoke-static {v3, v4, v5, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->fullplugin:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getSizeCheck()I

    move-result v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheck()I

    move-result v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v6}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getColorCheck()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->sendDanmu(IIILjava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->fullplugin:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->hideControllerAndSystemUI()V

    .line 242
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dismiss()V

    .line 243
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "max":I
    :cond_0
    :goto_1
    return-void

    .line 232
    :cond_1
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 245
    .restart local v1    # "max":I
    :cond_2
    const-string v3, "\u5b57\u6570\u8d85\u957f"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1
.end method
