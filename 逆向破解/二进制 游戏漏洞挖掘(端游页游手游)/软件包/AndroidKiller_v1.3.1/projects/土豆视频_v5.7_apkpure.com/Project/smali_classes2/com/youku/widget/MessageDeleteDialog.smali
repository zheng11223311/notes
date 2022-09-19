.class public Lcom/youku/widget/MessageDeleteDialog;
.super Landroid/app/Dialog;
.source "MessageDeleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field message:Lcom/youku/vo/MessageDetail$MessageItem;

.field private msgDelete:Landroid/widget/TextView;

.field private onFinsih:Lcom/youku/util/IMessageFinish;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/MessageDetail$MessageItem;Lcom/youku/util/IMessageFinish;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/youku/vo/MessageDetail$MessageItem;
    .param p3, "onFinsih"    # Lcom/youku/util/IMessageFinish;

    .prologue
    .line 32
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/youku/widget/MessageDeleteDialog;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/youku/widget/MessageDeleteDialog;->message:Lcom/youku/vo/MessageDetail$MessageItem;

    .line 35
    iput-object p3, p0, Lcom/youku/widget/MessageDeleteDialog;->onFinsih:Lcom/youku/util/IMessageFinish;

    .line 36
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0c09df

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageDeleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/MessageDeleteDialog;->msgDelete:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/youku/widget/MessageDeleteDialog;->msgDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/MessageDeleteDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/MessageDeleteDialog;->message:Lcom/youku/vo/MessageDetail$MessageItem;

    iget-object v1, v1, Lcom/youku/vo/MessageDetail$MessageItem;->privatemsgid:Ljava/lang/String;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/widget/MessageDeleteDialog;->onFinsih:Lcom/youku/util/IMessageFinish;

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/util/MessageManager;->deleteMessage(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 57
    invoke-virtual {p0}, Lcom/youku/widget/MessageDeleteDialog;->dismiss()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x7f0c09df
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03021a

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageDeleteDialog;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/youku/widget/MessageDeleteDialog;->initView()V

    .line 43
    return-void
.end method
