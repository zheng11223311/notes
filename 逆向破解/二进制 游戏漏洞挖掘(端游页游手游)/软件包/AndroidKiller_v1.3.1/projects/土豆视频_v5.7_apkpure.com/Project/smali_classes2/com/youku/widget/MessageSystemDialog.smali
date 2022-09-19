.class public Lcom/youku/widget/MessageSystemDialog;
.super Landroid/app/Dialog;
.source "MessageSystemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iconClose:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field message:Lcom/youku/vo/MessageSystem$Msg;

.field private sysContent:Landroid/widget/TextView;

.field private sysTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/MessageSystem$Msg;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/youku/vo/MessageSystem$Msg;

    .prologue
    .line 31
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/youku/widget/MessageSystemDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/youku/widget/MessageSystemDialog;->message:Lcom/youku/vo/MessageSystem$Msg;

    .line 34
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f0c09ea

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageSystemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->sysTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c09eb

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageSystemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->sysContent:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c09d8

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageSystemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->iconClose:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->sysContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 49
    iget-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->message:Lcom/youku/vo/MessageSystem$Msg;

    iget-object v0, v0, Lcom/youku/vo/MessageSystem$Msg;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->sysContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/MessageSystemDialog;->message:Lcom/youku/vo/MessageSystem$Msg;

    iget-object v1, v1, Lcom/youku/vo/MessageSystem$Msg;->text_body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/MessageSystemDialog;->sysContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/widget/MessageSystemDialog;->message:Lcom/youku/vo/MessageSystem$Msg;

    iget-object v2, v2, Lcom/youku/vo/MessageSystem$Msg;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/widget/MessageSystemDialog;->message:Lcom/youku/vo/MessageSystem$Msg;

    iget-object v2, v2, Lcom/youku/vo/MessageSystem$Msg;->text_body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/youku/widget/MessageSystemDialog;->dismiss()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0c09d8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03021c

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageSystemDialog;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/youku/widget/MessageSystemDialog;->initView()V

    .line 41
    return-void
.end method
