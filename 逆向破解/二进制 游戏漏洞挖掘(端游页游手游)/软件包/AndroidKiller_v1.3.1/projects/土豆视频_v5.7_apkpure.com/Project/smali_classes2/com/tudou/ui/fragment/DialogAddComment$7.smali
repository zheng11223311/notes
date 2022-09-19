.class Lcom/tudou/ui/fragment/DialogAddComment$7;
.super Ljava/lang/Object;
.source "DialogAddComment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DialogAddComment;->initView(Landroid/view/View;)V
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
    .line 231
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 235
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->access$100(Lcom/tudou/ui/fragment/DialogAddComment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "str":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->text_lenght:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "left":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const v1, 0x7f0d02a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "140"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_3

    .line 244
    const v0, 0x7f0d00c6

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 247
    :cond_3
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 248
    .local v8, "msg":Landroid/os/Message;
    const/16 v0, 0x7d1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 249
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "comment"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "commentid"

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DialogAddComment;->access$200(Lcom/tudou/ui/fragment/DialogAddComment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "videoid"

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DialogAddComment;->videoid:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->access$200(Lcom/tudou/ui/fragment/DialogAddComment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const-string v1, "\u8be6\u60c5\u9875\u8bc4\u8bba\u53d1\u9001\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 258
    :goto_1
    invoke-virtual {v8, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 259
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v0, v3}, Lcom/tudou/ui/fragment/DialogAddComment;->access$202(Lcom/tudou/ui/fragment/DialogAddComment;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v0, v3}, Lcom/tudou/ui/fragment/DialogAddComment;->access$302(Lcom/tudou/ui/fragment/DialogAddComment;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iput-object v3, v0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/DialogAddComment;->setImagePath(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 264
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->access$100(Lcom/tudou/ui/fragment/DialogAddComment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const-string v1, "\u8be6\u60c5\u9875\u56de\u590d\u8bc4\u8bba\u53d1\u9001\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 268
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const-string v1, "\u8be6\u60c5\u9875\u8bc4\u8bba\u53d1\u9001\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 269
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment$7;->this$0:Lcom/tudou/ui/fragment/DialogAddComment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const v1, 0x7f0d02a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
