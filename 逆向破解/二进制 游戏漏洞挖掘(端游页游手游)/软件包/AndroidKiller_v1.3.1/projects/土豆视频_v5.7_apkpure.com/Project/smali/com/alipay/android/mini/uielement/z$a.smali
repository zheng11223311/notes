.class public Lcom/alipay/android/mini/uielement/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/mini/uielement/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/z$a;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 616
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 617
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 618
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    .line 619
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/z$a;->b:Z

    .line 620
    add-int/lit8 v2, v0, 0x1

    const-string v3, "*"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    sget-object v1, Lr/a;->t:Lr/a;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/Object;Lr/a;)V

    .line 625
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->f(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->f(Lcom/alipay/android/mini/uielement/z;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->b(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 633
    :goto_1
    return-void

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;Lcom/alipay/android/mini/widget/CustomEditText;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/z$a;->b:Z

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/z$a;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getId()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V

    .line 648
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/z$a;->b:Z

    .line 650
    return-void
.end method
