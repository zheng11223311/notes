.class Lcom/tudou/ui/fragment/DialogAddComment$2;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DialogAddComment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DialogAddComment;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 171
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DialogAddComment;->access$000(Lcom/tudou/ui/fragment/DialogAddComment;)V

    .line 172
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v2}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/DialogAddComment;->access$100(Lcom/tudou/ui/fragment/DialogAddComment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 176
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x7d0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 177
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment$2;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/DialogAddComment;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    :cond_1
    return-void
.end method
