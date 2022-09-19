.class public Lcom/tudou/android/chat/ChatSharedDialog;
.super Landroid/app/Dialog;
.source "ChatSharedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatSharedDialog;->dismiss()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x7f0c02bc
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f030086

    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatSharedDialog;->setContentView(I)V

    .line 27
    const v2, 0x7f0c02bb

    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatSharedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/android/chat/ChatSharedDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 28
    const v2, 0x7f0c02bc

    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatSharedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "cancelBtn":Landroid/widget/Button;
    const v2, 0x7f0c02bd

    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatSharedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 30
    .local v1, "confirmBtn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public setMessage()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/android/chat/ChatSharedDialog;->mMessageTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
