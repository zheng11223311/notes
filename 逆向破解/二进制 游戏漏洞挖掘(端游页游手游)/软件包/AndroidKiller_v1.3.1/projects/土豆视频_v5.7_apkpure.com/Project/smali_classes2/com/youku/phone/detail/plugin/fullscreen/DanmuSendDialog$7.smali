.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 277
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 301
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 295
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheck()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x28

    .line 283
    .local v0, "max":I
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    const v2, -0x50707071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    :goto_1
    return-void

    .line 282
    .end local v0    # "max":I
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 287
    .restart local v0    # "max":I
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
