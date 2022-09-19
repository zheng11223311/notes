.class Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 312
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x1

    .line 317
    const-string v1, "bili.default.text.pos"

    invoke-static {v1, p2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;I)V

    .line 318
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheck()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x28

    .line 319
    .local v0, "max":I
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 320
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

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

    .line 321
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    const v2, -0x50707071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    :goto_1
    return-void

    .line 318
    .end local v0    # "max":I
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 324
    .restart local v0    # "max":I
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
