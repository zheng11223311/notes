.class public Lcom/youku/widget/MessageCheckDialog;
.super Landroid/app/Dialog;
.source "MessageCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/MessageCheckDialog$MyURLSpan;
    }
.end annotation


# instance fields
.field private checkContent:Landroid/widget/TextView;

.field private checkTitle:Landroid/widget/TextView;

.field private checkVideoTitle:Landroid/widget/TextView;

.field private iconClose:Landroid/widget/ImageView;

.field private mContext:Lcom/tudou/ui/activity/MessageActivity;

.field message:Lcom/youku/vo/MessageChecked;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/MessageActivity;Lcom/youku/vo/MessageChecked;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/MessageActivity;
    .param p2, "message"    # Lcom/youku/vo/MessageChecked;

    .prologue
    .line 39
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p1, p0, Lcom/youku/widget/MessageCheckDialog;->mContext:Lcom/tudou/ui/activity/MessageActivity;

    .line 41
    iput-object p2, p0, Lcom/youku/widget/MessageCheckDialog;->message:Lcom/youku/vo/MessageChecked;

    .line 42
    return-void
.end method

.method private initView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 52
    const v11, 0x7f0c09d9

    invoke-virtual {p0, v11}, Lcom/youku/widget/MessageCheckDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkTitle:Landroid/widget/TextView;

    .line 53
    const v11, 0x7f0c09da

    invoke-virtual {p0, v11}, Lcom/youku/widget/MessageCheckDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    .line 54
    const v11, 0x7f0c09de

    invoke-virtual {p0, v11}, Lcom/youku/widget/MessageCheckDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkVideoTitle:Landroid/widget/TextView;

    .line 58
    const v11, 0x7f0c09d8

    invoke-virtual {p0, v11}, Lcom/youku/widget/MessageCheckDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->iconClose:Landroid/widget/ImageView;

    .line 59
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkVideoTitle:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/youku/widget/MessageCheckDialog;->message:Lcom/youku/vo/MessageChecked;

    iget-object v12, v12, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    iget-object v12, v12, Lcom/youku/vo/MessageChecked$CheckMsg;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const-string v5, ""

    .line 64
    .local v5, "reason":Ljava/lang/String;
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->message:Lcom/youku/vo/MessageChecked;

    iget-object v11, v11, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    iget-object v11, v11, Lcom/youku/vo/MessageChecked$CheckMsg;->content:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 65
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->message:Lcom/youku/vo/MessageChecked;

    iget-object v11, v11, Lcom/youku/vo/MessageChecked;->msg:Lcom/youku/vo/MessageChecked$CheckMsg;

    iget-object v5, v11, Lcom/youku/vo/MessageChecked$CheckMsg;->content:Ljava/lang/String;

    .line 70
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 75
    .local v8, "text":Ljava/lang/CharSequence;
    instance-of v11, v8, Landroid/text/Spannable;

    if-eqz v11, :cond_0

    .line 76
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 77
    .local v1, "end":I
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 78
    .local v6, "sp":Landroid/text/Spannable;
    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v6, v13, v1, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    .line 79
    .local v10, "urls":[Landroid/text/style/URLSpan;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v7, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 81
    move-object v0, v10

    .local v0, "arr$":[Landroid/text/style/URLSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v9, v0, v2

    .line 82
    .local v9, "url":Landroid/text/style/URLSpan;
    new-instance v4, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;

    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->mContext:Lcom/tudou/ui/activity/MessageActivity;

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Lcom/youku/widget/MessageCheckDialog$MyURLSpan;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 83
    .local v4, "myURLSpan":Lcom/youku/widget/MessageCheckDialog$MyURLSpan;
    invoke-interface {v6, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v6, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v4, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v4    # "myURLSpan":Lcom/youku/widget/MessageCheckDialog$MyURLSpan;
    .end local v9    # "url":Landroid/text/style/URLSpan;
    :cond_2
    iget-object v11, p0, Lcom/youku/widget/MessageCheckDialog;->checkContent:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/youku/widget/MessageCheckDialog;->dismiss()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0c09d8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030219

    invoke-virtual {p0, v0}, Lcom/youku/widget/MessageCheckDialog;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/youku/widget/MessageCheckDialog;->initView()V

    .line 49
    return-void
.end method
