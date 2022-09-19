.class public Lcom/alipay/android/mini/uielement/az$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/mini/uielement/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/az;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/uielement/az;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/az$a;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 271
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 272
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/az$a;->b:Z

    .line 274
    add-int/lit8 v2, v0, 0x1

    const-string v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;)Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/az;->e(Lcom/alipay/android/mini/uielement/az;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;I)V

    .line 280
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/az;->e(Lcom/alipay/android/mini/uielement/az;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/az;->f(Lcom/alipay/android/mini/uielement/az;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/az;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v2

    invoke-static {v2}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/az;->a(Ljava/lang/Object;[Lr/a;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    new-instance v1, Lr/c;

    sget-object v2, Lr/a;->t:Lr/a;

    invoke-direct {v1, v2}, Lr/c;-><init>(Lr/a;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/mini/uielement/az;->a(Ljava/lang/Object;Lr/c;)V

    .line 287
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/az$a;->b:Z

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az$a;->a:Lcom/alipay/android/mini/uielement/az;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/az;->a(Lcom/alipay/android/mini/uielement/az;)Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/az$a;->b:Z

    .line 303
    return-void
.end method
