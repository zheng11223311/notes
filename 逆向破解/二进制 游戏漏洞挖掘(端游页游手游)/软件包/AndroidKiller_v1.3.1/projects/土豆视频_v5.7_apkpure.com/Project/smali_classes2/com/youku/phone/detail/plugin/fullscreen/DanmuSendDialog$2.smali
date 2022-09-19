.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->initDialog()V
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
    .line 171
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 175
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    .line 176
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v2}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 180
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x7d0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 181
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :cond_1
    return-void
.end method
